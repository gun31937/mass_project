<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BaseModel extends CI_Model {

	public function __construct()
    {
        parent::__construct();
    }

	/**
	 * Function get [get all form table]
		* @param  string $table    [table name {ex. 'tb_data'}]
		* @param  string $order    [order by {ex. 'id asc'}]
		* @param  string $distinct [select distinct ? if yes : type 'distinct' {ex. get('tb_data','id asc','distinct')} , if no : not type {ex. get('tb_data','id asc')}]
		* @return query  $query    [and fetch in controller {ex. $data['query'] = $this->baseModel->get('tb_data','id asc','distinct')->result_array();}]
	 */
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

    /**
	 * Function getLimit [get form table with limit]
		* @param  int    $limit    [limit {ex. '20,50,100'}]
		* @param  int    $offset   [offset {ex. '0,5,10'}]
	 */
    function getLimit($table,$limit,$offset,$order,$distinct = NULL,$distinct_field = NULL)
    {

    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	$this->db->limit($limit,$offset);
    	$this->db->order_by($order);
    	$query = $this->db->get($table);
    	return $query;
    }

    /**
	 * Function getMax [get max value form select field]
	 * @return number $row->$field {ex. 20, 37.5}
	 */
    function getMax($table,$field)
	{
		$this->db->select_max($field);
		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
	}
	
	 /**
	 * Function getMin [get min value form select field]
	 */
	function getMin($table,$field)
	{
		$this->db->select_min($field);
		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
	}

	 /**
	 * Function getAvg [get average value form select field]
	 */
	function getAvg($table,$field)
    {
    	$this->db->select_avg($field);
		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
    }

     /**
	 * Function getAvgWhere [get average value form select field with condition]
	 * ex. getAvgWhere('tb_data','size',array('status' => 'active', 'sender' => 'gun')) =  Select ...... Where status = 'active' and sender = 'gun'
	 * and can add other condition 
	 * ex. getAvgWhere('tb_data','size',array('status !=' => 'active', 'size >' => '123456')) = Select ...... Where status != 'active' and size > '123456'
	 */
    function getAvgWhere($table,$field,$array)
    {
    	$this->db->select_avg($field);

    	foreach ($array as $fields => $value)
		{
			$this->db->where($fields,$value);
		}

		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
    }

 	/**
	 * Function getSum [get sum value form select field]
	 */
    function getSum($table,$field)
    {
    	$this->db->select_sum($field);
		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
    }

     /**
	 * Function getSumWhere [get sum value form select field with condition]
	 */
    function getSumWhere($table,$field,$array)
    {
    	$this->db->select_sum($field);

    	foreach ($array as $fields => $value)
		{
			$this->db->where($fields,$value);
		}

		$query = $this->db->get($table);
		$row   = $query->row();
		return $row->$field;
    }

     /**
	 * Function getWhere [get all form table with condition]
	 */
    function getWhere($table,$array,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	foreach ($array as $field => $value)
		{
			$this->db->where($field,$value);
		}

		$this->db->order_by($order);
    	$query = $this->db->get($table);
    	return $query;
    }

    /**
	 * Function getWhereLimit [get form table with condition and limit]
	 */
    function getWhereLimit($table,$array,$limit,$offset,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	foreach ($array as $field => $value)
		{
			$this->db->where($field,$value);
		}

		$this->db->limit($limit,$offset);
		$this->db->order_by($order);
		$query = $this->db->get($table);
		return $query;
    }

	/**
	 * Function getWhereIn [get form table and value in array]
	 * ex. getWhereIn('tb_data','id',array('24','2','36','0001'),'id asc')
	 */
    function getWhereIn($table,$field,$value,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	$this->db->where_in($field,$value);
    	$this->db->order_by($order);
		$query = $this->db->get($table);
		return $query;
    }

    /**
	 * Function getOrWhere [get form table with 'or' condition]
	 * ex. getOrWhere('tb_data',array('status' => 'active', 'status' => 'delete'),'id asc') = Select ..... Where status = 'active' or status = 'delete'
	 */
    function getOrWhere($table,$array,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	foreach ($array as $field => $value)
		{
			$this->db->or_where($field,$value);
		}

		$this->db->order_by($order);
    	$query = $this->db->get($table);
    	return $query;
    }

 	/**
	 * Function getOrWhereLimit [get form table with 'or' condition and limit]
	 */
    function getOrWhereLimit($table,$array,$limit,$offset,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	foreach ($array as $field => $value)
		{
			$this->db->or_where($field,$value);
		}

		$this->db->limit($limit,$offset);
		$this->db->order_by($order);
		$query = $this->db->get($table);
		return $query;
    }

	/**
	 * Function getJoin [get form table and left join to other table]
	 * ex. getJoin('tb_data','data_name','tb_user','user_name','id asc') = SELECT * FROM tb_data LEFT JOIN tb_user ON tb_user.user_name = tb_data.data_name ORDER BY id asc
	 */
    function getJoin($mainTable,$mainTableField,$joinTable,$joinTableField,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	$mainField = $mainTable.'.'.$mainTableField;
    	$joinField = $joinTable.'.'.$joinTableField;

		$this->db->join($joinTable, $joinField.' = '.$mainField,'left');
		$this->db->order_by($order);
		$query = $this->db->get($mainTable);
		return $query;
    }

    /**
	 * Function getJoin [get form table and left join to other table with limit]
	 */
    function getJoinLimit($mainTable,$mainTableField,$joinTable,$joinTableField,$limit,$offset,$order,$distinct = NULL,$distinct_field = NULL)
    {
    	if ($distinct == 'distinct')
    	{
    		$this->db->distinct();
    		$this->db->select($distinct_field);
    	}

    	$mainField = $mainTable.'.'.$mainTableField;
    	$joinField = $joinTable.'.'.$joinTableField;

		$this->db->join($joinTable, $joinField.' = '.$mainField,'left');
		$this->db->limit($limit,$offset);
		$this->db->order_by($order);
		$query = $this->db->get($mainTable);
		return $query;
    }

     /**
	 * Function count [count all form table]
	 * @return  int $query->num_rows(); 
	 */
    function count($table)
    {
		$query = $this->db->get($table);
		return $query->num_rows();
	}

	/**
	 * Function count [count form table with condition]
	 */
    function countWhere($table,$array)
    {
    	foreach ($array as $field => $value)
		{
			$this->db->where($field,$value);
		}

		$query = $this->db->get($table);
		return $query->num_rows();
	}

	/**
	 * Function customQuery [custom your query]
	 * ex. customQuery("Select * Form tb_data Where status = 'active' and name = 'gun' Order By id asc Limit 20,2")
	 */
	function customQuery($mysql_query)
	{
		$query = $this->db->query($mysql_query);
		return $query;
	}

	/**
	 * Function insert [insert data]
	 * ex. $data = array('name' => 'gun', 'status' => 'active', 'expire' => '14255002652')
	 * 	   insert('tb_user',$data)
	 */
    function insert($table,$data)
    {
		$this->db->insert($table,$data);
	}

	/**
	 * Function update [update data]
	 * ex. $data = array('name' => 'gun', 'status' => 'canceled')
	 * 	   update('tb_user','id','0025',$data)
	 */
	function update($table,$array,$data)
	{	
		foreach ($array as $field => $value)
		{
			$this->db->where($field,$value);	
		}
		$this->db->update($table,$data);
	}

	/**
	 * Function delete [delete data]
	 * ex. delete('tb_user','id','0025')	   
	 */
	function delete($table,$field,$value)
	{
		$this->db->where($field,$value);
		$this->db->delete($table);
	}

	function convert_timestamp($timestamp,$type)
	{
		$date = date('d/m/Y', $timestamp);

	    if($date == date('d/m/Y'))
	    {
	      $date = 'Today';
	    } 
	    else if($date == date('d/m/Y',now() - (24 * 60 * 60)))
	    {
	      $date = 'Yesterday';
	    }
	    else if($date == date('d/m/Y',now() + (24 * 60 * 60)))
	    {
	      $date = 'Tomorrow';
	    }

	    if ($type == 'word')
	    {
	    	return $date.' - '.date('H:i:s', $timestamp);
	    }
	    else if ($type == 'normal')
	    {
	    	return date('d/m/Y - H:i:s', $timestamp);
	    }
		
	}

   

     function send_chotmai_email($type,$email_data,$language)
    {
		$content = $this->baseModel->getWhere('tb_email_content',array('type' => $type),'email_content_id asc')->row();
		$subject = 'subject_'.$language;
		$detail = 'detail_'.$language;

		foreach ($email_data as $key => $value)
		{
			$content->$detail = str_replace($key,$value,$content->$detail);
		}
		
		$message = $content->$detail;

        $config['mailtype'] = 'html';
        $this->email->initialize($config);
        
		$this->email->to($email_data['{email_to}']); 
		$this->email->from($email_data['{email_from}']);
		$this->email->subject($content->$subject);
		$this->email->message($message);	
		$this->email->send();

		return $message;

	}

	function web($slug)
	{
		$this->db->where('slug',$slug);
		$query = $this->db->get('tb_setting');
		return $query->row()->value;
	}

}

/* End of file baseModel.php */
/* Location: ./application/models/baseModel.php */