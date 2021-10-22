<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?>
        </h1>
    </section>
    <!-- Main content -->
    <section>
    <section class="content">
    <div class="row">
    
    <div class="table">
    <div class="nav-tabs-custom border0 navnoshadow">
                      <div class="box-header ptbnull"></div>  
                      <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true"><i class="fa fa-list"></i> <?php echo $this->lang->line('list'); ?>  <?php echo $this->lang->line('view'); ?></a></li>
                            <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false"><i class="fa fa-newspaper-o"></i> <?php echo $this->lang->line('details'); ?> <?php echo $this->lang->line('view'); ?></a></li>
                        </ul>
    <div class="tab-content">
                            <div class="download_label"><?php echo $title; ?></div>
                            <div class="tab-pane active table-responsive no-padding" id="tab_1">
                                <table class="table table-striped table-bordered table-hover example" cellspacing="0" width="100%">
                                    <thead>
                                        
        <tr>
            <th>
                S.No.
            </th>
            <th>
                Current Email
            </th>
            <th>
                Current Phone
            </th>
            <th>
                Occupation
            </th>
            <th>
                Address
            </th>
            <th>
                Date
            </th>
        </tr>
        </thead>
    <tbody>
        <?php 
        // print_r($student);
        foreach($student as $st)
        {
            echo "<tr><td>".$st['id']."</td><td>".$st['current_email']."</td><td>".$st['current_phone']."</td><td>".$st['occupation']."</td><td>".$st['address']."</td><td>".$st['created_at']."</td></tr>";
        }
        ?>
        </tbody>
        </table>
                            </div>
    </div>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col-md-3">
            <button style="padding: 8px;border-radius: 8px;font-size: 18px;background: #282828;"><a style="color: #fff;" href="show">Add Students</a></button>
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
                                                                        data: {'class_id': class_id},
                                                                        dataType: "json",
                                                                        success: function (data) {
                                                                            $.each(data, function (i, obj)
                                                                            {
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
                                                            $(document).ready(function () {
                                                                var class_id = $('#class_id').val();
                                                                var section_id = '<?php echo set_value('section_id') ?>';
                                                                getSectionByClass(class_id, section_id);
                                                                $(document).on('change', '#class_id', function (e) {
                                                                    $('#section_id').html("");
                                                                    var class_id = $(this).val();
                                                                    var base_url = '<?php echo base_url() ?>';
                                                                    var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
                                                                    $.ajax({
                                                                        type: "GET",
                                                                        url: base_url + "sections/getByClass",
                                                                        data: {'class_id': class_id},
                                                                        dataType: "json",
                                                                        success: function (data) {
                                                                            $.each(data, function (i, obj)
                                                                            {
                                                                                div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                                                                            });
                                                                            $('#section_id').append(div_data);
                                                                        }
                                                                    });
                                                                });
                                                            });
                                                        </script>