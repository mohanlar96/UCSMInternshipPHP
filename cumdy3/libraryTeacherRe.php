<?php
require 'session_admin.php';

if(!isset($_POST['submit']))
{

}

elseif($_POST['submit']=='Rent_Book')

{   
	$rentdate=$_POST['r'];
	$book_id=$_POST['book_id'];
	$tid=$_POST['tid'];
	$data= $db->query("insert into rentdetail(Teacher_ID,book_ID,rent_Date) values('$tid','$book_id','$rentdate')");
}



require "view/libraryTeacherRent.view.php";
?>