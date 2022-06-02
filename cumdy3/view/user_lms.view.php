<?php
  require 'header.view.php';                                        
?>
 <link rel="stylesheet" type="text/css" href="css/lms_user.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">
<div class="container-fluid">


<div class="row">
  <div class="col-sm-offset-1 col-sm-10 col-xs-12">
  <div class="alert alert-success" style="margin-top:20px;">
      <?=$bar?>
    </div>
    <table class="table table-responsive" >
    <tr> <th> TeacherName </th>  <th>Subject</th></tr> 
      <?=$showTable ?>
    </table>
  </div>
</div>
</div>
   
<script type="text/javascript" src="js/lms.js"></script> 
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<?php
 require 'footer.view.php'; 
?>