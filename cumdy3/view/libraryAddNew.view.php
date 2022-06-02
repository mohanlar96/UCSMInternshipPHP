<?php
require 'header.view.php';
?>


<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Library > Record New Book </h3>
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
          <form class="form-horizontal" role="form" method="post" action="libraryAddNew.php">
    <div class="form-group">
      <label class="control-label col-sm-2"  for="book_id">Book ID</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="book_id" id="book_id" placeholder="Enter Book ID " required="Book ID">
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="book_Name">Book Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="bname" id="book_Name" placeholder="Enter Book Name" required="Book Name">
      </div>
    </div>
       <div class="form-group">
      <label class="control-label col-sm-2" for="edition"> Edition:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="edi" id="edition" placeholder="Enter  Edition">
      </div>
      </div>
      
    <div class="form-group">
      <label class="control-label col-sm-2" for="year"> Published Year:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="year" id="year" placeholder="Enter  Published Year">
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="donor"> Donor:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="donor" id="donor" placeholder="Enter  Donor">
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="author_name">Author Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" name="aname" id="author_name" placeholder="Enter Author Name">
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="cid"> Category ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="cid" id="cid" placeholder="Enter  Category ID" required="Category ID">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="link"> Link :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="link" id="link" placeholder="Enter  Link">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-5 col-sm-1" align="center">
        <button type="submit" name="submit" value="ADD" class="btn btn-primary ">ADD</button>
      </div>
  </form>
  <form action="libraryAdminPage.php" method="post">
      <div class=" col-sm-2" align="center">
        <button type="submit" name="submit" value="Back" class="btn btn-primary ">Back</button>
      </div>
      </form>
    </div>
    <div class="row">
      
    </div>

    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>








































