<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>
<link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   <div class="row"> 
 <!--left side-->
 
    <div class="col-md-2 main-nav">
      <ul class="catSub">
       <li><a href="admin_activity_type.php">Activity Type</li></a>                    
        <li><a href="admin_activity_calendar.php">Academic Calandar</li></a>  
        <li><a href="admin_activity_info.php">Student Information</li></a>            
           
       </ul>
    </div>

<!--left end-->

<!--mid-->
    <div class="col-md-7 ">
    <!--header-->
        <h2 class="display-3">Welcome to My Activity Admin Page!</h2>
    </div>


    
    <div class="col-md-10 main">
         <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="img/news/cu1.jpg" alt="Water Festival " width="460" height="345">
        <div class="carousel-caption">
          <h3>Water Festival  </h3>
          <p>Welcome To Computer University (CUMDY) Site</p>
        </div>
      </div>

      <div class="item">
        <img src="img/news/cu2.jpg" alt="Football" width="460" height="345">
        <div class="carousel-caption">
          <h3>Football</h3>
          <p>Welcome To Computer University (CUMDY) Site</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/news/cu3.jpg" alt="Fresher Welcome" width="460" height="345">
        <div class="carousel-caption">
          <h3>Fresher Welcome</h3>
          <p>Welcome To Computer University (CUMDY) Site</p>
        </div>
      </div>

      <div class="item">
        <img src="img/news/cu4.jpg" alt="Warso Pwae" width="460" height="345">
        <div class="carousel-caption">
          <h3>Warso Pwae</h3>
          <p>Welcome To Computer University (CUMDY) Site</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</div>
  

   
<script type="text/javascript" src="js/Activity.js"></script> 
<?php
  //require '../../view/footer.view.php';  
?>