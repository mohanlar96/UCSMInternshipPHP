<?php 
require "db_connection.php";


$db=new Database($config);

$typeid=trim($_POST["typeId"]);
$typename=trim($_POST["typeName"]);
$date=trim($_POST["date"]);
$time=$_POST["time"];
$photo=$_POST["photo"];
$title=$_POST["title"];
$detail=$_POST["detail"];
var_dump($_POST);

$db->query("insert into type(Type_ID,Type_Name,Date) values('$typeid','$typename','$date') ");
$db->query("insert into event(Time,Photo,Title,Detail) values ('$time','$photo','$title','$detail' )");



?>