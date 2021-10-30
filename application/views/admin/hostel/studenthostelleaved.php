    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?>
        </h1>

    </section>
    <!-- Main content -->
    <section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">

                    <?php if ($this->session->flashdata('flsh_msg')) {?>
                        <div class="alert alert-danger">
                            <?php echo $this->session->flashdata('flsh_msg') ?>
                        </div>
                    <?php }?>

                        <div class="box-header" style="display:inline-block">
                            <h3 class="box-title"><i class="fa fa-search"></i>Hostel Leaved Students</h3>
                        </div>
                        <a style="color: #fff; display:inline-block; float:right; margin-top: 5px; margin-right: 12px;" href="student_hostel"><button class="btn btn-info"style="/*padding: 8px;border-radius: 8px;font-size: 18px;background: #282828;*/">Assign Hostel</button></a>


                        <div class="table">
                            <div class="nav-tabs-custom border0 navnoshadow">
                                <div class="box-header ptbnull"></div>
                                <ul class="nav nav-tabs" style="display: none;">
                                    <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true"><i class="fa fa-list"></i> <?php echo $this->lang->line('list'); ?> <?php echo $this->lang->line('view'); ?></a></li>
                                    <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false"><i class="fa fa-newspaper-o"></i> <?php echo $this->lang->line('details'); ?> <?php echo $this->lang->line('view'); ?></a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="download_label"><?php echo $title; ?></div>
                                    <div class="tab-pane active table-responsive no-padding" id="tab_1">
                                        <table class="table table-striped table-bordered table-hover example" cellspacing="0" width="100%">
                                            <thead>

                                                <tr>
                                                    <th>
                                                        Student ID
                                                    </th>
                                                    <th>
                                                        Name
                                                    </th>
                                                    <th>
                                                        Hostel Name
                                                    </th>
                                                    <th>
                                                        Phone No.
                                                    </th>
                                                    <th>
                                                        Room Number
                                                    </th>
                                                    
                                                    <th>
                                                        Hostel Type
                                                    </th>
                                                    <th>
                                                        Leave Date 
                                                    </th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                // print_r($student);
                                                foreach ($students as $st) {
                                                    echo "<tr><td>" . $st['sid'] . "</td><td>" . $st['firstname'] . "&nbsp;" . $st['lastname'] . "</td><td>" . $st['hostel_name'] . "</td><td>" . $st['mobileno'] . "</td><td>" . $st['hostel_room_id'] ."</td><td>" . $st['type'] . "</td>";
                                                    ?>
                                                   <td><?php
                                                        if ($st["leave_date"] != null) {
                                                            echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($st['leave_date']));
                                                        }
                                                        ?></td> 
                                               <?php }?>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- <div class="col-md-3">
            <button class="btn btn-info"style="/*padding: 8px;border-radius: 8px;font-size: 18px;background: #282828;*/"><a style="color: #fff;" href="show">Add Students</a></button>
        </div> -->
                    </div>
                </div>
            </div>
</div>
</div>
</section>
</section>
</div>
<script type="text/javascript">
    function getSectionByClass(class_id, section_id) {
        if (class_id != "" && section_id != "") {
            $('#section_id').html("");
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {
                    'class_id': class_id
                },
                dataType: "json",
                success: function(data) {
                    $.each(data, function(i, obj) {
                        var sel = "";
                        if (section_id == obj.section_id) {
                            sel = "selected";
                        }
                        div_data += "<option value=" + obj.section_id + " " + sel + ">" + obj.section + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        }
    }
    $(document).ready(function() {
        var class_id = $('#class_id').val();
        var section_id = '<?php echo set_value('section_id') ?>';
        getSectionByClass(class_id, section_id);
        $(document).on('change', '#class_id', function(e) {
            $('#section_id').html("");
            var class_id = $(this).val();
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {
                    'class_id': class_id
                },
                dataType: "json",
                success: function(data) {
                    $.each(data, function(i, obj) {
                        div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        });
    });
</script>