<?php
require 'session_public.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";
$active_nav_information="id='active-nav' ";

$year=$_GET["year"];  
echo"$year";


$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "user_event_cal2.php" id = "linkStyle">Activity Calendar</a>'; 
require "view/user_event_cal2.view.php";
?>