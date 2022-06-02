
<?php
  require 'header.view.php';
?>
  
 <link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<br> <br>
      
<div align="center"><h1>Adding Teacher Scholarship Award Form</h1></div>
<form class="form-horizontal" role="form" method="GET" action="addTScholar.php">

  <div class="form-group">
    <label class="control-label col-sm-3" for="scholar_ID">Scholar_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="scholar_ID" name="scholar_ID" placeholder="Enter Scholar_ID">
      <h5 color='red'>The last scholar_ID id is: <?= $display ?> </h5>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="tid">Teacher_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="tid" name="tid" placeholder="Enter Teacher_ID">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="city">City:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="city" name="city" placeholder="Enter city" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="country">Country:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="country" name="country" placeholder="Enter Country">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="uni">University:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="uni" name="uni" placeholder="Enter university">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="degree">Degree:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="degree" name="degree" placeholder="Enter Degree">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="duration">Duration</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="duration" name="duration" placeholder="Enter Duration">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="year">Academic Year:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter Academic Year">
    </div>
  </div>
<div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
          <input type="reset" class="btn btn-default btnSubmit">
          <input type="submit" name="add" value="Add" class="btn btn-default">
          <button type="button" class="btn btn-default" onclick="window.location='admin_award_Admin.php?tableName1=scholarship&tableName2=scholarshipdetail&tableName3=teacher&tableName4=academic_year&id=1'">Back</button>
      </div>
</div>

</form>
<script type="text/javascript" src="js/jquery.min.js"></script>
 

