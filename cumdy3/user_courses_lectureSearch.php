<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";



// var_dump($_POST);
$Term=$_POST['term'];
$major=$_POST['major'];
$code=$_POST['code'];

$data=$db->query("select * from lectureplan where Term='$Term' and Major='$major' and SubCode='$code' ");
var_dump($data);

//$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_courses_lectureSeach.php" id = "linkStyle">Courses</a>';

require "view/user_courses_lectureSeach.view.php";
?>