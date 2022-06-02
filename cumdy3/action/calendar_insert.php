<?php 

require "db_connection.php";
$db=new Database($config);

$number=$_POST["number"];
$startdate=$_POST["startdate"];
$enddate=$_POST["enddate"];
$contents=$_POST["contents"];
var_dump($_POST);

$db->query("insert into activity_calendar(Number,Start_Date,End_Date,Contents) values('$number','$startdate','$enddate','$contents') ");




?>