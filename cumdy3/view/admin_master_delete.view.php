<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/std_info.css">
<div class="container-fluid">
   
   <div class="row">


   <div class="col-md-offset-1 col-md-10 col-xs-12  std-info-form" style="background: rgba(6,6,6,0.1); border: 1px solid black; border-radius: 5px;">
    
  
    
   <form class="form-horizontal" role="form" method="post" action="admin_master_delete.php">
    <h2 align="center" style="padding-bottom: 30px;padding-top: 20px;background:#2A7FFF;color: white;">Master Information</h2>

    <div class="form-group">
    <label class="control-label col-sm-2" for="studentid">Student ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Enter Student ID" >
    </div>
  </div>
<div class="form-group">
    <label class="control-label col-sm-2" for="thesisid">Thesis ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="thesisid" name="thesisid" placeholder="Enter Thesis ID">
    </div>
  </div>
<div class="form-group">
    <label class="control-label col-sm-2" for="rollno">Roll No:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="rollno" name="rollno" placeholder="Enter Roll No" >
    </div>
  </div>
 <div class="form-group">
    <label class="control-label col-sm-2" for="paperid">Paper ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="paperid" name="paperid" placeholder="Enter Paper ID">
    </div>
  </div>
 <div class="form-group">
    <label class="control-label col-sm-2" for="did">Defence ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="did" name="did" placeholder="Enter Defence ID">
    </div>
  </div>
 <div class="col-sm-3">
      <button type="submit" name="delete"  value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;margin-bottom: 20px;">Delete</a></button>
    </div>
</form>
</div>
</div>
</div>