<?php
  require 'header.view.php'; 
?>
<style>
div#body{
  font-family: "Myanmar3";

}
</style>
<div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Registration</h3>
  		
      	<div class="row">	
			<div class="col-md-12" style="overflow-x:scroll;">	
				<table class="table table-responsive table-hover">
					<tr>	<th>Student_ID</th>
						<th > Name_Myan </th> 
						<th> Name_Eng</th>
						<th>Date_Of_Birth</th>
						<th> NRC</th>
						<th>MarticulationRoll_No</th>
						<th>MarticulationYear</th>
						<th> FatherName_Myan </th> 
						<th>FatherName_Eng</th>
						<th>FatherDate_Of_Birth</th>
						<th> FatherNRC</th>
						<th> MotherName_Myan </th> 
						<th> MotherName_Eng</th>
						<th>MotherDate_Of_Birth</th>
						<th> MotherNRC</th>
					</tr>
						<?=$displayTable?>	
						
				</table>



			</div>	

		</div>

    </div>

  	</div>
</div>
<script type="text/javascript" src="js/register.js"></script>

<?php
require 'view/footer.view.php';
?>


