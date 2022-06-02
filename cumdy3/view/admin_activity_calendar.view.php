<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
    
 <div class="row">

	   <div class="col-xs-12">
		   <h1> Academic Programme </h1>
	   </div>


    <div class="col-xs-12 col-md-10">
      
        <table class="table table-hover table-responsive">
           <tr> <td> Number </td> <td> Start Date </td> <td> End Date </td> <td> Contents </td>
           <?=$calendarTable?>
        </table>  
     
    </div>
  </div>


    <div class="row">
        <div class="col-md-offset-9 col-md-5">
                  <li><a href="admin_addType.php" class="btn btn-info"> Add a New Type</a></li>

        </div>

    </div>

    <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity.php'">Back</button>
        </div>
                
</div>


     
    	
  
<script type="text/javascript" src="js/jquery.min.js"></script>    
<script type="text/javascript" src="js/calendar.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>