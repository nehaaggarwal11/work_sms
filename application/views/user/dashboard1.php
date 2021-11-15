<style>
    .nav-tabs>li.active>a{
            border:0px solid black !important;
        }
    @media only screen and (max-width:480px){
        
    .nn{
                        display:none;
                    }
                    .ss{
                        display:block;
                    }
                    .ss li i{
                        font-size: 36px;
                    }
                    .ss li{
                        width:44%;
                        background: #fff;
                        margin:6px;
                        display:flex;
                        justify-content: center;
                    }
                    .ss li a{
                        color:#555;
                    }}
    @media only screen and (min-width:421px) and (max-width:1600px){
        .ss li{
                        width:30%;
                        margin: 10px;
                        background: #fff;
                    }
        .ss li a{
               display: flex;
               justify-content: center;
        }
    }
</style>
<style type="text/css">

    @media print
    {
        .no-print, .no-print *
        {
            display: none !important;
        }
    }
    .option_grade{
        display: none;
    }
</style>
<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('my_profile'); ?> <small><?php echo $this->lang->line('student1'); ?></small></h1>
    </section>
    <section class="content">
        
            <div class="col-md-9">
                <ul class="ss nav nav-tabs">
                        <li class="active"><a href="<?php echo base_url(); ?>user/user/profile"><i class="fa fa-user"></i><br><?php echo $this->lang->line('profile'); ?></a></li>
                        <?php if ($this->studentmodule_lib->hasActive('fees')) { ?>
                                <li class=""><a href="<?php echo base_url(); ?>user/user/getfees"><i class="fa fa-money"></i><br><?php echo $this->lang->line('fees'); ?></a></li>
                                <li class=""><a href="<?php echo base_url(); ?>user/examschedule"><i class="fa fa-pencil-square-o" aria-hidden="true"></i><br><?php echo $this->lang->line('exam'); ?></a></li>
                        <?php } ?>  
                        <li class=""><a href="<?php echo base_url(); ?>user/content/studymaterial"><i class="fa fa-file-pdf-o" aria-hidden="true"></i><br><?php echo $this->lang->line('documents'); ?></a></li>
                        <li class=""><a href="<?php echo base_url(); ?>user/timetable"><i class="fa fa-clock-o" aria-hidden="true"></i><br><?php echo $this->lang->line('timeline'); ?></a></li>  
                </ul>
            </div>
</div>