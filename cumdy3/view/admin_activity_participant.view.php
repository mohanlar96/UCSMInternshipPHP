<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   <div class="row"> 
 <!--left side-->
      <div class="col-xs-12 col-md-10">
        <table class="table table-hover table-responsive">
           <tr> <td> Roll No </td> <td> Name </td> <td> No of Session </td> 
           <td> Date </td> <td> Time </td> </tr>
           <?=$participantTable?>
        </table>  
     
      </div>
  </div>

    <div align="center">
         <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_type.php'">Back</button>
    </div>
</div>









    script type="text/javascript" src="js/activity.js"></script> 
<?php
  //require '../../view/footer.view.php';  
?>