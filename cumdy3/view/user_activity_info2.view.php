<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php
?>
<div clss="container-fluid">
<div class="row">
<div class="col-xs-12 col-md-10 ">
    <h1> Student Information </h1>
      
      <table class="table table-hover table-responsive">
           <tr>  <td> Name </td> <td> Roll No </td> <td> Academic Year </td>  <td> Type Name</td> <td> Remark </td> </tr> 
      <?=$sTable?>
      </table>	
</div>
</div>


		<div align="center">
      <button type="button" class="btn btn-primary" onclick="window.location='user_activity_info.php'">Back</button>
    </div>
</div>

<script type="text/javascript" src="js/news.js"></script> 
<?php
  //require 'footer.view.php'; 
?>