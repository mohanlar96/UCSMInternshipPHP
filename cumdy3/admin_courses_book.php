<?php
require 'session_admin.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="id='active-nav'";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about=""; 
 
 	$db=new mysqli("localhost","root","","database_integration_version_1_6 (1)");
	if($db->connect_error)
	{
		echo $db->connect_error;
	}
	$query=$db->query("select * from book");
	$show="";
		if($query->num_rows>0)
		{
			while ($c=$query->fetch_object())
			 {
				$show.="<div class='col-md-4'>
		<div class='well' style='height:450px;overflow:auto'>
			<h3>$c->SubCode</h3>
			<img src='img/courses/$c->Profile' class='img-responsive' style='height:300px;'>
			<h4>$c->SubName</h4>
			
			<a href='courses_delete.php?id=$c->Sub_ID' class='btn btn-danger'>Delete</a>
		</div>
	</div>";
			}
		}
		else
		{
			echo "Not Data";
		}
	





require "view/admin_courses_book.view.php";
?>