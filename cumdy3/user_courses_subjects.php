<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";


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

//$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_courses_subjects.php" id = "linkStyle">Courses</a>';


require "view/user_courses_subjects.view.php";
?>