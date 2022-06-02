<?php
require 'session_admin.php';

$font=$db->query("SET character_set_results=utf8");




$displayMenu="";

foreach ($db->selectStar("year") as $key => $value) {
	$yId=$value["Year_ID"];
	$name=$value["Year"];
	$displayMenu.="<li><a href='registration_detail.php?id=$yId' >Accept $name Student </li></a>";
}





$you_are_here=' <a herf = "admin.php" id = "linkStyle">Home</a> <span class = "animate">  > <a herf = "admin_registration.php" id = "linkStyle">Registration</a> </span>
';







require "view/admin_registration.view.php";
?>