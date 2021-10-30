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
                <form action="<?php /*echo site_url("admin/Hostel/hostelsave/" . $id)*/ ?>" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="tshadow mb25 bozero">
                                <h3 class="pagetitleh2"> <?php echo $this->lang->line('edit'); ?> <?php echo $this->lang->line('student'); ?></h3>
                                <div class="around10">
                                    <?php if ($this->session->flashdata('flsh_msg')) {?>
                                        <div class="alert alert-danger">
                                        <?php echo $this->session->flashdata('flsh_msg') ?>
                                    </div>
                                    <?php }?>
                                    <?php foreach($student as $st){ ?>
                                    
                                    <div class="row">
                                        
                                                    <div class="tshadow mb25 bozero">
                                                        <h4 class="pagetitleh2">
                                                            <?php echo $this->lang->line('hostel'); ?></label> <?php echo $this->lang->line('details'); ?></label>
                                                        </h4>

                                                        <div class="row around10">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('hostel'); ?></label>

                                                                    <select class="form-control" id="hostel_id" name="hostel_id">

                                                                        <option value=""><?php echo $this->lang->line('select'); ?></option>
                                                                        <?php

                                                                        foreach ($hostelList as $hostel_key => $hostel_value) {
                                                                        ?>

                                                                            <option value="<?php echo $hostel_value['id'] ?>" <?php echo set_select('hostel_id', $hostel_value['id']); ?>>
                                                                                <?php

                                                                                echo $hostel_value['hostel_name']; ?>
                                                                            </option>
                                                                        <?php
                                                                        }
                                                                        ?>
                                                                    </select>
                                                                    <span class="text-danger"><?php echo form_error('hostel_id'); ?></span>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('room_no'); ?></label>
                                                                    <select id="hostel_room_id" name="hostel_room_id" class="form-control">
                                                                        <option value=""><?php echo $this->lang->line('select'); ?></option>
                                                                    </select>
                                                                    <span class="text-danger"><?php echo form_error('hostel_room_id'); ?></span>
                                                                </div>
                                                            </div>
                                                            <input type="text" value=$id name='id' style="display:none">


                                                        </div>
                                                    </div>
                                                
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <br>
                                                <input name="submit" placeholder="" type="submit" class="btn btn-info"  value="Submit" />
                                            </div>
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
<script type="text/javascript">
    $(document).ready(function() {
        var hostel_id = $('#hostel_id').val();
        var hostel_room_id = '<?php echo set_value('hostel_room_id', 0) ?>';
        getHostel(hostel_id, hostel_room_id);

        $(document).on('change', '#hostel_id', function(e) {
            var hostel_id = $(this).val();
            getHostel(hostel_id, 0);

        });

        function getHostel(hostel_id, hostel_room_id) {
            if (hostel_room_id == "") {
                hostel_room_id = 0;
            }

            if (hostel_id != "") {

                $('#hostel_room_id').html("");


                var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
                $.ajax({
                    type: "GET",
                    url: baseurl + "admin/hostelroom/getRoom",
                    data: {
                        'hostel_id': hostel_id
                    },
                    dataType: "json",
                    beforeSend: function() {
                        $('#hostel_room_id').addClass('dropdownloading');
                    },
                    success: function(data) {
                        $.each(data, function(i, obj) {
                            var sel = "";
                            if (hostel_room_id == obj.id) {
                                sel = "selected";
                            }

                            div_data += "<option value=" + obj.id + " " + sel + ">" + obj.room_no + " (" + obj.room_type + ")" + "</option>";

                        });
                        $('#hostel_room_id').append(div_data);
                    },
                    complete: function() {
                        $('#hostel_room_id').removeClass('dropdownloading');
                    }
                });
            }
        }

    });
</script>
