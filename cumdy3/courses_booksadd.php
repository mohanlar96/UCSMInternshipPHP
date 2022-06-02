<?php
require 'session_admin.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="id='active-nav'";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about=""; 
//var_dump($_POST);
if(isset($_POST['submit'])){
$Serial_No=$_POST['Serial_No'];
//$SubCode=$_POST['SubjectCode'];
$SubName=$_POST['SubName'];
$BookName=$_POST['BookName'];
$AuthorName=$_POST['AuthorName'];
$Publisher=$_POST['Publisher'];
$PublicationDate=$_POST['PublicationDate'];
$Edition=$_POST['Edition'];
$Term_ID=$_POST['Term_ID'];
$Major_ID=$_POST['Major_ID'];
$Department_ID=$_POST['Department_ID'];
$Profile=$_POST['Profile'];
$Price=$_POST['Price'];

$name=$db->query("select * from book where Serial_No='$Serial_No' AND SubName='$SubName' AND BookName='$BookName' AND AuthorName='$AuthorName' AND AuthorName='$AuthorName' AND Publisher='$Publisher' AND PublicationDate='$PublicationDate' AND Edition='$Edition' AND Term_ID='$Term_ID' AND Major_ID='$Major_ID' AND Department_ID='$Department_ID' AND Profile='$Profile' AND Price='$Price'");
$no=count($name);
if($no==0){
$db->query("insert into book(Serial_No,SubName,BookName,AuthorName,Publisher,PublicationDate,Edition,Term_ID,Major_ID,Department_ID,Profile,Price) values('".$Serial_No."','".$SubName."','".$BookName."','".$AuthorName."','".$Publisher."','".$PublicationDate."','".$Edition."','".$Term_ID."','".$Major_ID."','".$Department_ID."','".$Profile."','".$Price."')");
$message="";
}else{
	$message="";
}
	

}
require "view/courses_booksadd.view.php";