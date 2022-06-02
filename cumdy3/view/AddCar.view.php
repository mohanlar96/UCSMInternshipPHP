<?php
  require 'header.view.php'; 


?>

 <link rel="stylesheet" type="text/css" href="css/ferry.css">
<div class="container-fluid">
   <a href="admin.php" class="previous">&laquo; Back</a>
   <div class="message"><?php if(isset($message)) { echo $message; } ?></div>
 <form class="form-horizontal">
 <div class="form-group form" method="GET" action="AddCar.php" >
 	<label class="col-sm-2 control-label" for="CarNo">Car Number</label>
 <div class="col-sm-8">
      <input type="text" class="form-control" id="CarNo" name="CarNo" value="" placeholder="CarNo..."required >
 </div>
 </div>
 <div class="form-group" >
 <label class="col-sm-2 control-label" for="Dname" >Driver Name</label>
 <div class="col-sm-8">
<input type="text" class="form-control" id="Dname" name="Dname" placeholder="Driver name.."required>
</div>
</div>
<div class="form-group">

   <label class="col-sm-2 control-label"  for="Phone">Phone Number</label>
 <div class="col-sm-8">
   <input type="text" class="form-control" id="Phone" name="Phone" placeholder="Phone Number.."required>
 </div>
 </div>
 <div class="form-group">
    <label class="col-sm-2 control-label" for="town">Town</label>
    <div class="col-sm-8">
    <select class="form-control" id="town" name="town" require>
      <option value="1">Mandalay</option>
      <option value="2">Sintgaing</option>
      <option value="3">Kyaukse</option>
      <option value="4">Myittar</option>
      <option value="5">Sagaing</option>
    </select>
</div>
</div>
 <div class="form-group" >
    <label class="col-sm-2 control-label" for="Way" >Way</label>
   <div class="col-sm-8">
    <textarea class="form-control" rows="5" id="Way" name="Way" placeholder="Write Way..." required></textarea>
</div>
</div>
 <div class="form-group" align="center">
 <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">
 <input type="submit" name="submit" value="Add" class="btn btn-info">
<!--<button class="btn btn-info"id="add" data-action="Add">Add</button>-->
</div>
</div>
</form>
</div>
    
</div>    

<script type="text/javascript" src="js/ferry.js"></script> 












