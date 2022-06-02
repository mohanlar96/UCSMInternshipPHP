<?php
require "db_connection.php";


$db=new Database($config);
/*$idscholar=$_POST['idscholar'];
$idintern=$_POST['idintern'];
$idsponsor=$_POST['idsponsor'];*/

$scholar_ID=$_POST['scholar_ID'];
$tname=$_POST['tname'];
$city=$_POST['city'];
$country=$_POST['country'];
$uni=$_POST['uni'];
$degree=$_POST['degree'];
$duration=$_POST['duration'];


	//$data=$db->query("UPDATE scholarshipdetail set ")

	if($_POST>0)
	{
		$db->query(" UPDATE scholarshipdetail set City='".$city."',
		Country='".$country."',University='".$uni."',Degree='".$degree."',Duration='".$duration."'
		FROM scholarship  WHERE scholarshipdetail.SchoOrg_ID=scholarship.SchoOrg_ID AND scholarship.Scholar_ID LIKE '%".$scholar_ID."%'
		");
		
	
	}



?>