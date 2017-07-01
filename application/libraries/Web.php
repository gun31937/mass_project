<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Web {

	// password_hash('admin',PASSWORD_BCRYPT);
	function __construct()
	{
		$this->ci = &get_instance();
		$this->ci->load->database();

		// Model
		$this->ci->load->model('baseModel');

		// library
		$this->ci->load->library('email');
		$this->ci->load->library('encrypt');
		$this->ci->load->library('session');
		$this->ci->load->library('form_validation');

		// helper
		$this->ci->load->helper('cookie');
		$this->ci->load->helper('url');
		$this->ci->load->helper('email');
		$this->ci->load->helper('string');
		$this->ci->load->helper('number');
		$this->ci->load->helper('html');
		$this->ci->load->helper('language');
	}

	function lang($default)
	{
		$uri  = $this->ci->uri->segment(1);
		$lang = ($uri == '')? $default : $uri;

		return $lang;
		
	}

	function change_lang($default,$change_to)
	{
		$current_lang = $this->lang($default);
		$current_url  = uri_string();
		$ex           = explode('/',$current_url);
		$ex[0]        = $change_to;
		$path         = implode('/',$ex);

		return base_url($path);
	}

	function get_tools($position)
	{
		$tools = $this->ci->baseModel->getWhere('tb_tools', array('status' => 'use'), 'priority asc');

		if ($tools->num_rows() > 0)
		{
			foreach ($tools->result_array() as $tool)
			{
				$tool = (object) $tool;
				$count_files = $this->ci->baseModel->countWhere('tb_tools_detail', array('tools_id' => $tool->tools_id, 'status' => 'use'));

				if ($count_files > 0)
				{
					$files = $this->ci->baseModel->getWhere('tb_tools_detail', array('tools_id' => $tool->tools_id, 'status' => 'use', 'position' => $position), 'priority asc');
					foreach ($files->result_array() as $file)
					{
						$file = (object) $file;
						$file_name = $file->path.'/'.$file->file_name;

						if (file_exists($file_name))
						{
							if ($file->type == 'js')
							{
								echo '<script src="'.$file_name.'"></script>';
							}

							elseif ($file->type == 'css')
							{
								echo '<link type="text/css" rel="stylesheet" href="'.$file_name.'" />';
							}
						}
						else
						{
							echo $tool->name.' : Not found file in '.$file_name.br();
						}
					}
				}
				else
				{
					echo 'Not found tool detail in '.$tool->name.br();
				}
			}
		}

	}

	// echo $this->web->getSlider($query, [ 'class' => 'slideshow' , 'path' => 'assets/uploads/banner', 'link' => true ]);
	
	function getSlider($query,$options = null)
	{
		$img_path = $options['path'];
		$class    = $options['class'];

		$template = '<ul class="'.$class.'">';

		foreach ($query as $value)
		{
			$link     = ($options['link'] == true)? 'data-href="'.$value['link_href'].'"' : '';
			$template .= '<li class="slide-item" '.$link.'>'.img($img_path.'/'.$value['img']).'</li>';
		}

		$template .= '</ul>';

		return $template;

	}

}

