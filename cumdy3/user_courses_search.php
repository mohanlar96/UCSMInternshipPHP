<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";

if(@$_GET['isBack']=='true'){

$yId=$_GET["yId"];
$mId=$_GET["mId"];

}else{
$yId=$_POST["Year_ID"];
$mId=$_POST["Major_ID"];
}
$displayTable="";
 
 $data=$db->query("select * from book join subjectinformation join major where book.Serial_No=subjectinformation.Serial_No and book.Major_ID=major.Major_ID and subjectinformation.Year_ID='$yId' and book.Major_ID='$mId'");

 foreach ($data as $key => $value) {
 	$name=$value['BookName']; // pyin
 	$id=$value['Sub_ID'];

 	$subcode=$db->query("select SubCode from subjectinformation join book where book.Serial_No=subjectinformation.Serial_No and book.Sub_ID='$id'")[0]["SubCode"];
 	
 	
 	$year=$db->query("select year from subjectinformation join  year join book where book.Serial_No=subjectinformation.Serial_No and subjectinformation.Year_ID=year.Year_ID and book.Sub_ID='$id'")[0]["year"];
 	
 	$major=$db->query("select major from major join book where book.Major_ID=major.Major_ID and book.Sub_ID='$id'")[0]["major"];
 	
 	$term=$db->query("select term from book join term where term.Term_ID=book.Term_ID and book.Sub_ID='$id'")[0]["term"];
   
   @$department=$db->query("select Department_Name from department join book where book.Department_ID=department.Department_ID and book.Sub_ID='$id'")[0]["Department_Name"];
  	$detailBtn ="<a href='user_courses_detail.php?subID=$id&yId=$yId&mId=$mId'<button class='btn btn-info' > Detail </button></a> ";
 
 	
 

 	$displayTable.="<tr> <td> $subcode</td> <td> $name </td> <td> $year </td> <td> $major </td> <td> $term </td> <td> $department</td> <td> $detailBtn</td></tr> ";


 }



require "view/user_courses_search.view.php";
?>