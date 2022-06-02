<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_library="id='active-nav'";
$active_nav_signup="";
$active_nav_login="";
$active_nav_about="";



if(!isset($_POST['submit']))
{

}

elseif($_POST['submit']=='Return')
{
	$bid=$_POST['book_id'];
	$mid=$_POST['mid'];
	$return=$_POST['return_date']; 
	$db_data=$db-> update ("rentdetail","return_Date='$return'","book_ID='$bid' and Member_ID='$mid'");

}



require "view/libraryStudentReturn.view.php";
?>