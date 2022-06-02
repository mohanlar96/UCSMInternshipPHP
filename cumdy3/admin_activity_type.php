<?php
require 'session_admin.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";
$active_nav_information="id='active-nav'";

$eventTable=" ";
  $data= $db->query ( " select * from type join event where type.Type_ID=event.Type_ID");

  foreach ($data as $key => $value) {
  	$typeid=$value["Type_ID"];
  	$name= $value["Type_Name"];
  	$date=$value["Date"];
  	$type_id=$value["Type_ID"];
  	$event_id=$value["Event_ID"];
  	$time=$value["Time"];
  	$photo=$value["Photo"];
  	$title=$value["Title"];

 	$detail="<a href='admin_activity_detail.php?typeId=$type_id'> Read More </a>  ";
 	$participant="<a href='admin_activity_participant.php?eventId=$event_id'> Read More </a>  ";
 	$btndel="<button class='btn btn-info' data-typeid='$type_id' data-action='Delete'>Delete</button>";
  $btnupt="<button class='btn btn-info' data-typeid='$type_id' data-action='Update' >Update </button>";
 	$eventTable.="<tr> <td> $typeid </td> <td> $name  </td> <td> $date </td> <td> $time </td> <td> $photo </td> <td> $title </td>  <td> $detail </td> <td> $participant </td> <td> $btndel </td> <td> $btnupt </td> </tr>";
	}

$btnupt="<button class='btn btn-danger' data-typeid='$type_id'  >Save </button>";


$eventTable.="<tr style='display:none'>  <td> hello  </td> <td>php  </td> <td></td> <td> $btnupt</td> </tr> </table>"; 
  


$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_activity_type.php" id = "linkStyle">Activity Type</a>'; 


require "view/admin_activity_type.view.php";
?>