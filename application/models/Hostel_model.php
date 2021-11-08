<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostel_model extends MY_Model {

    public function __construct() {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }

    /**
     * This funtion takes id as a parameter and will fetch the record.
     * If id is not provided, then it will fetch all the records form the table.
     * @param int $id
     * @return mixed
     */
    public function get($id = null) {
        $this->db->select()->from('hostel');
        if ($id != null) {
            $this->db->where('hostel.id', $id);
        } else {
            $this->db->order_by('hostel.id');
        }
        $query = $this->db->get();
        if ($id != null) {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    /**
     * This function will delete the record based on the id
     * @param $id
     */
    public function remove($id) {
		$this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->delete('hostel');
		$message      = DELETE_RECORD_CONSTANT." On hostel id ".$id;
        $action       = "Delete";
        $record_id    = $id;
        $this->log($message, $record_id, $action);
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
    }

    /**
     * This function will take the post data passed from the controller
     * If id is present, then it will do an update
     * else an insert. One function doing both add and edit.
     * @param $data
     */
    public function addhostel($data) {
		$this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('hostel', $data);
			$message      = UPDATE_RECORD_CONSTANT." On  hostel id ".$data['id'];
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
				//return $return_value;
			}
        } else {
            $this->db->insert('hostel', $data);
			$insert_id = $this->db->insert_id();
            $message      = INSERT_RECORD_CONSTANT." On hostel id ".$insert_id;
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
			return $insert_id;
        }
    }

    public function listhostel() {

        $this->db->select()->from('hostel');
        $listhostel = $this->db->get();
        return $listhostel->result_array();
    }

    public function get_hostel($id){

     $query = $this->db->where("id",$id)->get("hostel_rooms");

     return $query->row_array();

    }
	public function studentslist(){
        $que=$this->db->from('students_leaved')->get();
        $res=$que->result_array();
        $result=array('0');
        foreach($res as $re=>$val){
            $result[]=$val['id'];
        }
        // die(json_encode($result));
         $this->db->select("students.id as sid,students.*,hostel_name,type")->from('students')->join('hostel_rooms', ' hostel_rooms.id=students.hostel_room_id')->join('hostel', ' hostel.id=hostel_rooms.id')->where('hostel_room_id>','0')->where('leave_date=',NULL)->where_not_in('students.id',$result);
        // die(json_encode($query));
        // $query=$this->db->select() ->from('hostel')->where('hostel_room_id',true);
        $query=$this->db->get();
        return $query->result_array();
    }
    public function student_hostel($data){
            // die(json_encode($data));	 
            extract($data);
            $this->db->where('id', $id)->update($table_name, array('hostel_room_id' => $hostel_room_id));
            // $this->db->set('hostel_room_id',$this->input->post('hostel_room_id'))->where('id',$id)->update('students');
            return true;   
    }
    public function count(){
        $query=$this->db->select('hostel_room_id')->where('hostel_room_id',$this->input->post('hostel_room_id'))->get('students');
        // die(json_encode($query->result_array()));
        return $query->result_array();
    }
    public function hostelleave($data){
        // die(json_encode($data));	 
        extract($data);
        $this->db->where('id', $id)->update($table_name, array('add_info' => $add_info,'leave_date' => $leave_date));
        return true;   
    } 
    public function studenthostelleaved(){
    
    $this->db->select("students.id as sid,students.*,hostel_name,type");
    $this->db->from('students');
    $this->db->join('hostel_rooms', ' hostel_rooms.id=students.hostel_room_id');
    $this->db->join('hostel', ' hostel.id=hostel_rooms.id');
    $this->db->join('students_leaved','students_leaved.studentid=students.id','left');
    $this->db->where('hostel_room_id>','0');
    $this->db->where('leave_date<>',NULL);
    $this->db->or_where('students_leaved.studentid=','students.id');
    $query=$this->db->get();
    return $query->result_array();
    }
    

}
