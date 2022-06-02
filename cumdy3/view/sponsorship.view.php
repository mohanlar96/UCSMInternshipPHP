
<?php
  require 'header.view.php';
?>
  
 <link rel="stylesheet" type="text/css" href="css/sponsorship.css">
<br> <br>
<div align="center"><h1>Sponsorship Applicant Form</h1></div>
<form class="form-horizontal" role="form" method="GET" action="sponsorship.php">
<br>
<div class="form-group">
    <label class="control-label col-sm-3" for="rollno">Roll No:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="rollno" name="rollno" placeholder="Enter roll no">
    </div>
</div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="name">Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
    </div>
  </div>

  <div class="form-group">
  <label class="control-label col-sm-3" for="status">FStatus:</label>
    <div class="col-sm-6" name="fstatus">
      <div class="btn-group" >
        <select id="fstatus" name="fstatus">
          <option id="Death"> Death </option>
          <option value="Crippled"> Crippled </option>
          <option value="Unemployed"> Unemployed </option>
          <option value="Normal">Normal</option>
        </select>
      </div>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="status">MStatus:</label>
    <div class="col-sm-6">
      <div class="btn-group" >
        <select id="mstatus"name="mstatus">
          <option id="Death" > Death </option>
          <option id="Crippled"> Crippled </option>
          <option id="Unemployed"> Unemployed </option>
          <option id="Normal">Normal</option>
        </select>
      </div>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="income">TotalIncome:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="income" name="income" placeholder="Enter income" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="sibling">No Of Sibling:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="sibling" name="sibling" placeholder="Enter sibling">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-3" for="recommended">Teacher Recommended:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="recommended" name="recommended" placeholder="Enter recommended">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-3" for="year">Acedamci Year</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter acedamic year">
    </div>
  </div>

<div class="form-group">     
      <div align="center" class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
              
              <input type="reset" class="btn btn-primary">
            <input type="submit" class="btn btn-primary"name="submit" value="Apply" class="btn btn-default" onclick="alert('Insert Successful.');">
              <!-- <button type="button" class="btn btn-primary" onclick="window.location='scholar_sponsor.php'">Back</button> -->
      </div>
</div>

</form>
<script type="text/javascript" src="js/jquery.min.js"></script>
 
