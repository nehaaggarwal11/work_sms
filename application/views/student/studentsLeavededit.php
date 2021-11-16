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
                    <form action="<?php /* echo site_url("admin/show_all_student/leavedstudentsave/" *. $id) */ ?>" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2"> <?php echo $this->lang->line('edit'); ?> <?php echo $this->lang->line('student'); ?></h3>
                                <div class="around10">
                                    <?php if ($this->session->flashdata('msg')) { ?>
                                        <?php echo $this->session->flashdata('msg') ?>
                                    <?php } ?>
                                    <?php foreach ($student as $st) { ?>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="current_email">Current <?php echo $this->lang->line('email'); ?></label><small class="req"> *</small>
                                                        <input id="current_email" name="current_email" placeholder="" type="email" class="form-control" required value=<?php if ($st['email'] != "") echo $st['email'];
                                                                                                                                                                        else echo "Email"; ?> />

                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="created_at">Leave Date</label><small class="req"> *</small>
                                                        <input id="created_at" name="created_at" placeholder="" type="text" class="form-control date" required value="<?php echo set_value('created_at'); ?>" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="current_phone">Current Phone</label><small class="req"> *</small>
                                                        <input id="current_phone" class="form-control" type="tel" name="current_phone" placeholder="012-345-6789" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required value=<?php echo (!empty($st['mobileno'])) ? $st['mobileno'] : " "; ?>>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="occupation">Occupation</label><small class="req"> *</small>
                                                        <input id="occupation" name="occupation" placeholder="" type="text" class="form-control" value="" />
                                                    </div>
                                                </div>
                                                <div class="col-md-4"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="reason">*Reason</label><small class="req"> *</small>
                                                            <input id="reason" name="reason" placeholder="" type="text" class="form-control" value="" required />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="address">Current Address</label><small class="req"> *</small>
                                                            <!-- <input id="address" name="address" placeholder="" type="text" class="form-control"  value=<?php /*if($st['current_address']!="") echo $st['current_address']; else echo "&nbsp;" ;*/ ?> /> -->
                                                            <textarea id="address" name="address" rows="4" cols="42"><?php if ($st['current_address'] != "") echo $st['current_address'];
                                                                                                                        else echo "&nbsp;"; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4"></div>
                                                </div>
                                            </div>

                                            <div class="col-md-3" style="display:none;">
                                                <div class="form-group">
                                                    <label for="name">*Name</label><small class="req"> *</small>
                                                    <input id="name" name="name" placeholder="" type="text" class="form-control" value=<?php echo $st['firstname'] . "&nbsp;" . $st['lastname']; ?> required />
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3"></div>
                                                <div class="col-md-3">
                                                    <input name="submit" style="float: right;" placeholder="" type="submit" class="btn btn-info" value="Submit" />
                                                </div>
                                                <div class="col-md-6"></div>
                                            </div>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>