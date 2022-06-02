<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";

$id=$_GET["subID"];

$data=$db->query("select * from book where Sub_ID=$id ")[0];
$author=$data["AuthorName"];
$bookName=$data["BookName"];
$subName=$data["SubName"];
$Publisher=$data["Publisher"];
$PublicationDate=$data["PublicationDate"];
$Edition=$data["Edition"];

$photo=$data["Profile"]; 




$data=$db->get("relatedcourse","Sub_ID='$id'"); 

$displayRelateName="<ul>";
foreach ($data as $key => $value) 
{
	$id=$value["related_ID"];
	$dataRelate=$db->get("book","Sub_ID='$id'");
	$book=$dataRelate[0]["BookName"];
	$id=$dataRelate[0]["Sub_ID"];
	
	$displayRelateName.="<li>$book</li>";

}
$displayRelateName.="</ul>";

//$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_courses_detail.php" id = "linkStyle">Courses</a>';


require "view/user_courses_detail.view.php";
?>