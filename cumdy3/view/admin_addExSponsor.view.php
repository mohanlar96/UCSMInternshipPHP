
<?php
  require 'header.view.php';
?>
  
 <link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<br> <br>
      
<div align="center"><h1>Adding External Sponsorship Award Form</h1></div>
<form class="form-horizontal" role="form" method="GET" action="addExSponsor.php">

  <div class="form-group">
    <label class="control-label col-sm-3" for="aid">Award_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="aid" name="aid" placeholder="Enter Award_ID" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="spid">Sponsor_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="spid" name="spid" placeholder="Enter Sponsor_ID" required>
      <h5 color='red'><?=$display?> </h5>
    </div>
  </div>
  
   <div class="form-group">
    <label class="control-label col-sm-3" for="sid">Student_ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="sid" name="sid" placeholder="Enter Student_ID:" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-3" for="year">Academic_Year:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter Academic_Year:" required>
    </div>
  </div>
  
  
<div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
          <input type="reset" class="btn btn-default btnSubmit">
          <input type="submit" name="add" value="Add" class="btn btn-default">
          <button type="button" class="btn btn-default" onclick="window.location='admin_award_Admin.php?tableName1=sponsorshipaward&tableName2=sponsorshipapplicant&tableName3=sponsorshipname&tableName4=student&id=5'">Back</button>
      </div>
</div>

</form>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/admin_scholarship.js"></script> 
 
<?php
  require 'view/footer.view.php'; 
?>
