<?php
  require 'header.view.php'; 
?>
 <link rel="stylesheet" type="text/css" href="css/lms_admin.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">

<div class="container-fluid">

<div class="row">
	<div class="col-sm-offset-1 col-sm-10 col-xs-12">
  <div class="alert alert-success"  style="margin-top:20px;">
      <?=$bar?>
    </div>
    
	<form action="view/lms_download_teacher.view.php?>qString" role="form" 
  method="post" enctype="multipart/form-data" class="form-horizontal" style="margin-top: 20px;">
    <div class="col-sm-offset-2 col-sm-10 col-xs-12">
      <table class="table table-responsive">
     
        <?=$showTable?>
      </table>
    </div>
  </form>
	</div>
	</div>
</div>
   
<script type="text/javascript" src="js/lms_upload_teacher.js"></script> 
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/lms.js"></script> 

<?php
 require 'footer.view.php'; 
?>