<?php 
require 'session_admin.php';	
$active_nav_information="id='active-nav'";



$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';



require "view/admin_transporation.view.php";
?>