<?php
require 'session_admin.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";

$active_nav_information="id='active-nav'";

$calendarTable=" ";
  $data= $db->query ( " select * from activity_calendar");

  foreach ($data as $key => $value) {
  	$number= $value["Number"];
  	$start_date=$value["Start_Date"];
  	$end_date=$value["End_Date"];
  	$contents=$value["Contents"];
 	$btndel="<button class='btn btn-info' data-number='$number' data-action='Delete'>Delete</button>";
  	$btnupt="<button class='btn btn-info' data-number='$number' data-action='Update' >Update </button>";

 	$calendarTable.="<tr> <td> $number </td> <td> $start_date  </td> <td> $end_date </td> <td> $contents </td> <td> $btndel </td> <td> $btnupt </td> </tr>";


  }
$btnupt="<button class='btn btn-danger' data-number='$number'  >Save </button>";
$calendarTable.="<tr style='display:none'>  <td> hello  </td> <td>php  </td> <td></td> <td> $btnupt</td> </tr> </table>"; 


$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_activity_type.php" id = "linkStyle">Activity Type</a>'; 

require "view/admin_activity_calendar.view.php";
?>