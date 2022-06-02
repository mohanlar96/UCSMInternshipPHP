<?php
require 'session_admin.php';
$activie_nav_information="id='active_nav'";


$display="";

	$last=$db->query("SELECT Scholar_ID FROM scholarship ORDER BY Scholar_ID DESC LIMIT 1");
		foreach ($last as $key => $value) 
		{
			$lastid=$value['Scholar_ID'];
		}
		echo "$lastid";
		$display.="$lastid";
if(isset($_GET['add']))
{


	$scholar_ID=$_GET["scholar_ID"];
	$tid=$_GET["tid"];
	$city=$_GET["city"];
	$country=$_GET["country"];
	$uni=$_GET["uni"];
	$degree=$_GET["degree"];
	$duration=$_GET["duration"];
	$year=$_GET["year"];
	
	
	$test=$db->query("INSERT into scholarship(Scholar_ID,Teacher_ID) values('$scholar_ID','$tid')");
	
	$data=$db->query("SELECT Acedamic_Year_ID FROM acedamic_year WHERE Acedamic_Year='$year'");
	foreach ($data as $key => $value) 
	{
		$yearid=$value['Acedamic_Year_ID'];
	}
	echo "$yearid";
	$ans=$db->query("INSERT INTO scholarshipdetail(Scholar_ID,City,Country,University,Degree,Duration,Acedamic_Year_ID) values('$scholar_ID','$city','$country','$uni','$degree','$duration','$yearid')");
	
}



require "view/admin_addTScholar.view.php";
?>