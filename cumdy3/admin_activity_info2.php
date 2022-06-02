<?php
require 'session_admin.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";
$active_nav_information="id='active-nav'";


$year=$_GET["academicyear"];

$test=$db->query("SELECT Academic_Year_ID from student1 where Academic_Year='$year' ");
foreach ($test as $key => $value) {
  $yearid=$value["Academic_Year_ID"];

}
$sTable=" ";  
$table1="student1";
$table2="participant";
$table3="event";
$table4="type";
  $data= $db->query ( " SELECT * FROM $table1 JOIN $table2 JOIN $table3 JOIN $table4 where $table1.Student_ID=$table2.Student_ID and $table3.Event_ID=$table2.Event_ID and 

$table4.Type_ID=$table3.Type_ID and $table1.Academic_Year_ID='$yearid'");


foreach ($data as $key => $value) {
  	$name= $value["Name_Eng"];
  	$rno= $value["Roll_No"];
    $academicyear=$value["Academic_Year"];
    $typeid=$value["Type_ID"];
  	$typename=$value["Type_Name"];
    $remark=$value["Remark"];
  	$btndel="<button class='btn btn-info' data-typeid='$typeid' data-action='Delete'>Delete</button>";
  	$btnupt="<button class='btn btn-info' data-typeid='$typeid' data-action='Update' >Update </button>";
  	$sTable.="<tr> <td> $name  </td> <td> $rno </td> <td> $academicyear </td> <td> $typeid </td> <td> $typename </td> <td> $remark </td> <td> $btndel </td> <td> $btnupt </td> </tr>  ";
}


$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_activity_info2.php" id = "linkStyle">Student Information</a>'; 


require "view/admin_activity_info2.view.php";
?>