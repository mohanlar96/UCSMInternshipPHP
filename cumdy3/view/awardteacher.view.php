<?php
  require 'header.view.php'; 
  //if session is login then  we will  use login/user/header.view.php
?>
<html>
<head>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/award.css">
<div class="container-fluid" id="award">
	<div class="row">
	<div class="col-md-4 col-xs-3">
        <br>
     <form class="form-horizontal" role="form" method="GET" action="teacherInfo.php">
    <div class="col-md-6">
    <div class="form-group">
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter name ">
    </div>
</div>
      <div class="col-md-1">
         <input  type="submit" class="btn btn-primary" name="submit" value="Search">
      </div>
    </form>
</div>
		
	<div class="col-md-offset-2 col-md-8 col-xs-12">
		<table class="table table-responsive table-hover">
			<?=$displayTeacher?>
		</table>
		</div>
	

	
</div><!--row-->
	<!-- <div align="center">
	<button type="button" class="btn btn-primary" onclick="window.location='scholar_sponsor.php'">Back</button>   
	</div> -->
</div>


  
   
<script type="text/javascript" src="js/award.js"></script> 
</body>
</html>