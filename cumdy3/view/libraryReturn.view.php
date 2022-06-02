<?php
require 'header.view.php';
?>


<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Library > Record Return Book</h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Library Admin
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="libraryRentPage.php">Record Student Rent Books</a></li>
                <li><a href="libraryTeacherRe.php">Record Teacher Rent Books</a></li>
                <li><a href="libraryReturn.php">Record  Student Return Books</a></li>
                <li><a href="libraryTeacherRet.php">Record  Teacher Return Books</a></li>
                <li><a href="libraryTeacherDebtorList.php">View Teacher Debtor List</a></li>
                <li><a href="libraryDebtorList.php">View Student Debtor List</a></li>
                <li><a href="libraryAddNew.php">Record Add New Books</a></li>
                <li><a href="libraryRentView.php">View List of Rent </a></li>
                <li><a href="libraryviewbook.php">View All Books</a></li>
                <li><a href="libraryDeleteBooks.php">Delete Books</a></li>
             </ul>
      </div>
<div class="row">
     
        <form class="form-horizontal" role="form" method="post" action="libraryReturn.php">
    <div class="form-group">
      <label class="control-label col-sm-2"  for="book_id">Book ID</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="book_id" id="book_id" placeholder="Enter Book ID ">
      </div>
    </div>
  <div class="form-group">
      <label class="control-label col-sm-2" for="uid">Student ID:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="mid" id="uid" placeholder="Enter Member ID">
      </div>
    </div>
      
  <div class="form-group">
      <label class="control-label col-sm-2" for="return">Return Date:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="return_date" id="return" placeholder="Enter Return Date" class="Date">
      </div>
    </div>
       
<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-4" align="center">
        <button type="submit" name="submit" value="Return" class="btn btn-success btn-lg">Return</button>
      </div>
      </form>
         <form action="libraryAdminPage.php" method="post">
      <div class=" col-sm-2" align="center">
        <button type="submit" name="submit" value="Back" class="btn btn-success btn-lg">Back</button>
      </div>
    </div>
  </form>
</div>

   <div class="row">
      <div class="col-sm-offset-4">
          <img src="images/main.jpg" width="480px" height="300px">
      </div>
    </div>

    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>



