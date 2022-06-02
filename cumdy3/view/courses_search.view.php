<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/courses_subjects.css">

  <div class="container-fluid">
    <div class="row"> 
    <!--left side-->
 
    <div class="col-md-2 main-nav">
      <ul class="catSub">
        <li><a href="user_courses_subjects.php">Subjects</li></a>
         <li><a href="user_courses_bookOrder.php">Book Order</li></a>
         <li><a href="user_courses_opportunities.php">Opportunities</li></a>             
         <li><a href="user_courses_lecture.php">Lecture Plan</li></a>
       </ul>
    </div>

<!--left end-->
<!--mid-->
   <div class="col-md-10 main-nav">
  <table class="table table-responsive" >
   <tr > <th> Subject Code</th> <th>Book Name </th> <th> Year </th> <th> Major </th> <th> Term</th> <th> Department</th> <th> Detail  </th></tr> 
   <?= $displayTable ?>
  </table>
  </div>
</div>
<!--mid end-->
<!--right-->
    
  <!--right end-->
  </div>
</div>    










