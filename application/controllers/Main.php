<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('web');
		$this->language = $this->web->lang('th');
		$this->lang->load('web', $this->language);

		$this->title = $this->baseModel->getWhere('tb_setting', [ 'slug' => 'title_th' ], 'setting_id asc')->row()->value;
		$this->des   = $this->baseModel->getWhere('tb_setting', [ 'slug' => 'des_th' ], 'setting_id asc')->row()->value;
		$this->kw    = $this->baseModel->getWhere('tb_setting', [ 'slug' => 'kw_th' ], 'setting_id asc')->row()->value;

	}

	public function index() // index page
	{
		$data               = (object) [];
		$data->view         = 'frontend/pages/home'; // set view file
		$data->example_data = 'This is data';

		$this->load->view('frontend/index', $data); // load template with data
	}

	public function sample_page()
	{
		$this->title = lang('menu_aboutus');
		
		$data              = (object) [];
		$data->view        = 'frontend/pages/file_name';
		$data->query_all   = $this->baseModel->get('tb_product', 'priority asc')->result_array();
		$data->query_where = $this->baseModel->getWhere('tb_product', [ 'status' => 'use' ], 'priority asc')->result_array();

		/*  See more functions in models/Basemodel.php */

		$this->load->view('frontend/index', $data);
	}


	function send_contact_msg()
	{
		
		$data = [
			'fname'   => $this->security->xss_clean($this->input->post('fname')),
			'lname'   => $this->security->xss_clean($this->input->post('lname')),
			'subject' => $this->security->xss_clean($this->input->post('subject')),
			'email'   => $this->security->xss_clean($this->input->post('email')),
			'phone'   => $this->security->xss_clean($this->input->post('phone')),
			'message' => $this->security->xss_clean($this->input->post('message')),
			'date'    => date('Y-m-d H:i:s'),
			'status'  => 'unread'
		];

		$this->baseModel->insert('tb_contact_message',$data);

		/* Ajax send */
		// echo json_encode([ 'result' => 'true' ]); 
		
		/* Normal send */
		$this->session->set_flashdata('send_res', 'ส่งข้อความเรียบร้อยแล้ว');
		redirect($this->language.'/contact-us.html','refresh');
	}




}