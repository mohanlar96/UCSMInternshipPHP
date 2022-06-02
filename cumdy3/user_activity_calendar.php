<?php
require 'session_public.php';
$active_nav_information="id='active-nav' ";
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";

$calendarTable=" ";
  $data= $db->query ( " select * from activity_calendar");

  foreach ($data as $key => $value) {
  	$number= $value["Number"];
  	$start_date=$value["Start_Date"];
  	$end_date=$value["End_Date"];
  	$contents=$value["Contents"];
 	

 	$calendarTable.="<tr> <td> $number </td> <td> $start_date  </td>
 	 <td> $end_date </td> <td> $contents </td> ";


  }




$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "user_activity_calendar.php" id = "linkStyle">Activity</a>'; 


require "view/user_activity_calendar.view.php";
?>