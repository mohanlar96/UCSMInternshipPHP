<?php
require 'header.view.php';

  // if session is login then  we will  use login/user/header.view.php

?>



<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Activity</h3>
        <div class="btn-group btn-group-justified">
          <a href="user_activity_type.php" id="active-nav" class="btn btn-primary">Activity Type</a>
          <a href="user_activity_calendar.php" class="btn btn-primary">Academic Calendar</a>
            
          <a href="user_activity_info.php" class="btn btn-primary">Student Information</a>
          
          <a href="user_event_calendar.php" class="btn btn-primary">Activity Calendar</a>
        </div>

        <h2>        </h2>
        
           <div class="row"> 
 <!--left side-->
    <div class="col-xs-12 col-md-10">
      
        <table class="table table-hover table-responsive">
           <tr> <td> Type Id </td> <td> Type Name </td> <td> Date </td> <td> Detail </td> <td> Participant</td>
           <?=$eventTable?>
        </table>  
     
    </div>
    </div>

    <div align="center">
     <button type="button" class="btn btn-primary" onclick="window.location='user_activity.php'">Back</button>
    </div>

</div>
</div>
  
   
<script type="text/javascript" src="js/Activity.js"></script> 

    </div>
  </div>
</div>
<br>
<br>

<?php
  require 'footer.view.php'; 
?>