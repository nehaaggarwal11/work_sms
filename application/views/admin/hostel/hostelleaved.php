<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                <form action="<?php /* echo site_url("admin/show_all_student/leavedstudentsave/" *. $id) */?>" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2"> <?php echo $this->lang->line('edit'); ?> <?php echo $this->lang->line('student'); ?></h3>
                                <div class="around10">
                                    <?php if ($this->session->flashdata('msg')) {?>
                                        <?php echo $this->session->flashdata('msg') ?>
                                    <?php }?>
                                    
                                    <div class="row">
                                        
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="add_info">Additional Information/ Reason</label><small class="req"> *</small>
                                                <!-- <input id="address" name="address" placeholder="" type="text" class="form-control"  value=<?php /*if($st['current_address']!="") echo $st['current_address']; else echo "&nbsp;" ;*/?> /> -->
                                                <textarea id="add_info" name="add_info" rows="4" cols="40"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                            <label for="leave_date">Date</label><small class="req"> *</small>
                                            <input id="leave_date" name="leave_date" placeholder="" type="text" class="form-control date"  value="" />
                                            <br>
                                                <input name="submit" placeholder="" type="submit" class="btn btn-info"  value="Submit" />
                                            </div>
                                        </div>
                                        

                                        
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                </form>
                </div>
            </div>
        </div>
    </section>
</div>