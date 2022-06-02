<?php
  require 'header.view.php'; 

   // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/result.css">
 <!-- <link rel="stylesheet" type="text/css" href="css/result.css"> -->
<div class="container-fixed">
   <div class="row"> 
 

<!--mid-->
    <div class="col-md-offset-4 col-md-4 col-xs-12">
    <!--header-->
      <form align="center" name="f2" class="form-horizontal" id="markCertificate" role="form" method="Post" action="#">  
<b><h2 align="center" >Mark Certificate Form</h2></b>
  <div class="form-group" align="right">
    <label class="control-label col-sm-2" for="date">Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" name="date" placeholder="YY/MM/DD">
    </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="name" placeholder="Enter Your English Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="rollno">Roll No:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="rollno" placeholder="Enter Roll Number">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="year">Study Year:</label>
      <div class="col-sm-10">          
        <select class="form-control" name="year">
        <option>First Year</option>
        <option>Second Year</option>
        <option>Third Year</option>
        <option>Fourth Year</option>
        <option>Final Year</option>
      </select>

      </div>
    </div>
            
        <div class="form-group">
      <label class="control-label col-sm-2" for="academic">Academic Year:</label>
      <div class="col-sm-10">          
        <select class="form-control" name="academic">
        <option>2011-2012</option>
        <option>2012-2013</option>
        <option>2013-2014</option>
        <option>2014-2015</option>
        <option>2015-2016</option>
        <option>2016-2017</option>
      </select>

      </div>
      </div>
    
    

    
    <div class="form-group">
      <label class="control-label col-sm-2" for="fname">Father's Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="fname" placeholder="Enter Your Father's English Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">          
        <input type="textarea" class="form-control" name="email" placeholder="Enter Your Email Address">
      </div>
    </div>


    <div class="form-group"align="center" >        
      <div class="col-sm-offset-2 col-sm-10 ">
        
        
           <ul class="pager">
              <li class="previous"><a href=# onclick="window.history.go(-1)">Previous</a></li>
              <button type="submit" class="btn btn-primary btn-md" name="submit" value="Register" class="btn btn-info btn-md">Register</button>
        <button type="reset" name="reset" value="reset" class="btn btn-primary btn-md" onclick="myFunction()">Clear</button>
              <li class="next"><a href="user_result.php" >Cancel</a></li>


              </ul>
      </div>
    </div>
  </form>
        </div>


      </div>
   
 
<script type="text/javascript">
  function goBack(){
    window.history.back();
  }
</script>
  
   
   
<!-- <script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>  -->  
<script type="text/javascript" src="js/user_result.js"></script> 
<?php
 require 'footer.view.php'; 
?> 