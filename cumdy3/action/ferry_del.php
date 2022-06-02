<?php 

require '..\database\config.php';
require '..\database\database.php';

$db=new Database($config);


$no=$_POST['carno'];

$db->delete("driver","CarNo='$no' ");

$db->delete("car","CarNo='$no' ");

$db->delete("route","CarNo='$no' ");
	
$db->delete("cardetail","CarNo='$no' ");

	



?>