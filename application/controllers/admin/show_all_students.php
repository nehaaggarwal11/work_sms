<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
} 

class show_all_students extends Admin_Controller
{

    public $sch_setting_detail = array();

    public function __construct()
    {
        parent::__construct();
        $this->config->load('app-config');
        $this->load->library('smsgateway');
        $this->load->library('mailsmsconf');
        $this->load->library('encoding_lib');
        $this->load->model("classteacher_model");
        $this->load->model("timeline_model");
        $this->load->model('students_leaved_model');
        $this->blood_group        = $this->config->item('bloodgroup');
        $this->sch_setting_detail = $this->setting_model->getSetting();
        $this->role;
    }
    public function showlist(){
        if (!$this->rbac->hasPrivilege('student', 'can_view')) {
            access_denied();
        }
        $student = $this->students_leaved_model->get();
        // print_r($student);
        $students['student']=$student;
        // die(json_encode($student));
        $this->load->view('layout/header');
        $this->load->view('student/studentsLeavedList', $students);
        $this->load->view('layout/footer');
    }
    public function show()
    {
        if (!$this->rbac->hasPrivilege('student', 'can_view')) {
            access_denied();
        }
        $drop=array();
        $this->session->set_userdata('top_menu', 'Student Information');
        $this->session->set_userdata('sub_menu', 'admin/show_all_students/show');
        $data['title']           = 'All Student Information';
        $data['adm_auto_insert'] = $this->sch_setting_detail->adm_auto_insert;
        $data['sch_setting']     = $this->sch_setting_detail;
        $data['fields']          = $this->customfield_model->get_custom_fields('students', 1);
        $class                   = $this->class_model->get();
        $data['classlist']       = $class;
        $dropout=$this->students_leaved_model->get();
        foreach($dropout as $do){
            $drop[]=$do['id'];
        }
        // die($drop);
        $data['dropout']=$drop;
        $resultlist          = $this->student_model->getStudents();
        $data['resultlist']  = $resultlist;

        $userdata = $this->customlib->getUserData();
        $carray   = array();

        if (!empty($data["classlist"])) {
            foreach ($data["classlist"] as $ckey => $cvalue) {

                $carray[] = $cvalue["id"];
            }
        }
        $this->load->view('layout/header', $data);
        $this->load->view('student/studentsLeaved', $data);
        $this->load->view('layout/footer', $data);
        
    }
    public function leavedstudent($id){
        if (!$this->rbac->hasPrivilege('student', 'can_edit')) {
            access_denied();
        }
        $student=$this->students_leaved_model->getdata($id);
        $students['student']=$student;

        $data['id']      = $id;
        if($this->input->post("submit")){
            // $data=array('current_email','created_at','current_phone', 'occupation','address','sudent_id');
            $data['current_email']=$this->input->post('current_email');
            $data['created_at']=date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('created_at')));
            $data['current_phone']=$this->input->post('current_phone');
            $data['occupation']=$this->input->post('occupation');
            $data['address']=$this->input->post('address');
            $data['reason']=$this->input->post('reason');
            $data['name']=$this->input->post('name');
            $data['studentid']=$id;
            // die(json_encode($data));
            $save=$this->students_leaved_model->add($data);
            $this->session->set_flashdata('flsh_msg', 'Student Successfully Leaved');
            redirect('admin/show_all_students/showlist');
        }
        $sum=$students+$data;
        // die("Hii");
        $this->load->view('layout/header',$sum);
        $this->load->view('student/studentsLeavededit',$sum);
        $this->load->view('layout/footer',$sum);
    }
    public function leavedstudentsave($id){
        die("Hello");
            $data['current_email']=$this->input->post('current_email');
            $data['created_at']=$this->input->post('created_at');
            $data['current_phone']=$this->input->post('current_phone');
            $data['occupation']=$this->input->post('occupation');
            $data['address']=$this->input->post('address');
            // $data['student_id']=$id;
            die(json_encode($data));
            $save=$this->students_leaved_model->add($data);
            if($save==true){
                die("record saved");
            }
        
    }
    
}
    ?>