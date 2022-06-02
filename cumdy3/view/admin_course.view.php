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
  <br>
  <div class="col-md-offset-3 col-md-4 main">
  <form class="form-horizontal" action="courses_list.php" role="form" method="post">
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
      <a href="courses_list.php"></a><button type="submit" name="search" class="btn btn-default">Search</button>
    </div>
  </form>
  </div>
  

</div> 
   


  
   
<script type="text/javascript" src="js/courses.js"></script> 
