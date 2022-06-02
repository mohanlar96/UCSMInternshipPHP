<?php



  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/courses.css">
<div class="container-fluid">
<div><?php if(isset($message)){echo $message;}?></div>
  <div class="row"> 
    <div class="col-md-2 main-nav">
      <ul class="catSub">
        <li><a href="courses.php">Books</li></a>
         <li><a href="courses_booksadd.php">Books Add</li></a>
         <li><a href="courses_order.php">Order View</li></a>
         <li><a href="courses_lectureplan.php">Lecture Plan</li></a>
        </ul>    
    </div>
    <div class="col-md-10 main">
 
<div class="form-group">
<form method="GET" action="courses_lectureplan.php"> 
     
            
        <div class="form-group">
          <label>Subject Code:</label>
           <input type="text" class="form-control" id="book" name="book" placeholder="Enter subject code">
        </div>
         <div class="form-group">
          <label>Subject Name:</label>
           <input type="text" class="form-control" id="subjectname" name="subjectname"placeholder="Enter period">
        </div> 
        <div class="form-group">
          <label>Book Name:</label>
         <input type="text" class="form-control" id="bname" name="bname" placeholder="Enter name">
        </div>
       <div class="form-group">
         <label>Major:</label>
         <input type="text" class="form-control" id="major" name="major" placeholder="Enter major">
       </div>
       <div class="form-group">
       <label>Term:</label>
       <input type="text" class="form-control" id="term" name="term" placeholder="Enter Term">
        </div>
        <div class="form-group">
          <label>Chapter:</label>
         <input type="text" class="form-control" id="chapter" name="chapter" placeholder="Enter Chapter">
        </div>
        <div class="form-group">
         <label>Page:</label>
         <input type="text" class="form-control" id="page" name="page" placeholder="Enter Page">
        </div>
        <div class="form-group">
           <label>Period:</label>
       <input type="text" class="form-control" id="period" 
         name="period" placeholder="Enter Period">
        </div>
        <div class="form-group">
         <label>Detail Lecture Plan:</label>
          <input type="text" class="form-control" id="detail" name="detail" placeholder="Enter Detail Lecture Plan">
       </div>
        <div class="form-group">
         <label>Reference Book:</label>
          <input type="text" class="form-control" id="refbook" name="refbook" placeholder="Enter Reference Book">
        </div>
         <div class="form-group">
         <input type="submit"  name="submit" class="btn btn-primary" value="Add" >
        </div>

</form>
</div>
</div>
</div>
</div>

<script type="text/javascript" src="js/home.js"></script> 
<?php
 // require '../../footer.view.php'; 
?>


  


  
   
