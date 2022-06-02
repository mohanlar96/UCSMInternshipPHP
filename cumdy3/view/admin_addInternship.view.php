
<?php
  require 'header.view.php';
?>
  
 <link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<br> <br>
      
<div align="center"><h1>Adding Intership Award Form</h1></div>
<form class="form-horizontal" role="form" method="GET" action="addInternship.php">
      <div>
              <?= $display ?>
        </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="sid">Student_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="sid" name="sid" placeholder="Enter Student_ID" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="cid">Company_ID:</label>
    <div class="col-sm-6">
        <input type="text" class="form-control" id="cid" name="cid" placeholder="Enter Company_ID" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="cname">Company_Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="cname" name="cname" placeholder="Enter Company_Name" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="city">City:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="city" name="city" placeholder="Enter City">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="address">Address:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="duration">Duration:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="duration" name="duration" placeholder="Enter duration" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="year">Academic Year:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter Academic Year" required>
    </div>
  </div>
<div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
          <input type="reset" class="btn btn-default btnSubmit">
          <input type="submit" name="add" value="Add" class="btn btn-default">
          <button type="button" class="btn btn-default" onclick="window.location='admin_award_Admin.php?tableName1=internship&tableName2=internshipdetail&tableName3=student&tableName4=studentdetail&tableName5=academic_year&id=3'">Back</button>
      </div>
</div>

</form>

<script type="text/javascript" src="js/jquery.min.js"></script>
 

