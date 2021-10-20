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
        $this->blood_group        = $this->config->item('bloodgroup');
        $this->sch_setting_detail = $this->setting_model->getSetting();
        $this->role;
    }

    public function show()
    {
        if (!$this->rbac->hasPrivilege('student', 'can_view')) {
            access_denied();
        }
        $this->session->set_userdata('top_menu', 'Student Information');
        $this->session->set_userdata('sub_menu', 'student/search');
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
        $this->load->view('layout/header', $data);
        $this->load->view('student/studentsLeaved', $data);
        $this->load->view('layout/footer', $data);
        
    }
    public function leavedstudent($id){
        if (!$this->rbac->hasPrivilege('student', 'can_edit')) {
            access_denied();
        }
        die("Hii");
    }
}
    ?>