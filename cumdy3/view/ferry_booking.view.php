<?php
  require 'header.view.php'; 

?>

<div class="container-fluid" id="body">   
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10">
      <h3>Transopration Service</h3>

        <div class="btn-group btn-group-justified">
    <a <?=$mdy_active?> href="user_transpotation.php?<?=$getQString?>id=1&name=MANDALAY" class="btn btn-primary">Mandalay</a>
    <a <?=$sk_active?> href="user_transpotation.php?<?=$getQString?>id=2&name=SINTGAING" class="btn btn-primary">Sintgaing</a>
      
    <a <?=$ks_active?> href="user_transpotation.php?<?=$getQString?>id=3&name=KYAUKSE" class="btn btn-primary">Kyaukse</a>
    <a  <?=$mt_active?> href="user_transpotation.php?<?=$getQString?>id=4&name=MYITTHARR" class="btn btn-primary">Myittharr</a>
     <a <?=$sg_active?> href="user_transpotation.php?<?=$getQString?>id=5&name=SAGAING" class="btn btn-primary">Sagaing</a>
     <a <?=$bo_active?> href="ferry_booking.php?<?=$getQString?>" class="btn btn-primary">Booking</a>
  		</div>
	</div>
	</div>
 
<div class="col-md-2">
</div>

<div class="col-md-8">	
 		<form class="form-horizontal" >
 	<div class="message">
 			<?php if(isset($message)) { echo $message; } ?>
 	   </div>

   
 <div class="form-group form" method="GET" action="ferry_booking.php" >

 	<label class="col-sm-2 control-label" for="CarNo">Car Number</label>
 <div class="col-sm-10">
   <select name="CarNo" id="CarNo" class="form-control">
   	<option value="">Select CarNo </option>
   	<?php echo $output; ?>
   </select>
 </div>
 </div>
 <div class="form-group" >
 <label class="col-sm-2 control-label" for="StudentId" >StudentID</label>
 <div class="col-sm-10">
<input type="text" class="form-control" id="StudentId" name="StudentId" placeholder="StudentId.."required>
</div>
</div>
<div class="form-group">

   <label class="col-sm-2 control-label"  for="Phone">Phone Number</label>
 <div class="col-sm-10">
   <input type="text" class="form-control" id="Phone" name="Phone" placeholder="Phone Number.."required>
 </div>
 </div>
 <div class="form-group" align="center">
 <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">
 <input type="submit" name="submit" value="Booking" class="btn btn-primary">
<!--<button class="btn btn-info"id="add" data-action="Add">Add</button>-->
</div>
</div>
</form>
</div>
 <div class="col-md-2">
 </div>
</div>
</div>
<?php 
require 'footer.view.php';?>



        


















<script type="text/javascript" src="js/intership.js"></script> 
