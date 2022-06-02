<?php
require 'session_admin.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="id='active-nav'";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about=""; 

if(isset($_GET['submit'])){
$subcode=$_GET['book'];
$subj=$_GET['subjectname'];
$bname=$_GET['bname'];
$major=$_GET['major'];
$term=$_GET['term'];
$chapter=$_GET['chapter'];
$page=$_GET['page'];
$period=$_GET['period'];
$detail=$_GET['detail'];
$refbook=$_GET['refbook'];

//var_dump($_POST);
$message="";
	
$name=$db->query("select * from lectureplan where SubCode='$subcode' AND SubName='$subj' AND BookName='$bname' AND Major='$major' AND Term='$term' AND Chapter='$chapter' AND Page='$page' AND Period='$period' AND DetailLecturePlan='$detail' AND ReferenceBook='$refbook' ");
$no=count($name);
if($no==0){
$db->query("insert into lectureplan(SubCode,SubName,BookName,Major,Term,Chapter,Page,Period,DetailLecturePlan,ReferenceBook) values('".$subcode."','".$subj."','".$bname."','".$major."','".$term."','".$chapter."','".$page."','".$period."','".$detail."','".$refbook."')");
$message="<h1 align='center'>insert successful.<h1>";
}else{
	$message="<h1 align='center'>Lectureplan is already exit!<h1>";
}
	

}
require "view/courses_lectureplan.view.php";
?>