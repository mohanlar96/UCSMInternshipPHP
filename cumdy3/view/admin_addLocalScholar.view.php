
<?php
  require 'header.view.php';
?>
  
 <link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<br> <br>
      
<div align="center"><h1>Adding Local Scholoarship Award Form</h1></div>
<form class="form-horizontal" role="form" method="post" action="addLocalScholar.php" enctype="multipart/form-data">


  <div class="form-group">
    <label class="control-label col-sm-3" for="photo">Image:</label>
    <div class="col-sm-6">
        <input type="file" name="photo"  onchange="checkimage(this);"  required/>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="uni">University:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="uni" name="uni" placeholder="Enter University" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="country">Country:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="country" name="country" placeholder="Enter Country" required>
      
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="duration">Duration:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="duration" name="duration" placeholder="Enter Duration:" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="year">Academic_Year:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter Academic_Year" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="deadline">Deadline:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="deadline" name="deadline" placeholder="Enter Deadline:" required>
    </div>
  </div>
  
  <div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
          <input type="reset" class="btn btn-default btnSubmit">
          <input type="submit" name="add" value="Add" class="btn btn-default">
          <button type="button" class="btn btn-default" onclick="window.location='admin_scholarship.php?id=2'">Back</button>
      </div>
</div>

</form>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/admin_scholarship.js"></script> 
 
