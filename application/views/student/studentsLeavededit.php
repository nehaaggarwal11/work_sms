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
                <form action="<?php /*echo site_url("admin/show_all_student/leavedstudentsave/" . $id) */ ?>" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
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
                                                <label for="current_email">Current <?php echo $this->lang->line('email'); ?></label><small class="req"> *</small>
                                                <input id="current_email" name="current_email" placeholder="" type="email" class="form-control"  value="" />
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="created_at">Created At</label><small class="req"> *</small>
                                                <input id="created_at" name="created_at" placeholder="" type="text" class="form-control date"  value="" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Current Phone</label><small class="req"> *</small>
                                                <input id="dob" name="current_phone" placeholder="" type="number" class="form-control"  value="" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="occupation">Occupation</label><small class="req"> *</small>
                                                <input id="occupation" name="occupation" placeholder="" type="text" class="form-control"  value="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="address">Current Address</label><small class="req"> *</small>
                                                <input id="address" name="address" placeholder="" type="text" class="form-control"  value="" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br>
                                                <input name="submit" placeholder="" type="submit" class="form-control"  value="Submit" />
                                            </div>
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