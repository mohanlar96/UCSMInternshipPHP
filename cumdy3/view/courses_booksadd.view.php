<?php

// if session is login then  we will  use login/user/header.view.php

  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/courses.css">
 <div class="container-fluid">
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
            <form class="form" action="courses_booksadd.php" method="POST"">
            <div class="form-group">
    <label>Serial_No:</label>
    <input type="text" class="form-control" id="serial no" name="Serial_No" placeholder="Enter Serial No" >
  </div>
  <div class="form-group">
    <label>Subject Code:</label>
    <input type="text" class="form-control" id="sub_code" name="Subject_Code" placeholder="Enter Subject Code" >
  </div>
  <div class="form-group">
    <label>Subject Name:</label>
    <input type="text" class="form-control" id="name" name="SubName" placeholder="Enter Subject Name" >
  </div>
  <div class="form-group">
    <label>Book Name:</label>
    <input type="text" class="form-control" id="author" name="BookName" placeholder="Enter BookName Name">
  </div>
   <div class="form-group">
    <label>Author:</label>
    <input type="text" class="form-control" id="author" name="AuthorName" placeholder="Enter Author Name" >
  </div>
  <div class="form-group">
    <label>Publisher:</label>
    <input type="text" class="form-control" id="publisher" name="Publisher" placeholder="Enter Publishser Name" >
  </div>
  <div class="form-group">
    <label>Publication Date:</label>
    <input type="text" class="form-control" id="publicationDate" name="PublicationDate" placeholder="Enter Publication Date" >
  </div>
  <div class="form-group">
    <label>Edition:</label>
    <input type="text" class="form-control" id="edition" name="Edition" placeholder="Enter Edition" >
  </div>

<div class="form-group">
    <label>Term:</label>
    <input type="text" class="form-control" id="Term_ID" name="Term_ID" placeholder="Enter Term" >
  </div>

  <div class="form-group">
    <label>Major:</label>
    <input type="text" class="form-control" id="Major_ID" name="Major_ID" placeholder="Enter Major" >
  </div>

  <div class="form-group">
    <label>Department:</label>
    <input type="text" class="form-control" id="Department_ID" name="Department_ID" placeholder="Enter Department" >
  </div>

  <div class="form-group">
    <label>Profile:</label>
    <input type="text" class="form-control" id="Profile" name="Profile" placeholder="Enter Profile" >
  </div>

  <div class="form-group">
    <label>Price:</label>
    <input type="text" class="form-control" id="price" name="Price" placeholder="Enter Price" >
  </div>
  
  <div class="form-group" id="btn">
   <button type="submit" class="btn btn-primary" name="submit">Submit</button>
  <button type="reset" class="btn btn-primary">Clear</button>
 </div>
</form>

  </div>
  </div>
</div>
 <script type="text/javascript" src="js/home.js"></script> 
<?php
 // require '../../footer.view.php'; 
?>