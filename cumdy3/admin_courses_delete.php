<?php 
	
	
	$db=new mysqli("localhost","root","","database_integration_version_1_6 (1)");
	if($db->connect_error)
	{
		echo $db->connect_error;
	}
	$id=$_GET['id'];
	echo $id;
	$query=$db->query("select Profile from book where Sub_ID='$id'");
	$show="";
		if($query->num_rows>0)
		{
			while ($c=$query->fetch_object())
			 {
				unlink("img/courses/".$c->Profile);
			}
		}
	$query=$db->query("delete from book where SubID='$id'");
	if($query)
	{
		header("Location:courses_book.php");
	}

require "view/admin_courses_delete.view.php";

 ?>