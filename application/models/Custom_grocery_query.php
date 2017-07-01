<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Custom_grocery_query extends grocery_CRUD_model {
 
	private  $query_str = ''; 
	function __construct() {
		parent::__construct();
	}
 
	function get_list() {
		$query=$this->db->query($this->query_str);
 
		$results_array=$query->result();
		return $results_array;		
	}
 
	public function set_query_str($query_str) {
		$this->query_str = $query_str;
	}

	function get($table,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	$this->db->order_by($order);
    	$query = $this->db->get($table);
    	return $query;
    }

}