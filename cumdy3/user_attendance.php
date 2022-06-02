<?php

    
require 'session_user.php';


$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">USER</a> <span class = "animate">  > </span>
<a herf = "index.php" id = "linkStyle">Attandance Information</a>';


$data=$db->get("attendance","Student_ID='$userId'");

$displayTable="";
$months=array("NULL","Jaunuary","February","March","April","May","June","July","August","September","October",
"November","December");
foreach($data as $key=>$value){
	$monthCode=$value["Month"];
	$disMonth=$months[$monthCode];
	$code=$value["Code"];
	$Id=$value["Student_ID"];
	$name=$value["Name"];
	$time=$value["Attendance_Times"];
	$AP=$value["Attendance_Percentage"];
	$remark=$value["Remark"];
	$displayTable.="<tr> <td>$disMonth </td><td> $code</td> <td>$Id </td> <td>$name </td> <td>$time </td> <td>$AP</td>
<td>$remark</td> </tr>";
}
var_dump($data);

require "view/user_attended.view.php";
?>
