<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_insertmark_teacher.php" 
id = "linkStyle">Insert Mark</a>';


if (isset($_GET['down']))
{
	$path= $_GET['down'];
	$res=$db->query("select * from file_download_student WHERE Path='$path'");

	//header('Content-Transfer-Encoding: binary');
   
	header('Content-Disposition: attachment; filename="'.basename($path).'"');

	 //header("Content-Type: application/docx");
	//header("Content-Transfer-Encoding: binary");
	header('Content-Type: application/octet-stream');
	readfile($path);
}
require "view/admin_lms_viewAnswer_student.view.php";
?>