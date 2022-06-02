<?php 

require '..\..\admin\database\config.php';
require '..\..\admin\database\database.php';

$db=new Database($config);
$carno=$_POST["carno"];
$stuId=$_POST["stuid"];

$db->query("delete from booking where CarNo='".$carno."'AND Student_ID='".$stuId."'");

?>