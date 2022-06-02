<?php
  require 'header.view.php'; 


?>

 <link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   
  <form class="form-horizontal" method="GET" action="admin_addEvent.php">
      
    <div class="form-group" >
        <label class="col-sm-2 control-label" for="Type_ID" >Type ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Type_ID" name="Type_ID" placeholder="Type name..">
            </div>
    </div>

    <div class="form-group" >
        <label class="col-sm-2 control-label" for="Type_Name" >Type Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Type_Name" name="Type_Name" placeholder="Type name..">
            </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Date">Date</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Date" name="Date" placeholder="Date..">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Time">Time</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Time" name="Time" placeholder="Time..">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Photo">Photo</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Photo" name="Photo" placeholder="Photo...">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Title">Title</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Title" name="Title" placeholder="Title..">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Detail">Detail</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Detail" name="Detail" placeholder="Detail..">
        </div>
    </div>


    <div class="form-group" align="center">
 <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">

<input type="submit" name="submit" value="Add">

</div>

 <div align="left">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_type.php'">Back</button>
        </div> 



 
</div>    
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/news.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>










