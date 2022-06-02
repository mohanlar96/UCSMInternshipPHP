<?php 
require 'session_user.php';
$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_lms_download1.php" id = "linkStyle">Download file</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';

if (isset($_GET['down']))
{
	$path= $_GET['down'];
	$res=$db->query("select * from file_download_teacher WHERE Path='$path'");
	header('Content-Type: application/octet-stream');
	header('Content-Disposition: attachment; filename="'.basename($path).'"');
	readfile($path);
}
require "view/user_lms_download_teacher.view.php";
?>s