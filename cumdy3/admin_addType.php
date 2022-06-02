<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
//$active_nav_home="";
//$active_nav_Activity="";
//$active_nav_about="id='active-nav'";
//$active_nav_signup="";
//$active_nav_login="";

if(isset($_GET['submit'])){
	$number=$_GET["Number"];
	$start_date=$_GET["Start_Date"];
	$end_date=$_GET["End_Date"];
	$contents=$_GET["Contents"];

	var_dump($_GET);
	$db->query("insert into activity_calendar(Number,Start_Date,End_Date,Contents) values('$number','$start_date','$end_date','$contents') ");

}

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_addType.php" id = "linkStyle">Activity Type</a>'; 


require "view/admin_addType.view.php";
?>