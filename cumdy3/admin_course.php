<?php
require 'session_admin.php';
//$active_nav_home="";
//$active_nav_register="";
$active_nav_courses="id='active-nav'";
//$active_nav_result="";

//$active_nav_Activity="";
//$active_nav_about
$data=$db->selectStar("year");
$displaySelect="";
foreach ($data as $key => $value) {
	$yId=$value["Year_ID"];
	$year=$value["Year"];
	$displaySelect.="<option value='$yId'> $year </option> ";
}

$data=$db->selectStar("major");
$displaySelectMajor="";
foreach ($data as $key => $value) {
	$mId=$value["Major_ID"];
	$major=$value["Major"];
	$displaySelectMajor.="<option value='$mId'> $major </option> ";
}

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_courses.php" id = "linkStyle">Courses</a>';

require "view/admin_course.view.php";
?>