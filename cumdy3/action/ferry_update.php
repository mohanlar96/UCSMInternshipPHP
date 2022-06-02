<?php 

require '..\database\config.php';
require '..\database\database.php';

$db=new Database($config);



$carno=$_POST['carNo'];
$driverName=$_POST['driverName'];
$phNo=$_POST['phNo'];
$Way=$_POST['Way'];



	$db->query("update driver set DriverName='".$driverName."',PhoneNo='".$phNo."' 
		where CarNo LIKE '%".$carno."%'");
	$db->query("update route set Way='".$Way."' where CarNo LIKE '%".$carno."%' ");






?>