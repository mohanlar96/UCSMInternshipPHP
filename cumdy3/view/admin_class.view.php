<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/class_room.css">


<div class="container">
 <div class="row">
 <div class="col-md-offset-1 col-md-10 col-xs-12  std-info-form" style="background: rgba(6,6,6,0.1); border: 1px solid black; border-radius: 5px;">
   <form class="form" role="form" method="post" action="admin_class.php">
   <h2 align="center" style="background: #2A7FFF;padding-bottom: 20px;height: 50px;color: white;padding-top: 10px;">Welcome Classroom Management For Administrator </h2>

    <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="year">Year</label>
    </div>

    <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent">Total Student</label>
    
    <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="addstudentperroom">Add Student Per Room</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="firstyear">First Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($firsttotal) ?> </label>
    </div>

    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="firstyearperroom">
    </div>
    </div>


     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="secondyear">Second Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($secondtotal) ?> </label>
    </div>


    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="secondyearperroom">
    </div>
    </div>


     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="thirdyear">Third Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($thirdtotal) ?> </label>
    </div>


    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="thirdyearperroom">
    </div>
    </div>

       <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="fourthyear">Fourth Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($fourthtotal) ?> </label>
    </div>


    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="fourthyearperroom">
    </div>
    </div>

       <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="finalyear">Final Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($finaltotal) ?> </label>
    </div>


    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="finalyearperroom">
    </div>
    </div>

       <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="masteryear">Master Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="totalstudent"> <?= count($mastertotal) ?> </label>
    </div>


    <div class="form-group">
    <div class="col-sm-4 col-xs-4">
     <input type="text" name="masteryearperroom">
    </div>
    </div>


    <div class="form-group">
     <div class="col-md-offset-4 col-sm-10">
    <button type="submit" name="submit" value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;margin-bottom:20px;">GO</button>
    </div>
    </div>
  </form>
</form>
</div>
</div>
</div>

  
   
<script type="text/javascript" src="js/class_room.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>