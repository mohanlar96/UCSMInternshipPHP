<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/courses.css">
<div class="container-fluid">
<div class="row">
  <div class="col-md-2 main-nav"> 
     <ul class="catSub">
        <li><a href="courses.php">Books(Delete/Update)</a></li>
         <li><a href="courses_booksadd.php">Books Add</li></a>
         <li><a href="courses_order.php">Order View</li></a>
         <li><a href="courses_lectureplan.php">Add lecture Plan</li></a>
         
         
       
       </ul>    
  </div>
  <div class="col-md-10">
    <table class="table table-responsive" > 
   <?= $displayTable ?>
  </table>
  </div>
  

</div> 
   


  
   
<script type="text/javascript" src="js/courses.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>