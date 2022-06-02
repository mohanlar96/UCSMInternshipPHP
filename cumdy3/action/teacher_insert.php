<?php 

require 'db_connection.php';

	$no=$_POST["Sr_No"];
	$name= $_POST["Teacher_Name"];
	$tid=$_POST["Teacher_ID"];
	$position=$_POST["Position"];
	$depname=$_POST["Department_Name"];
	$depid=$_POST["Department_ID"];
	$salary=$_POST["Salary"];
	$quali=$_POST["Qualification"];
	$dob= $_POST["DOB"];
	$nation=$_POST["Nationality"];
	$reli=$_POST["Religion"];
	$birth=$_POST["Birthplace"];
	$nrc=$_POST["NRC"];
	$fname=$_POST["Father_Name"];
	$fjob=$_POST["Father_Job"];
	$marr=$_POST["Marrital_Status"];
	$password=$_POST["Password"];
	$user=$_POST["User_Level"];
	$job=$_POST["St_D_Job"];
	$pos=$_POST["St_D_Pos"];
	$uni=$_POST["St_D_Uni"];
	$cont=$_POST["Contract"];
	$exp=$_POST["Foreign_Exp"];
	$action=$_POST["Dep_Action"];
	$train=$_POST["Job_Training"];
	$past=$_POST["Past_Posting"];
	$per=$_POST["Per_Address"];
	$email=$_POST["Email_Address"];
var_dump($_POST);
$db->query("insert into teacher,department,teacher_details
	(Sr_No,Teacher_Name,Teacher_ID,Position,Department_Name,Department_ID,Salary,Qualification,DOB,Nationality,Religion,Birthplace,NRC,Father_Name,Father_Job,Marrital_Status,Password,User_Level,St_D_Job,St_D_Pos,St_D_Uni,Contract,Foreign_Exp,Dep_Action,Job_Training,Per_Address,Email_Address) values('$no','$name','$postion','$depname','$salary','$quali','$dob','$nation','$reli','$birth','$nrc','$fname','fjob','$marr','$job','$pos','$uni','$cont','$exp','$action','$train','$past','$per','$email') ");



?>