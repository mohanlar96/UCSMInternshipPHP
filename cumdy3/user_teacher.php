<?php
require 'session_user.php';



$active_nav_university="id='active-nav'";

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';



$db_data=$db->query("SELECT Department_ID,Department_Name FROM department");


$select_Department="";
foreach ($db_data as $key => $value) {

	$id=$value['Department_ID'];
		$name=$value['Department_Name'];


$select_Department.= "<option value='$id'> $name  </option> ";
}


$db_data=$db->query("select distinct Position from teacher");


$select_Position="";
foreach ($db_data as $key => $value) {

	$position=$value['Position'];
		


$select_Position.= "<option value='$position'> $position  </option> ";
}



$searchData="";
 $db_data=$db->query("select Teacher_Name,Teacher_ID from teacher ");
        foreach ($db_data as $key => $value) {
        	$name=$value['Teacher_Name'];
        	$id=$value['Teacher_ID'];
        
        $searchData.=" <a href='teacher_infoDisplay.php?id=$id&name=$name'>$name</a> <br> ";
      }
if($_POST['Search']=="Search"){

var_dump($_POST);




}






require "view/user_teacher_info.view.php";
?>