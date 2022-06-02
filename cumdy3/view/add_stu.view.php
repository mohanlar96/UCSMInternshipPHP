<?php 
require 'header.view.php';
?>
<link rel="stylesheet" type="text/css" href="css/ferry.css">
 <div class="container-fluid">
 <div class="col-md-2">
 <a href="Driver.php" class="previous">&laquo; Back</a>
 </div>
<div class="col-md-7 main">

  <div class="message"><?php if(isset($message)) { echo $message; } ?></div> 
 <form class="form-horizontal" >
 <div class="form-group form" method="GET" action="add_stu.php" >
 	
 <div class="col-sm-10">
   
 </div>
 </div>
 <div class="form-group" >
 <label class="col-sm-2 control-label" for="StudentId" >StudentID</label>
 <div class="col-sm-10">
<input type="text" class="form-control" id="StudentId" name="StudentId" placeholder="StudentId.."required>
</div>
</div>


 <div class="form-group" align="center">
 <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">
 <input type="submit" name="submit" value="Add" class="btn btn-info">
<!--<button class="btn btn-info"id="add" data-action="Add">Add</button>-->
</div>
</div>
</form>
 <div class="col-md-3 aside">
 </div>
</div>
</div>
<?php require 'footer.view.php';?>



