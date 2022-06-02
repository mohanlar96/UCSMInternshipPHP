<?php
require 'view/header.view.php';
?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Managin Admin Books </h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Admin Manage Book
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

      <div class="col-md-3">

        <div class="thumbnail"><img src="images/bb.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive">
            <p><a href="libraryRentPage.php" class="button"> <h3>Record Rent Books Page</h3></a>
          </div>

        </div>

      <div class="col-md-3">
        <div class="thumbnail"><img src="images/cc.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive" >
            <p><a href="libraryReturn.php"> <h3>Record Return Books Page</h3></a></p>
          </div>

        </div>

      <div class="col-md-3">
        <div class="thumbnail"><img src="images/dd.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive">
          <p><a href="libraryRentView.php"> <h3>Record Rent View Page</h3></a></p>
          </div>

        </div>

        <div class="col-md-3">
        <div class="thumbnail"><img src="images/ee.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive">
                   <p><a href="libraryviewbook.php"> <h3>View All Books List</h3></a></p><br>

        </div>
      </div>
      </div>
  <div class="row">
      <div class="col-md-3">
        <div class="thumbnail"><img src="images/gg.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive">
          <p><a href="libraryTeacherDebtorList.php"> <h3>Record Teacher Debtor List Page</h3></a></p>        
          </div>
        </div>

      <div class="col-md-3">
        <div class="thumbnail"><img src="images/bb.jpg"  alt="Thumbnail Image 1" class="img-rounded img-responsive">
                   <p><a href="libraryDebtorList.php"> <h3>Record Student Debtor List Page</h3></a></p>

          </div>
        </div>
      <div class="col-md-3">
        <div class="thumbnail"><img src="images/aa.jpg" alt="Thumbnail Image 1" class="img-rounded img-responsive">
                   <p><a href="libraryAddNew.php"> <h3>Add New Books List</h3></a></p><br>

        </div>
      </div>
      
    </div>


    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>



