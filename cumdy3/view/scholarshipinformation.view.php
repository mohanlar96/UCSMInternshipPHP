<?php
  require 'header.view.php';
?>
<html>
<head>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/scholarship.css">
<div class="container-fluid" id="scholarbody">
	<div class="row">
	<div class="col-md-4 col-xs-3">
        <br>
    <div align="center">
	<button type="button" class="btn btn-primary" onclick="window.location='viewdetail.php'">View Detatil</button>   
	</div>
</div>	
	<div class="col-md-offset-2 col-md-8 col-xs-12">
		<table class="table table-responsive table-hover">
			<?=$displayTable?>
		</table>
		</div>
	

	
</div><!--row-->
	<!-- <div align="center">
	<button type="button" class="btn btn-primary" onclick="window.location='scholar_sponsor.php'">Back</button>   
	</div> -->
</div>


  
   
<script type="text/javascript" src="js/award.js"></script> 