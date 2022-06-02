<?php session_start();

$them=$_SESSION["them"];
session_destroy();
session_start();
$_SESSION["them"]=$them;
header("location:index.php");
?>