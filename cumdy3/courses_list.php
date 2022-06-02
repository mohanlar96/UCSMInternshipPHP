<?php
require 'session_admin.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="id='active-nav'";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";
$active_nav_signup="";
$active_nav_login="";

$yId=$_POST["Year_ID"];
$mId=$_POST["Major_ID"];


$displayTable="";
 
$data=$db->query("select * from book join subjectinformation join major where book.Serial_No=subjectinformation.Serial_No and book.Major_ID=major.Major_ID and subjectinformation.Year_ID='$yId' and book.Major_ID='$mId'");
	
	foreach ($data as $key => $value) {
 	$name=$value['BookName']; // pyin
 	$id=$value['Sub_ID'];
 	
 	 $subcode=$db->query("select SubCode from subjectinformation join book where book.Serial_No=subjectinformation.Serial_No and book.Sub_ID='$id'")[0]["SubCode"];
 	
 	  //$SubName=$db->query("select SubName from book where  book.Sub_ID='$id'")[0]["SubName"];

 	$year=$db->query("select year from subjectinformation join  year join book where book.Serial_No=subjectinformation.Serial_No and subjectinformation.Year_ID=year.Year_ID and book.Sub_ID='$id'")[0]["year"];

 	$major=$db->query("select major from major join book where book.Major_Id=major.Major_ID and book.Sub_ID='$id'")[0]["major"];

 	$author=$db->query("select AuthorName from book where book.Sub_ID='$id'")[0]["AuthorName"];

 	$publisher=$db->query("select Publisher from book where book.Sub_ID='$id'")[0]["Publisher"];

 	$publicationdate=$db->query("select PublicationDate from book where book.Sub_ID='$id'")[0]["PublicationDate"];
	
	$edition=$db->query("select Edition from book where book.Sub_ID='$id'")[0]["Edition"];

	@$department=$db->query("select Department_Name from department join book where department.Department_ID=book.Department_ID and book.Sub_ID='$id'")[0]["Department_Name"];

	$profile=$db->query("select Profile from book where book.Sub_ID='$id'")[0]["Profile"];

	
	$price=$db->query("select price from book where book.Sub_ID='$id'")[0]["price"];

	
	$term=$db->query("select term from term join book where term.Term_ID=book.Term_ID and book.Sub_ID='$id'")[0]["term"];

	$btndel="<button class='btn btn-primary'data-id='$id' data-action='Delete'>Delete</button>";

 	 $btnupt="<button class='btn btn-primary' data-id='$id' data-action='Update'>Update </button>";
   	
   	$displayTable.="<tr> <td>$subcode</td> <td> $name </td> <td> $year </td> <td>$major</td> <td> $term </td> <td> $author</td> <td>$publisher</td> <td> $publicationdate </td> <td>$edition</td> <td>$department</td> <td>$profile</td>  <td>$price</td> <td>$btndel</td> <td>$btnupt</td></tr>";


 }



require "view/courses_list.view.php";
?>