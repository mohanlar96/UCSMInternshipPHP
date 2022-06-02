<?php
  require 'header.view.php'; 

   // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/result.css">
 

 <!-- <link rel="stylesheet" type="text/css" href="css/result.css"> -->
<div class="container-fixed">
   <div class="row"> 
    <div class="col-md-offset-4 col-md-4 col-xs-12">
  

  
<?=$data?>
   <table class='table table-responsive table-hover' ><tr> <th>SUBJECT</th><th>MARK OBTAINED</th></tr>
   <?=$markForm?>

   </table>
   
    <ul class="pager">
    <!-- <li><a href="#" onclick="window.history.go(-1)">Previous</a></li> -->
    <li><a href="user_result_testmark.php" >Cancel</a></li>
  </ul>              
    </div>
    </div>
    </div>








    <script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>   
<script type="text/javascript" src="js/user_result.js"></script> 
