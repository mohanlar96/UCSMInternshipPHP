<?php 
require 'session_public.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">Information Page</a> <span class = "animate"> 
 > </span><a herf = "user_libiary.php" id = "linkStyle">library</a>';






require "view/user_libiary.view.php";
?>