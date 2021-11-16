<style>
    .nav-tabs>li.active>a {
        border: 0px solid black !important;
    }

    .ss {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        padding: 50px;
    }

    .ss .fa {
        font-size: 30px;
    }

    .ss li {
        width: 30%;
        margin: 10px;
        text-align: center;
        list-style: none;
    }

    .ss li a {
        display: block;
        padding: 40px;
        font-size: 28px;
        background: #fff;
        border-radius: 5px;
        transition: 0.5s ease;
        box-shadow: 0 0 20px rgba(0,0,0,0.2);
    }

    .ss li a:hover {
        color: #fff;
        border-radius: 0px;
        background: #337ab7;
    }

    @media only screen and (max-width:990px) {
        .ss li {
            width: 46%;
        }
    }

    @media only screen and (max-width:632px) {
        .nn {
            display: none;
        }

        .ss {
            padding: 50px 10px;
        }

        .ss li {
            width: 25%;
        }

        .ss li a {
            padding: 20px;
            font-size: 20px;
        }

        .ss .fa {
            font-size: 24px;
        }
    }

    @media only screen and (max-width:450px) {
        .ss {
            padding: 50px 10px;
        }

        .ss li {
            width: 40%;
        }

        .ss li a {
            font-size: 16px;
        }

    }
</style>
<style type="text/css">
    @media print {

        .no-print,
        .no-print * {
            display: none !important;
        }
    }

    .option_grade {
        display: none;
    }
</style>
<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('my_profile'); ?> <small><?php echo $this->lang->line('student1'); ?></small>
        </h1>
    </section>
    <section class="content">
        <div class="container-fuild">
            <div class="row">
                <div class="col-md-12">
                    <ul class="ss">
                        <li><a href="<?php echo base_url(); ?>user/user/profile"><i class="fa fa-user"></i><br><?php echo $this->lang->line('profile'); ?></a></li>
                        <?php if ($this->studentmodule_lib->hasActive('fees')) { ?>
                            <li><a href="<?php echo base_url(); ?>user/user/getfees"><i class="fa fa-money"></i><br><?php echo $this->lang->line('fees'); ?></a></li>
                            <li><a href="<?php echo base_url(); ?>user/examschedule"><i class="fa fa-pencil-square-o" aria-hidden="true"></i><br><?php echo $this->lang->line('exam'); ?></a></li>
                        <?php } ?>
                        <li><a href="<?php echo base_url(); ?>user/content/studymaterial"><i class="fa fa-file-pdf-o" aria-hidden="true"></i><br><?php echo $this->lang->line('documents'); ?></a></li>
                        <li><a href="<?php echo base_url(); ?>user/timetable"><i class="fa fa-clock-o" aria-hidden="true"></i><br><?php echo $this->lang->line('timeline'); ?></a></li>
                    </ul>
                </div>
            </div>
        </div>
</div>