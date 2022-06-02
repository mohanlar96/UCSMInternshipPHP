<?php 

require "db_connection.php";

$db=new Database($config);
$rno=$_POST["rno"];
$name=$_POST["name"];
$acdyear=$_POST["acdyear"];
$typeid=$_POST["typeid"];
$typename=$_POST["typename"];
$remark=$_POST["remark"];
var_dump($_POST);

$db->query("insert into student(Roll_No,Name_Eng,Academic_Year) values('$rno','$name','$acdyear') ");
//$db->query("insert into studentdetail (Name_Eng) values ('$name') ");
//$db->query("insert into academic_year (Academic_Year) values ('$acdyear') ");
$db->query("insert into type (Type_ID,Type_Name) values ('$typeid','$typename','$remark') ");







?>