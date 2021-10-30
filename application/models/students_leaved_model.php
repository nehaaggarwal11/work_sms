<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class students_leaved_model extends MY_Model
{ 

	function get_alumnidetail($student_id){

		return $this->db->select('*')->from('alumni_students')->where('student_id',$student_id)->get()->row_array();

	}

	function get(){
		return $this->db->select('*')->from('students_leaved')->get()->result_array();
	}
	function getdata($id){
		return $this->db->select('*')->from('students')->where('id',$id)->get()->result_array();
	}

	function add($data){	
		// die(json_encode($data));	 
		$this->db->insert('students_leaved',$data);
		extract($data);
		
        $this->db->where('id', $id)->update('students', array('leave_date'=>$created_at,'add_info' => $reason));
        return true;
	}
 	function add_event($data){
		$this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        if (isset($data['id']) && $data['id']!='') {
            $this->db->where('id', $data['id']);
            $this->db->update('alumni_events', $data);
			$message      = UPDATE_RECORD_CONSTANT." On Alumni Event id ".$data['id'];
			$action       = "Update";
			$record_id    = $data['id'];
			$this->log($message, $record_id, $action);
			//======================Code End==============================

			$this->db->trans_complete(); # Completing transaction
			/*Optional*/

			if ($this->db->trans_status() === false) {
				# Something went wrong.
				$this->db->trans_rollback();
				return false;

			} else {
				return $record_id;
			}
        } else {
            $this->db->insert('alumni_events', $data);         

			$insert_id =  $this->db->insert_id();
            $message      = INSERT_RECORD_CONSTANT." On Alumni Event id ".$insert_id;
			$action       = "Insert";
			$record_id    = $insert_id;
			$this->log($message, $record_id, $action);
			//echo $this->db->last_query();die;
			//======================Code End==============================

			$this->db->trans_complete(); # Completing transaction
			/*Optional*/

			if ($this->db->trans_status() === false) {
				# Something went wrong.
				$this->db->trans_rollback();
				return false;

			} else {
				//return $return_value;
			}
			 return $insert_id ;
        }
 
	}



	function delete_event($id){
		$this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->delete('alumni_events');
      
        //$return_value = $this->db->insert_id();
        $message      = DELETE_RECORD_CONSTANT." On  Alumni Event   id ".$id;
        $action       = "Delete";
        $record_id    = $id;
        $this->log($message, $record_id, $action);
		//echo $this->db->last_query();die;
        //======================Code End==============================

        $this->db->trans_complete(); # Completing transaction
        /*Optional*/

        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;

        } else {


        return $return_value;
        }
	}
	function deletestudent($id){
		$this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('student_id', $id);
        $this->db->delete('alumni_students');
      
        //$return_value = $this->db->insert_id();
        $message      = DELETE_RECORD_CONSTANT." On  alumni students  id ".$id;
        $action       = "Delete";
        $record_id    = $id;
        $this->log($message, $record_id, $action);
		//echo $this->db->last_query();die;
        //======================Code End==============================

        $this->db->trans_complete(); # Completing transaction
        /*Optional*/

        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;

        } else {


        return $return_value;
        }
	}

	function alumniMail($class_id = null,$session = null,$section = null){
		$this->db->select('alumni_students.*');
			$this->db->join('student_session', 'student_session.student_id = alumni_students.student_id');
			if ($class_id != null) {
				$this->db->where('student_session.class_id', $class_id);
				$this->db->where('student_session.session_id', $session);
				$this->db->where('student_session.section_id', $section);
				$this->db->where('student_session.is_alumni', 1);				
			}
			$this->db->from('alumni_students');
			$query = $this->db->get();
		return	$query->result_array();
	}
} 
?>