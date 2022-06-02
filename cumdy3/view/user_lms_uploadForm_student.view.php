<?php
require 'header.view.php'; 

?>
 <link rel="stylesheet" type="text/css" href="css/lms_user.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">
<div class="container-fluid">

<div class="row">
	<div class="col-sm-offset-1 col-sm-10 col-xs-12">
  <div class="alert alert-success"  style="margin-top:20px;">
      <?=$bar?>
    </div>
    
		<form action="user_lms_upload2.php?<?=$dataString?>" role="form" method="post" 
    enctype="multipart/form-data" class="form-horizontal" style="margin-top: 20px;">
    <div class="form-group">
      <label class="control-label col-sm-2" for="term" style="text-align: left;">Term</label>
      <div class="col-sm-3">
        <select class="form-control" name="term">
        <option value="1">First Term</option>
        <option value="2">Second Term</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="name" 
      style="text-align: left;">File Name</label>
      <div class="col-sm-3">          
        <input type="text" class="form-control" name="name"
         placeholder="Enter file name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="due" style="text-align: left;">Due Date</label>
      <div class="col-sm-3">          
        <input type="Date" class="form-control" name="due">
      </div>
      </div>
    <div class="form-group" >
      <label class="control-label col-sm-2"
       for="file" style="text-align: left;">File</label>
      <div class="col-sm-3">          
        <input type="file" class="form-control"  name="file">
      </div>
    </div>    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <a href="user_lms_upload_student.php?<?=$dataString?>">
      <input type='submit' value='Upload' class='btn btn-success'
       name='upload' id='upload'></a>

      </div>
    </div>
  </form>
	</div>
	</div>
</div>


   
<script type="text/javascript" src="js/lms.js"></script> 

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<?php
 require 'footer.view.php'; 
?>