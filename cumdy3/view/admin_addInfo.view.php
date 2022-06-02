<?php
  require 'header.view.php'; 


?>

 <link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   
  <form class="form-horizontal" method="GET" action="admin_addInfo.php">
  
      <div class="form-group form" >
 	      <label class="col-sm-2 control-label" for="Roll_No">Roll No</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Roll_No" name="Roll_No" placeholder=" Roll Number...">
            </div>
      </div>

    <div class="form-group" >
        <label class="col-sm-2 control-label" for="Name_Eng" >Name Eng</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="Name_Eng" name="Name_Eng" placeholder="Name eng..">
            </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Academic_Year">Academic Year</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Academic_Year" name="Academic_Year" placeholder="Academic year..">
        </div>
    </div>
    


    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Type_ID">Type ID</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Type_ID" name="Type_ID" placeholder="Type id..">
        </div>
    </div>

    <div class="form-group">

      <label class="col-sm-2 control-label"  for="Type_Name">Type Name</label>
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

      <label class="col-sm-2 control-label"  for="Remark">Remark</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="Remark" name="Remark" placeholder="Remark..">
        </div>
    </div>

    <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_info.php'">Back</button>
    </div> 






    <div class="form-group" align="center">
 <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">

<input type="submit" name="submit" value="Add">

</div>
 
</div>    
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/info.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>










