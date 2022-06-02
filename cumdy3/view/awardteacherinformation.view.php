<?php
  require 'header.view.php'; 
  //if session is login then  we will  use login/user/header.view.php
?>

<link rel="stylesheet" type="text/css" href="css/award.css">
<div class="container-fluid" id="award">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-xs-12">
		<table class="table table-responsive table-hover">
			<?=$display?>
		</table>
		</div>
	</div> 

	
	 <div align="center">
	<button type="button" class="btn btn-primary" onclick="window.location='awardteacher.php'">Back</button>   
	</div>



  
   
<script type="text/javascript" src="js/award.js"></script> 
