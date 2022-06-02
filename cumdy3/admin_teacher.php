<?php 
require 'session_admin.php';	
$active_nav_university="id='active-nav'";



$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';

$db_data =$db->query("select distinct User_Level from teacher_details");
$select_User="";
foreach($db_data as $key =>$value){
	$type=$value['User_Level'];
	$select_User.="<option value='$type'>$type</option>";
}

$data=$db->query("select * from teacher join teacher_details join department where
 teacher_details.Teacher_ID=teacher.Teacher_ID and department.Department_ID=teacher.Department_ID and teacher.Teacher_ID='$userId'")[0];
var_dump($data);
require "view/admin_teacher_info.view.php";
?>