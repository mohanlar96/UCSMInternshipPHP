<?php require 'header.view.php';
 ?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Search Lecture Plan</h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">JavaScript</a></li>
             </ul>
      </div>
    <h4> <?=$you_are_here?>  </h4>
      <div class="row" > 
    
    
    
  
    <div class="col-md-12">
     
   <br>
    <form class="form-horizontal" action="courses_lecture.php" method="GET">
    <div class="form-group">
   
    <div class="col-sm-2">
    <input list="searchlist" type="text" class="form-control" name="subcode" id="subcode" Placeholder="Enter subject Code">
    </div>
    <div class="col-sm-2">
     <input list="searchlist" type="text" class="form-control" name="bname" id="name" Placeholder="Enter Book Name">
    </div>
    <div class="col-sm-3">
    <select class="form-control" id="major" name="major" >
      <option value="CS">CS</option>
      <option value="CT">CT</option>
      <option value="CST">CST</option>
    </select>
    </div>
    <div class="col-sm-3">
    <select class="form-control" id="term" name="term" >
      <option value="First Term">First Term</option>
      <option value="Second Term">Second Term</option>
    </select>
    </div>
    <div class="col-sm-2">
     <input type="submit" name="submit" value="View" class="btn btn-primary">
    </div>
    </div>
    </form>

    <?php if(isset($tableoutput)){echo $tableoutput;} 
    ?>

        </div>
  
    

    
</div>  


    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>
   
  


























    
</div>    