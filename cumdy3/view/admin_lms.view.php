<?php
  require 'view/header.view.php';                                        
?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
 <link rel="stylesheet" href="css/bootstrap.css">
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">
 <link rel="stylesheet" type="text/css" href="css/lms_admin.css">
 </head>
 <body>
<div class="container-fluid">


<div class="row">
	<div class="col-sm-offset-1 col-sm-10 col-xs-12">
	<div class="alert alert-success" style="margin-top:20px;">
      <?=$TeacherName ?>
    </div>
		<table class="table table-responsive " >
			<tr> <th> Year </th><th>Major</th> <th> Section</th> <th> Subject</th>
			<th>Uploaded File</th><th>Mark</th><th>View</th></tr>
			<?=$showTable?>
		</table>
	</div>
</div>
</div>
<script type="text/javascript" src="js/lms.js"></script> 
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
<?php
 require 'footer.view.php'; 
?>