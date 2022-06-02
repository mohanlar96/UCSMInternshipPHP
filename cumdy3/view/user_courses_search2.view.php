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
        
         <li><a href="user_courses_subjects.php?isLogin=true">Subjects</li></a>
         <li><a href="user_courses_bookOrder.php?isLogin=true">Book Order</li></a>
         <li><a href="usercourses_opportunities.php?isLogin=true">Opportunities</li></a>             
         <li><a href="user_courses_lecture.php?isLogin=true">Lecture Plan</li></a>
       
       </ul>
    </div>

<!--left end-->
<!--mid-->
   <div class="col-md-10 main-nav">
   <table class="table table-responsive">
   <tr>  <th> Subject Code</th><th>Book Name </th> <th> Year </th> <th> Major </th> <th> Term</th> <th>Price</th> <th> Detail  </th><th> Ordering </th>  </tr> 
   <?= $displayTable ?>
  </table>
  <!--<form method="post">
  <button class="btn btn-primary" name="total">Total</button>
  </form>-->



  
  </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
 <script type="text/javascript" src="js/courses_bookOrder.js"></script>
 <?php
  require '../../view/footer.view.php'; 
?>







