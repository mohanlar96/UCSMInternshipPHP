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
    <div class="col-md-10 main">
     
      <div class="container">
        <div class="row">
           <h1 style="color:white;"><?=$bookName?></h1>
          <div class="col-md-5 main">
           
       <img src="<?=$photo?>">
       
          </div>
        <div class="col-md-5 main">
          <br>
       <table>
        <tr>
        <td><h3 style="color:white;"> Subject Name:</h3></td>
        <td><h3 style="color:white;"><?=$subName?></h3></td>
        </tr>
       <tr>
       <td><h3 style="color:white;"> Author Name:</h3></td>
       <td><h3 style="color:white;"><?=$author?></h3></td>
       </tr>
       <tr>
       <td><h3 style="color:white;"> Publisher:</h3></td>
       <td><h3 style="color:white;"><?=$Publisher?></h3></td>
       </tr>
       <tr>
       <td><h3 style="color:white;"> Publication Date:</h3></td>
       <td><h3 style="color:white;"><?=$PublicationDate?></h3></td></tr>
       <tr>
       <td><h3 style="color:white;"> Edition:</h3></td>
       <td><h3 style="color:white;"><?=$Edition?></h3></td>
       </tr>
       </table>
       <table class"table-responsive">
       <tr>
       <td><h3 style="color:white;">Related Courses:</h3></td>
       </tr>
       <tr>
       <td> <h4 style="color:white;"><?=$displayRelateName?></h4></td>
       </tr>
        </table>
       <a href="user_courses_search.php"><button class="btn btn-primary">Back</button></a>

       </div>
    
       
         </div>
        </div>
    </div>
  
<!--mid end-->
<!--right-->
    
  <!--right end-->
  </div>
</div>    

<?php
  require '../../view/footer.view.php'; 
?>








