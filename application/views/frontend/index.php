<!DOCTYPE html>
<html>
  <head>
  	<?php $this->load->view('frontend/template/header'); ?>
  </head>
  <body>
      <?php $this->load->view('frontend/template/navbar'); ?>
      <!-- page content -->
      <div class="web_wrapper">
	      <?php $this->load->view($view); ?>
      </div>
      <!-- /page content -->

      <!-- footer content -->
      	<?php $this->load->view('frontend/template/footer'); ?>
      <!-- /footer content -->

      <!-- functions -->
        <?php $this->load->view('frontend/template/functions'); ?>
      <!-- /functions -->

  </body>
</html>