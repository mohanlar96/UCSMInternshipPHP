<?php

// if session is login then  we will  use login/user/header.view.php


  require 'header.view.php'; 
?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Subjects and Books</h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Courses
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                 <li><a href="user_course.php?isLogin=true">Subjects</li></a>
                 <li><a href="user_courses_bookOrder.php?isLogin=true">Book Order</li></a>
                 <li><a href="user_courses_opportunities.php?isLogin=true">Opportunities</li></a>             
                 <li><a href="user_courses_lecture.php?isLogin=true">Lecture Plan</li></a>
             </ul>
      </div>
        <h4><?=$you_are_here?>  </h4>
         <div class="row">
        
      <div class="panel">
        
        <img src="img/courses/book.jpg"  class="image-responsive" width="100%" height="200px" >
      </div>

      <div class="col-md-offset-4 col-md-4">
     
        <form class="form-horizontal" action="user_courses_search.php?isLogin=true" role="form" method="post">
    <div class="form-group">
      <label for="sel1" style="color:white;">Select Year:</label>
      <select name="Year_ID" class="form-control" id="sel1">
       <?=$displaySelect ?>
      </select>
    </div>
    <div class="form-group">
      <label for="sel1" style="color:white;">Select Major:</label>
      <select name="Major_ID" class="form-control"  id="sel1">

        <?=$displaySelectMajor?>
      </select>
    </div>
    <div class="form-group">
       <a href="user_courses_search.php"><button type="submit" name="search" class="btn btn-primary">Search</button></a>
    </div>
  </form>
  </div>
  </div>


    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>












