<?php
require 'session_admin.php';
$active_nav_university="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';

$dept_id=$db->get("teacher","Teacher_ID='$userId' ")[0]['Department_ID'];

// var_dump($dept_id);

$data=$db->query("select * from teacher join teacher_details join department 
	where teacher.Teacher_ID=teacher_details.Teacher_ID 
	and department.Department_ID=Teacher.Department_ID 
	and teacher.Department_ID='$dept_id' ");




// var_dump($data);


$table_data="";
foreach ($data as $key => $value) {
	
	$no=$value["Sr_No"];
	$name= $value["Teacher_Name"];
	$tid=$value["Teacher_ID"];
	$position=$value["Position"];
	$depname=$value["Department_Name"];
	$depid=$value["Department_ID"];
	$salary=$value["Salary"];
	$quali=$value["Qualification"];
	$dob= $value["DOB"];
	$nation=$value["Nationality"];
	$reli=$value["Religion"];
	$birth=$value["Birthplace"];
	$nrc=$value["NRC"];
	$fname=$value["Father_Name"];
	$fjob=$value["Father_Job"];
	$marr=$value["Marrital_Status"];
	$password=$value["Password"];
	$user=$value["User_Level"];
	$job=$value["St_D_Job"];
	$pos=$value["St_D_Pos"];
	$uni=$value["St_D_Uni"];
	$cont=$value["Contract"];
	$exp=$value["Foreign_Exp"];
	$action=$value["Dep_Action"];
	$train=$value["Job_Training"];
	$past=$value["Past_Posting"];
	$per=$value["Per_Address"];
	$email=$value["Email_Address"];
	



	$edit="<button class='btn btn-info' data-srno='$no' data-action='Edit' >Edit</button>";
	$del="<button class='btn btn-info' data-srno='$no' data-action='Delete' >Delete</button>";
	$table_data.="<tr class='active' >
					<td>$no</td>
					<td>$name </td> 
					<td>$tid </td>
					<td>$position </td>
					<td>$depname</td>
					<td>$depid</td>
					<td>$salary</td>
					<td>$quali</td>
					<td>$dob </td> 
					<td>$nation</td>
					<td>$reli</td>
					<td>$birth</td>
					<td>$nrc</td>
					<td>$fname</td>
					<td>$fjob</td>
					<td>$marr</td>
					<td>$password</td>
					<td>$user</td>
					<td>$job</td>
					<td>$pos</td>
					<td>$uni</td>
					<td>$cont</td>
					<td>$exp</td>
					<td>$action</td>
					<td>$train</td>
					<td>$past</td>
					<td>$per</td>
					<td>$email</td>
					<td> $edit</td> 
					<td> $del </td> </tr>";

	}
	$table_data.="</table>";
require "view/admin_teacher_manage_dept.view.php";
?>