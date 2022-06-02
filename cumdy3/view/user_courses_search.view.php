<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Courses > Search Courses</h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Courses 
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                 <li><a href="user_courses_subjects.php?isLogin=true">Subjects</li></a>
                 <li><a href="user_courses_bookOrder.php?isLogin=true">Book Order</li></a>
                 <li><a href="user_courses_opportunities.php?isLogin=true">Opportunities</li></a>             
                 <li><a href="user_courses_lecture.php?isLogin=true">Lecture Plan</li></a>        
             </ul>
      </div>
    <h4> <?=$you_are_here?>  </h4>
    <table class="table table-responsive" >
   <tr > <th> Subject Code</th> <th>Book Name </th> <th> Year </th> <th> Major </th> <th> Term</th> <th> Department</th> <th> Detail  </th></tr> 
   <?= $displayTable ?>
  </table>

    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>








