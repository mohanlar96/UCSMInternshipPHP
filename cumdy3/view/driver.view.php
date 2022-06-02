<?php
  require 'header.view.php'; 
?>

<div class="container-fluid" id="body">		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10">
  		<h3> Driver <?=$db->get("driver","CarNo='$userId'")[0]['DriverName']?> > <i><?=$userId?> </i></h3>

   <div class="btn-group btn-group-justified">
    <a href="driver.php" <?=$active_pass?> class="btn btn-primary">View Passanger and Booking List </a>
    
    
  </div>

    <?php echo $output; ?>
    <h2>Booking list</h2>
    <?php echo $bo;?>

  	</div>
  </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Driver.js"></script> 

<?php
 require 'footer.view.php'; 
?>

