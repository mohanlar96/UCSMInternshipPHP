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

$displaySponsorship="";
$table1=$_GET["tableName1"];
$table2=$_GET["tableName2"];
$table3=$_GET["tableName3"];
$table4=$_GET["tableName4"];


$displaySponsorship.="<tr>";

$displaySponsorship.="<h1 align='center'> Sponsorship Award List</h1>";
$data=$db->query("SELECT $table1.Award_ID,$table2.Roll_No,$table2.Name,$table3.Sp_Name,$table4.Acedamic_Year FROM $table1 join $table2 join $table3 join $table4 where $table1.App_ID=$table2.App_ID and $table1.Sp_ID=$table3.Sp_ID and $table1.Acedamic_Year_ID=$table4.Acedamic_Year_ID");
//$data=$db->query("select * from $table2 ");



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


require "view/awardsponsorlist.view.php";
?>