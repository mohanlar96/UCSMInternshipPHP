<?php
require 'header.view.php';
?>

<div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Book Details</h3>


  				 <form action="librarysearch.php" method="post">

				<div class="row">

						<datalist id="searchList">
						  <option>Java</option>
						  <option>HUMAN-COMPUTER INTERACTION</option>
						</datalist>

						<div class="col-md-10 col-sm-4">
							<input list="searchList" type="text" id="search" class="form-control" name="search">
						</div>

						<div class='col-md-1 col-sm-8'>
							<input type='submit' name='submit' value='Search'  id='search' class='btn btn-primary btn-md'>
						</div>

						<div class='col-md-1 col-sm-8'>
							<input type='button' value='Back' class='btn btn-primary btn-md' 
							onclick="(function(){window.history.back(); })();">
						</div>
				</div>
				</form>

				<?php
				echo "<table class='table table_hover table-responsive'>$table_output";

				?>


  	

    </div>

  	</div>
</div>
<script type="text/javascript" src="js/library.js"></script> 
<?php
require 'view/footer.view.php';
?>
