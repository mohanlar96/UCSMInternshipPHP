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
         <li><a href="user_courses_opportunities.php?isLogin=true">Opportunities</li></a>             
         <li><a href="user_courses_lecture.php?isLogin=true">Lecture Plan</li></a>
       </ul>
    </div>

<!--left end-->
<!--mid-->
    <div class= "col-md-10 main-nav">

      <div class="panel">
        
        <img src="img/courses/book.jpg"  class="image-responsive" width="100%" height="200px" >
      </div>

      <div class="col-md-offset-4 col-md-4">
     
        <form class="form-horizontal" action="courses_search.php" role="form" method="post">
    <div class="form-group">
      <label for="sel1">Select Year:</label>
      <select name="Year_ID" class="form-control" id="sel1">
       <?=$displaySelect ?>
      </select>
    </div>
    <div class="form-group">
      <label for="sel1">Select Major:</label>
      <select name="Major_ID" class="form-control"  id="sel1">

        <?=$displaySelectMajor?>
      </select>
    </div>
    <div class="form-group">
       <a href="user_courses_search.php"><button type="submit" name="search" class="btn btn-default">Search</button></a>
    </div>
  </form>
  </div>
  </div>

   


  

  
  </div>
</div>
          
   
<!--mid end-->
<!--right-->
   
  <!--right end-->
  
    










