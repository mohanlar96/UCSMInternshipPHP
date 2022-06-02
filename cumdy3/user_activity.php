<?php
require 'session_public.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";
$active_nav_information="id='active-nav' ";


$eventTable=" ";
  $data= $db->query ( " select * from type join event where type.Type_ID=event.Type_ID");

  foreach ($data as $key => $value) {
  	$name= $value["Type_Name"];
  	$date=$value["Date"];
  	$type_id=$value["Type_ID"];
  	$event_id=$value["Event_ID"];
 	$detail="<a href='user_activity_detail.php?typeId=$type_id'> Read More </a>  ";
 	$participant="<a href='user_activity_participant.php?eventId=$event_id'> Read More </a>  ";

 	$eventTable.="<tr> <td> $type_id </td> <td> $name  </td> <td> $date </td> <td> $detail </td> <td> $participant </td> ";


  }
  



$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "user_activity.php" id = "linkStyle">Activity</a>';



   

require "view/user_activity.view.php";

?>