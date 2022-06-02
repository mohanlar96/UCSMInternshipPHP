<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";


if(isset($_GET['submit'])){


$rollno=$_GET["rollno"];
$name=$_GET["name"];
$fstatus=$_GET["fstatus"];
$mstatus=$_GET["mstatus"];
$income=$_GET["income"];
$sibling=$_GET["sibling"];
$recommended=$_GET["recommended"];
$year=$_GET["year"];


$data=$db->query("insert into sponsorshipapplicant(Roll_NO,Name,Rec_T_name,TotalIncome,Fstatus,Mstatus,NoOfSibling,Acedamic_Year) values('$rollno','$name','$recommended','$income','$fstatus','$mstatus','$sibling','$year')");

}

	require "view/sponsorship.view.php";
?>