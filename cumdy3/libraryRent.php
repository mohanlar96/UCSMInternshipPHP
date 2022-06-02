<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_library="id='active-nav'";
$active_nav_Activity="";
$active_nav_about="";

if($_POST['submit']=='Rent_Book')
{   
	$mid=$_POST['mid'];
    $re=$db->is_data("select * from rentdetail where member_ID='$mid' and return_Date IS NULL");
    if($re==true){
    	echo "<script language='javascript'>";
    	echo"alert('please return your rent book')";
    	echo "</script>";
       }


else{

	$rentdate=$_POST['r'];
	$book_id=$_POST['book_id'];
	$sid=$_POST['mid'];
	$data= $db->query("insert into rentdetail(Student_ID,book_ID,rent_Date) values('$sid','$book_id','$rentdate')");

}
}


require "libraryissue.php";
?>