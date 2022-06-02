<?php
  require 'header.view.php'; 


?>

 <link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   
  <form class="form-horizontal" method="GET" action="admin_addType.php">
      <div class="form-group form" >
 	      <label class="col-sm-2 control-label" for="Number">Number</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Number" name="Number" placeholder="Number...">
            </div>
      </div>

    <div class="form-group" >
        <label class="col-sm-2 control-label" for="Start_Date" >Start Date</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Start_Date" name="Start_Date" placeholder="Start Date..">
            </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="End_Date">End Date</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="End_Date" name="End_Date" placeholder="End Date..">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Contents">Contents</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Contents" name="Contents" placeholder="Contents..">
        </div>
    </div>

    <div class="form-group" align="center">
      <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">

          <input type="submit" name="submit" value="Add">

      </div>
    </div>

    <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_calendar.php'">Back</button>
    </div>
</div>    
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/calendar.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>










