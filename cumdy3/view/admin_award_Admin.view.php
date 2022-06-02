<?php
  require 'header.view.php'; 
  //if session is login then  we will  use login/user/header.view.php
?>

<link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-offset-1 col-md-9 col-xs-12">
		<table class="table table-responsive table-hover">
			<?=$displayTable?>
		</table>
		</div>
		
	</div>  
	<div align="center">
		<button type="button" class="btn btn-primary" onclick="window.location='admin_scholar_sponsor.php'">Back</button>   
	</div>  
</div>

  
   
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/admin_award.js"></script> 

