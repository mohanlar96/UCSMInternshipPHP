<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";


$yId=$_POST["Year_ID"];
$mId=$_POST["Major_ID"];

$displayTable="";
 
 $data=$db->query("select * from book join subjectinformation join major where book.Serial_No=subjectinformation.Serial_No and book.Major_ID=major.Major_ID and subjectinformation.Year_ID='$yId' and book.Major_ID='$mId'");

 foreach ($data as $key => $value) {
 	$name=$value['BookName']; // pyin
 	$id=$value['Sub_ID'];
 	$subcode=$db->query("select SubCode from subjectinformation join book where book.Serial_No=subjectinformation.Serial_No and book.Sub_ID='$id'")[0]["SubCode"];

 	$year=$db->query("select year from subjectinformation join  year join book where book.Serial_No=subjectinformation.Serial_No and subjectinformation.Year_ID=year.Year_ID and book.Sub_ID='$id'")[0]["year"];
 	
 	$major=$db->query("select major from major join book where book.Major_ID=major.Major_ID and book.Sub_ID='$id'")[0]["major"];
 	
 	$term=$db->query("select term from book join term where term.Term_ID=book.Term_ID and book.Sub_ID='$id'")[0]["term"];
 	$price=$db->query("select price from book where book.Sub_ID='$id'")[0]["price"];
   
  	$isOrder=$db->is_data("select * from orders join orderdetails where orders.Order_ID=orderdetails.Order_ID and orders.User_ID='$userId' and orderdetails.Sub_ID='$id'");


 	$detailBtn ="<a href='user_courses_detail.php?subID=$id'<button class='btn btn-info' > Detail </button></a> ";
 
 	if($isOrder)
 	{
 	$orderBtn ="<span class='text-info'>Ordered</span>";
 	}
 	else
 	{
 		$orderBtn ="<button data-id='$id' data-std='$userId' data-action='Order' class='btn btn-success'> Order </button> ";
	}
	
 


 	$displayTable.="<tr> <td> $subcode</td> <td> $name </td> <td> $year </td> <td> $major </td> <td> $term </td>  <td>$price</td><td> $detailBtn</td>	<td>$orderBtn</td> </tr> ";


 }
//$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_courses_search2.php" id = "linkStyle">Courses</a>';


 /*if(isset($_POST["total"]))
{
  $data=$db->query("SELECT sum(book.Price) as Total FROM ((orderdetails inner join orders on orders.Order_ID=orderdetails.Order_ID)inner join book ON book.Sub_ID=orderdetails.Sub_ID)");

  foreach ($data as $key => $value) {
echo $key."  ".$value;
  }
}*/

require "view/user_courses_search2.view.php";
?>