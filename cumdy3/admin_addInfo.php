<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
//$active_nav_home="";
//$active_nav_Activity="";
//$active_nav_about="id='active-nav'";
//$active_nav_signup="";
//$active_nav_login="";

if(isset($_GET['submit'])){
  $roll_no=$_GET["Roll_No"];
  $name=$_GET["Name_Eng"];
  $academic_year=$_GET["Academic_Year"];
  $type_id=$_GET["Type_ID"];
  $type_name=$_GET["Type_Name"];
  $date=$_GET["Date"];
  $remark=$_GET["Remark"];

  var_dump($_GET);
  $db->query("insert into student1(Roll_No,Name_Eng,Academic_Year) values('$roll_no','$name','$academic_year') ");
  // $db->query("insert into studentdetail (Name_Eng) values ('$name') ");
  // $db->query("insert into academic_year (Academic_Year) values ('$academic_year') ");
  $db->query("insert into type(Type_ID,Type_Name,Date,Remark) values('$type_id','$type_name','$date','$remark') ");

}

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_addInfo.php" id = "linkStyle">Student Information</a>'; 


require "view/admin_addInfo.view.php";
?>