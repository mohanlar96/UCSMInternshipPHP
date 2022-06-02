<?php
require 'header.view.php';
?>


<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Library > Book view </h3>
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
       <?php
echo "<table class='table table_hover table-responsive'><tr class='danger'><th><font size=5>Rent Id</th><th><font size=5>Teacher ID</th><th><font size=5>Member ID</th><th><font size=5>Book ID</th><th><font size=5>Rent Date</th><th><font size=5>Return Date</th><th><font size=5>Fine</th></tr>$table_output";
?>
</div>
	<div class="row">
		<form action="libraryAdminPage.php" method="post">
<input type="submit" name="submit"  value ="Back" class="btn btn-primary">
</form>
	</div>

    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>





























