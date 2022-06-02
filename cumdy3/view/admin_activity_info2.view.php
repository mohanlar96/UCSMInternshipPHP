<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php
?>
<div class="row">
<div class="col-xs-12 col-md-10 ">
    <h1> Student Information </h1>
      
      <table class="table table-hover table-responsive">
           <tr> <td> Name </td> <td> Roll No </td> <td> Academic Year </td> <td> typeid </td><td> Type Name</td>  <td> Remark </td> </tr> 
      <?=$sTable?>
      </table>	
</div>
</div>

 <div class="row">
        <div class="col-md-offset-9 col-md-5">
                  <li><a href="admin_addInfo.php" class="btn btn-info"> Add Student Information</a></li>

        </div>

 </div>
      <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_info.php'">Back</button>
        </div>
 </div> 
              



<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/info.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>