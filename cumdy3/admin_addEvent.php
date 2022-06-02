<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
//$active_nav_home="";
//$active_nav_Activity="";
//$active_nav_about="id='active-nav'";
//$active_nav_signup="";
//$active_nav_login="";

if(isset($_GET['submit'])){
	$typeid=$_GET["Type_ID"];
	$typename=$_GET["Type_Name"];
	$date=$_GET["Date"];
	$time=$_GET["Time"];
	$photo=$_GET["Photo"];
	$title=$_GET["Title"];
	$detail=$_GET["Detail"];
	var_dump($_GET);
	$db->query("insert into Type(Type_ID,Type_Name,Date) values('$typeid','$typename','$date') ");
	$db->query("insert into Event(Time,Photo,Title,Detail) values ('$time','$photo','$title','$detail') ");




}
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_addEvent.php" id = "linkStyle">Academic Calendar</a>'; 



require "view/admin_addEvent.view.php";
?>