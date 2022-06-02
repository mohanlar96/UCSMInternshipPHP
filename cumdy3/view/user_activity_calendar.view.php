<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php



?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Academic Programme</h3>
        <div class="btn-group btn-group-justified">
          <a href="user_activity_type.php" class="btn btn-primary">Activity Type</a>
          <a href="user_activity_calendar.php" id="active-nav" class="btn btn-primary">Academic Calendar</a>
            
          <a href="user_activity_info.php" class="btn btn-primary">Student Information</a>
          
          <a href="user_event_calendar.php" class="btn btn-primary">Activity Calendar</a>
        </div>

        <table class="table table-hover table-responsive">
           <tr> <th> Number </th> <th> Start Date </th> <th> End Date </th> <th> Contents </th>
           <?=$calendarTable?>
        </table>

        <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='user_activity.php'">Back</button>
        </div>

    </div>
  </div>
</div>

<script type="text/javascript" src="js/Activity.js"></script> 
<?php
  //require 'footer.view.php'; 
?>