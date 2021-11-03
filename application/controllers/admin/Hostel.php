<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostel extends Admin_Controller {

    function __construct() {
        parent::__construct();

        $this->load->library('Customlib');
		$this->load->model('students_leaved_model');
        $this->load->model('Hostelroom_model');
        $this->sch_setting_detail = $this->setting_model->getSetting();
        $this->role;
    }

    public function index() {

        if (!$this->rbac->hasPrivilege('hostel', 'can_view')) {
            access_denied();
        }
        $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'hostel/index');
        $listhostel = $this->hostel_model->listhostel();
        $data['listhostel'] = $listhostel;
        $ght = $this->customlib->getHostaltype();
        $data['ght'] = $ght;
        $this->load->view('layout/header');
        $this->load->view('admin/hostel/createhostel', $data);
        $this->load->view('layout/footer');
    }

    function create() {
        if (!$this->rbac->hasPrivilege('hostel', 'can_add')) {
            access_denied();
        }
        $data['title'] = 'Add Library';
        $this->form_validation->set_rules('hostel_name', $this->lang->line('hostel_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('type', $this->lang->line('type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $listhostel = $this->hostel_model->listhostel();
            $data['listhostel'] = $listhostel;
            $ght = $this->customlib->getHostaltype();
            $data['ght'] = $ght;
            $this->load->view('layout/header');
            $this->load->view('admin/hostel/createhostel', $data);
            $this->load->view('layout/footer');
        } else {
            $data = array(
                'hostel_name' => $this->input->post('hostel_name'),
                'type' => $this->input->post('type'),
                'address' => $this->input->post('address'),
                'intake' => $this->input->post('intake'),
                'description' => $this->input->post('description')
            );
            $this->hostel_model->addhostel($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">'.$this->lang->line('success_message').'</div>');
            redirect('admin/hostel/index');
        }
    }

    function edit($id) {
        if (!$this->rbac->hasPrivilege('hostel', 'can_edit')) {
            access_denied();
        }
        $data['title'] = 'Add Hostel';
        $data['id'] = $id;
        $edithostel = $this->hostel_model->get($id);
        $data['edithostel'] = $edithostel;
        $ght = $this->customlib->getHostaltype();
        $data['ght'] = $ght;
        $this->form_validation->set_rules('hostel_name', $this->lang->line('hostel_name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('type', $this->lang->line('type'), 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $listhostel = $this->hostel_model->listhostel();
            $data['listhostel'] = $listhostel;
            $this->load->view('layout/header');
            $this->load->view('admin/hostel/edithostel', $data);
            $this->load->view('layout/footer');
        } else {
            $data = array(
                'id' => $this->input->post('id'),
                'hostel_name' => $this->input->post('hostel_name'),
                'type' => $this->input->post('type'),
                'address' => $this->input->post('address'),
                'intake' => $this->input->post('intake'),
                'description' => $this->input->post('description')
            );
            $this->hostel_model->addhostel($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">'.$this->lang->line('update_message').'</div>');
            redirect('admin/hostel/index');
        }
    }

    function delete($id) {
        if (!$this->rbac->hasPrivilege('hostel', 'can_delete')) {
            access_denied();
        }
        $data['title'] = 'Fees Master List';
        $this->hostel_model->remove($id);
        redirect('admin/hostel/index');
    }
	 function hostels_assigned(){
        $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'hostel/hostels_assigned');
        $students=$this->hostel_model->studentslist();
        $student['students']=$students;
        // die(json_encode($students));
        $this->load->view('layout/header',$student);
        $this->load->view('admin/hostel/hostels_assigned',$student);
        $this->load->view('layout/footer',$student);
    }
    function student_hostel(){
        if (!$this->rbac->hasPrivilege('student', 'can_view')) {
            access_denied();
        }
            
        $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'hostel/student_hostel');
        $data['title']           = 'Student Search';
        $data['adm_auto_insert'] = $this->sch_setting_detail->adm_auto_insert;
        $data['sch_setting']     = $this->sch_setting_detail;
        $data['fields']          = $this->customfield_model->get_custom_fields('students', 1);
        $class                   = $this->class_model->get();
        $data['classlist']       = $class;
        $resultlist          = $this->student_model->getStudents();
        $data['resultlist']  = $resultlist;
        $userdata = $this->customlib->getUserData();
        $carray   = array();
        if (!empty($data["classlist"])) {
            foreach ($data["classlist"] as $ckey => $cvalue) {
                $carray[] = $cvalue["id"];
            }
        }
        //echo "<pre>";  print_r($carray); echo "<pre>";die;
        $button = $this->input->post('search');
        if ($this->input->server('REQUEST_METHOD') == "GET") {
            $this->load->view('layout/header', $data);
            $this->load->view('admin/hostel/student_hostel', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $class       = $this->input->post('class_id');
            $section     = $this->input->post('section_id');
            $search      = $this->input->post('search');
            $search_text = $this->input->post('search_text');
            if (isset($search)) {
                if ($search == 'search_filter') {
                    $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required|xss_clean');
                    if ($this->form_validation->run() == false) {
                    } else {
                        $data['searchby']    = "filter";
                        $data['class_id']    = $this->input->post('class_id');
                        $data['section_id']  = $this->input->post('section_id');
                        $data['search_text'] = $this->input->post('search_text');
                        $resultlist          = $this->student_model->searchByClassSection($class, $section);
                        $data['resultlist']  = $resultlist;
                        $title               = $this->classsection_model->getDetailbyClassSection($data['class_id'], $data['section_id']);
                        $data['title']       = 'Student Details for ' . $title['class'] . "(" . $title['section'] . ")";
                    }
                } else if ($search == 'search_full') {
                    $data['searchby'] = "text";
                    $data['search_text'] = trim($this->input->post('search_text'));
                    $resultlist          = $this->student_model->searchFullText($search_text, $carray);
                    $data['resultlist']  = $resultlist;
                    $data['title']       = 'Search Details: ' . $data['search_text'];
                }
            }
           
            $this->load->view('layout/header', $data);
            $this->load->view('admin/hostel/student_hostel', $data);
            $this->load->view('layout/footer', $data);
        }
    }
    function student_hostel_save($id){
        if (!$this->rbac->hasPrivilege('student', 'can_edit')) {
            access_denied();
        }
        $student=$this->students_leaved_model->getdata($id);
        $students['student']=$student;
        $hostelList                 = $this->hostel_model->get();
        $data['hostelList']         = $hostelList;
        $data['id']      = $id;
        
        if($this->input->post('submit')){
            $data = array(
                'table_name'=>'students',
                'id' => $id,
                'hostel_room_id' => $this->input->post('hostel_room_id') );
            $student=$this->hostel_model->count();
            $hosel_id = $this->input->post('hostel_id');
            $hostel=$this->hostelroom_model->getRoomByHoselID($hosel_id);
            foreach($hostel as $ht){
                
             
            if(count($student)<=$ht->room_no)   
            {
                $data1['data']=$this->hostel_model->student_hostel($data);
                $this->session->set_flashdata('flsh_msg', 'Hostel Assigned Successfully.');
                redirect('admin/hostel/hostels_assigned');
            }   
            else{
                $this->session->set_flashdata('flsh_msg', 'All Beds Are Filled. Please Select Another Room');
                // redirect('admin/hostel/student_hostel_save');
                redirect($this->uri->uri_string());
            } 
                
            }
            
        }
        $sum=$students+$data;
        $this->load->view('layout/header',$sum);
        $this->load->view('admin/hostel/student_hostel_save',$sum);
        $this->load->view('layout/footer',$sum);
    }
    /*function hostel_save($id){
        if($this->input->post('submit')){
            $data = array(
                'table_name'=>'students',
                'id' => $id,
                'hostel_room_id' => $this->input->post('hostel_room_id') );
                $student=$this->hostel_model->count();
                die($student);
            $data1['data']=$this->hostel_model->student_hostel($data);
            redirect('admin/hostel/hostels_assigned');
        }
    }*/
    function hostelleave($id){
        if($this->input->post('submit')){
            $data = array(
                'table_name'=>'students',
                'id' => $id,
                'add_info' => $this->input->post('add_info'),
                'leave_date' => date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('leave_date'))));
            $data1['data']=$this->hostel_model->hostelleave($data);
            redirect('admin/hostel/hostels_assigned');
        
        }
        $this->load->view('layout/header');
        $this->load->view('admin/hostel/hostelleaved');
        $this->load->view('layout/footer');
    }
    function studenthostelleaved(){
        $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'hostel/studenthostelleaved');
        $students=$this->hostel_model->studenthostelleaved();
        $student['students']=$students;
        // die(json_encode($students));
        $this->load->view('layout/header',$student);
        $this->load->view('admin/hostel/studenthostelleaved',$student);
        $this->load->view('layout/footer',$student);
    }

}

?>