<?php 
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";
$active_nav_signup="";
$active_nav_login="";


$table1=$_GET["tableName1"];
$table2=$_GET["tableName2"];
$table3=$_GET["tableName3"];
$table4=$_GET["tableName4"];

$spname="Internal";

$displaySponsorship.="<tr>";
/*$spid=$db->query("select Sp_ID from $table3 ");
foreach($spid as $key=>$value)
{
	$id=$value['Sp_ID'];
	//echo $id;
}
echo $id;*/
$displaySponsorship.="<h1 align='center'>External Sponsorship Award</h1>";
$data=$db->query("SELECT $table2.App_ID,$table2.Roll_No,$table2.Name,$table3.Sp_Name,$table4.Acedamic_Year FROM $table1 join $table2 join $table3 join $table4 where $table1.App_ID=$table2.App_ID and $table1.Sp_ID=$table3.Sp_ID and $table1.Acedamic_Year_ID=$table4.Acedamic_Year_ID");



foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displaySponsorship.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displaySponsorship.="</tr>";

foreach ($data as $key => $value) {
	 $displaySponsorship.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displaySponsorship.="<td> $field </td>";
	 }
  $displaySponsorship.="</tr>";
}
require "view/awardexternal.view.php";
?>