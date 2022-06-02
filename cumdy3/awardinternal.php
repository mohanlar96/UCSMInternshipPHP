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
$displaySponsorship="";

$displaySponsorship.="<tr>";


$displaySponsorship.="<h1 align='center'>Apply Sponsorship Student List</h1>";
$data=$db->query("select * from $table1");



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


require "view/awardinternal.view.php";
?>