<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/user.css">
<div class="container-fluid">
    <div class="row"> 
    
    
    <div class="col-md-12 ">

   
      <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
       <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
   <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="img/courses/10.jpg" >
     </div>

      <div class="item">
        <img src="img/courses/17.jpg" >
      </div>
    
      <div class="item">
        <img src="img/courses/28.jpg" >
      </div>

      <div class="item">
        <img src="img/courses/26.jpg" >
      </div>
      <div class="item">
        <img src="img/courses/31.jpg" >
      </div>
       <div class="item">
        <img src="img/courses/37.jpg" >
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
 </div>
</div>
<script type="text/javascript" src="js/user.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>