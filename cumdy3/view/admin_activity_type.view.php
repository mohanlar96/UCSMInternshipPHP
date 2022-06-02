<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
    <div class="row"> 
 <!--left side-->

    <div class="col-xs-12 col-md-offset-1 col-md-10">
      
        <table class="table table-hover table-responsive">
           <tr><td> Type ID </td> <td> Type Name </td> <td> Date </td> <td> Time </td> <td> Photo </td> <td> Title </td> <td> Detail </td> <td> Participant</td>
           <?=$eventTable?>
        </table>  
     
    </div>

  
  
    <div class="row">
        <div class="col-md-offset-9 col-md-5">
                  <li><a href="admin_addEvent.php" class="btn btn-info"> Add a New Event</a></li>

        </div>

    </div>
                
      <div align="center">
          <button type="button" class="btn btn-primary" onclick="window.location='admin_activity.php'">Back</button>
     </div>
    
</div>
</div>
  
<script type="text/javascript" src="js/jquery.min.js"></script>  
<script type="text/javascript" src="js/news.js"></script> 
<?php
  //require '../../view/footer.view.php';  
?>