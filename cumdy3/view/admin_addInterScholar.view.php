
<?php
  require 'header.view.php';
?>
  
<link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
     
      
<div align="center"><h1>Adding International Scholoarship Award Form</h1></div>
<form class="form-horizontal" role="form" method="POST" action="addInterScholar.php" enctype="multipart/form-data">

  <div class="form-group">
    <label class="control-label col-sm-3" for="image">Image:</label>
    <div class="col-sm-6">
        <input type="file" name="photo"  onchange="checkimage(this);"  required/>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="name">Scholarship Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter Scholarship Name:" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="link">Link:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="link" name="link" placeholder="Enter link:" required>
    </div>
  </div>
  
  
  <div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
          <input type="reset" class="btn btn-default btnSubmit">
          <input type="submit" name="add" value="Add" class="btn btn-default">
          <button type="button" class="btn btn-default" onclick="window.location='admin_scholarship.php?id=1'">Back</button>
      </div>
</div>

</form>

  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/admin_scholarship.js"></script> 
 

