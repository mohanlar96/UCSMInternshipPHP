<?php
require 'session_admin.php';

if(!isset($_POST['submit']))
{

}
elseif($_POST['submit']=='Rent_Book')
{   
	$mid=$_POST['mid'];
    $re=$db->is_data("select * from rentdetail where Student_ID='$mid' and return_Date IS NULL");
    if($re==true){
    	echo "<script language='javascript'>";
    	echo"alert('please return your rent book')";
    	echo "</script>";
       }

else
{   
	$rentdate=$_POST['r'];
	$book_id=$_POST['book_id'];
	$mid=$_POST['mid'];
	$data= $db->query("insert into rentdetail(Student_ID,book_ID,rent_Date) values('$mid','$book_id','$rentdate')");
}



}
require "view/libraryRentPage.view.php";
?>