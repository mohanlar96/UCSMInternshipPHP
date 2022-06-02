<?php
  require 'header.view.php'; 
?>
<!--<link rel="stylesheet" type="text/css" href="css/lms_user.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">-->
<div class="container-fluid">

<div class="row">
	<div class="col-sm-offset-1 col-sm-10 col-xs-12">
  <div class="alert alert-success"  style="margin-top:20px;">
      <?=$bar ?>
    </div>
    
	<form action="view/user_lms_uploadForm_student.view.php" role="form" method="post" enctype="multipart/form-data" class="form-horizontal" style="margin-top: 20px;">
    <div class="col-sm-offset-1 col-sm-10 col-xs-12">
      <table class="table table-responsive">
      <tr><th>File Name</th><th>Due Date</th><th>Download File</th><th>Upload File</th>
        <?=$showTable?>
      </table>
    </div>
  </form>

	</div>
	</div>
</div>  
   
<script type="text/javascript" src="js/lms.js"></script> 

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<?php
 require 'footer.view.php'; 
?>