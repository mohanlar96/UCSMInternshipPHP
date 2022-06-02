<?php
require 'view/header.view.php';
?>


<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Exam Result </h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">See Result
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="user_result_testgrade.php">Grade Searching </a></li>
                <li><a href="user_result_testpasslist.php">Result Searching</a></li>
                <li><a href="user_result_testmark.php">Mark Certificate</a></li>
             </ul>
      </div>
      <div class="row">
        <img class="thumbinal img img-responsive" src="img/result/finalwelcome.jpg">
    
       
      </div>


    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>