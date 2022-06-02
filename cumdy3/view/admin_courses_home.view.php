<?php
  require 'header.view.php'; 
?>

<link rel="stylesheet" type="text/css" href="css/admin.css">
<div class="container-fluid">
<div class="container-fluid">
    <div class="row"> 
    <div class="col-md-10 col-md-offset-1">
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
        <img src="img/courses/book18.jpg" width="460" height="400">
     </div>

      <div class="item">
        <img src="img/courses/book1.jpg" width="460" height="200">
      </div>
    
      <div class="item">
        <img src="img/courses/book15.jpg" width="460" height="345">
      </div>

      <div class="item">
        <img src="img/courses/book17.jpg" width="460" height="200">
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
    


  
   
<script type="text/javascript" src="js/admin.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>