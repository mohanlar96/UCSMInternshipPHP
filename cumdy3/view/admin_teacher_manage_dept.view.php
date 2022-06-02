<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/teacher_info.css">
<div class="container-fluid">
<div class="row ">
	<div class="col-sm-2 col-xs-12">
	
		<ul class="catSub">
        <li><a href="admin_teacher_detail_all.php">Manage Teachers</a></li>
         <li><a href="admin_teacher.php">Teacher Details</a></li>
         
       </ul>
	</div>

	<div class="col-sm-10 col-xs-12" >
	
		<table class="table table-responsive table-hover" >
			<tr><th>Sr_No</th><th>Teacher_Name </th><th>Teacher_ID</th> 
				<th>Position </th> <th>Department_Name </th><th>Department_ID</th>
				<th>Salary </th><th>Qualification </th>
				<th>DOB </th> <th>Nationality </th>
				<th>Religion </th><th>Birthplace</th>
				<th>NRC </th><th>Father_Name</th>
				<th>Father_Job </th><th>Marrital_Status </th><th>Password </th><th>User_Level</th>
				<th>St_D_Job </th><th>St_D_Pos </th>
				<th>St_D_Uni </th><th>Contract</th>
				<th>Foreign_Exp</th><th>Dep_Action </th>
				<th>Job_Training </th><th>Past_Posting</th>
				<th>Per_Address</th><th>Email_Address</th>
				<th> </th>
				<th> </th> 
				
				</tr>
			<?=$table_data?>
			</table>
			
			</div>

			
			<div class="col-sm-3 col-xs-9 ">
       		 <ul class="nav  navbar-right">
             <li><a href="Addteacher.php" class="btn btn-info">Add New Teacher</a></li> 
               
		

		
</ul>
  
    
	</div>
</div>
</div>


 <script type="text/javascript" src="js/jquery.min.js"></script>  
 <script type="text/javascript" src="js/admin_teacher.js"></script> 
<?php
 // require '../../view/footer.view.php'; //
?>