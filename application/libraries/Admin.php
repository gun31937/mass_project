<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Admin {

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
	}

	function auth()
	{
		$session = $this->ci->session->admin;
		return (isset($session))? true : $this->ci->load->view('backend/pages/login');
	}

	function login($post)
	{
		$this->ci->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->ci->form_validation->set_rules('password', 'Password', 'required|trim');
		$error = 'Invalid email or password!';

		if ($this->ci->form_validation->run() == FALSE)
        {
        	$error = validation_errors();
        	$this->ci->session->set_flashdata('error',$error);
            redirect(base_url('_admin'),"refresh");
        }
        else
        {	
			$username      = $this->ci->security->xss_clean($post['username']);
			$password      = $this->ci->security->xss_clean($post['password']);
			$admin         = $this->ci->baseModel->getWhere('tb_admin',array('username' => $username),'admin_id asc');
			$data['error'] = 'Invalid email or password!';

			if ($admin->num_rows() == 0)
			{
				$this->ci->session->set_flashdata('error',$error);
				redirect(base_url('_admin'),"refresh");
			}
			else
			{
				$admin = $admin->row();

				if (password_verify($password, $admin->password))
				{
		    		$this->ci->session->set_userdata(array('admin' => $admin->admin_id));
		    		$this->ci->baseModel->update('tb_admin',array('admin_id' => $admin->admin_id),array('last_login' => date('Y-m-d H:i:s')));
					redirect(base_url('_admin/dashboard'),"refresh");
				}
				else
				{
					$this->ci->session->set_flashdata('error',$error);
				    redirect(base_url('_admin'),"refresh");
				}
			}
		
		 }
	}

	function logout()
	{
		$this->ci->session->sess_destroy();
		redirect(base_url('_admin'),"refresh");
		exit();
	}

	function detail()
	{
		return ($this->ci->session->admin)? $this->ci->baseModel->getWhere('tb_admin',array('admin_id' => $this->ci->session->admin),'admin_id asc')->row() : null ; 
	}

	function resetPass($email)
	{

	}

	function sendEmail($options)
	{

	}


}