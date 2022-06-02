<?php
require 'session_public.php';
// $active_nav_home="";
// $active_nav_register="";
// $active_nav_courses="";
// $active_nav_result="id='active-nav'";
// $active_nav_Activity="";
// $active_nav_about="";
// $active_nav_signup="";
// $active_nav_login="";


$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_result_markissue.php" id = "linkStyle">Mark Issue</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


//session_start();
//header('Location: result_testmark.php');
$markForm="";
$data="";

	$date=$_SESSION['date'];
	$name=$_SESSION['name'];
	$rollno=$_SESSION['rollno'];
	$year=$_SESSION['year'];

	$academic=$_SESSION['academic'];
	
	$sub= $_SESSION['sub'];
	$mark=$_SESSION['onemark'];
	//total=$_SESSION['totalmark'];
	//$dist=$_SESSION['distinction'];
	//$major=$_SESSION['major'];
	
@$thisYear=date('Y');
@$preYear=$thisYear-1;
	
	// echo "Mark issue page<br>";
	// echo $date."<br>";
	// echo $name."<br>";
	// echo $rollno."<br>";
	// echo $year."<br>";
	// echo $academic."<br>";
	// echo $major."<br>";
	
	
	$eachsub=explode(" ", $sub);
	//var_dump($eachsub);echo "sub<br>";
 $eachmark=explode(",", $mark);
 //var_dump($eachmark);echo "mark<br>";
 //$d=explode(" ", $dist);

 $data.="<h3 align='center'><b><u>Mark certificate</u></b></h3><br>";
$data.="<h5 align='justified'><p style='line-height:1.5'>This is certificate that <b><i>$name</i></b>, Roll No <b><i>$rollno</i></b> has obtained the following marks in the <b><i>$year</i></b> Examination held in <b><i>September</b></i> <b><i>$preYear</i></b></p></h5>";


 	for ($i=0; $i <=6 ; $i++) { 

 		@$markForm.="<tr><td>$eachsub[$i]</td><td>$eachmark[$i]</td>";

	}
	



 			
		 






//require "view/resultTestMark.view.php";
require "view/user_resultMarkIssue.view.php";
?>