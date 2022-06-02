<?php
  require 'header.view.php'; 
  //if session is login then  we will  use login/user/header.view.php
?>

<link rel="stylesheet" type="text/css" href="css/award.css">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-xs-12">
		<table class="table table-responsive table-striped">
			<?=$displayTable?>
		</table>
		</div>
	</div> 
<div class="col-md-2 col-xs-12 main-nav">
        
     <form class="form-horizontal" role="form" method="GET" action="awardinfo.php">

    <div class="form-group">
        <input type="text" class="form-control col-sm-6" id="name" name="name" placeholder="Enter name or rollno">
    </div>
      <div class="col-sm-3">
         <input type="submit" name="submit" value="search" class="btn btn-default">
      </div>
    </form>
</div>
	<div align="center">
	<button type="button" class="btn btn-primary" onclick="window.location='scholar_sponsor.php'">Back</button>   
	</div>
</div>

  
   
<script type="text/javascript" src="js/award.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>