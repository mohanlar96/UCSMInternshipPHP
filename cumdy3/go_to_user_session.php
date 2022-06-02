<?php 
require 'session_admin.php';
unset($_SESSION["loginProcess"]);

$_SESSION["accessLevel"]="user";	
header("Location:user.php");

?>
