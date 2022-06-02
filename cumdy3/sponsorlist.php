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

$display="";
$table1="sponsorshipaward";
$table2="sponsorshipapplicant";
$table3="sponsorshipname";
$table4="acedamic_year";
$display.="<tr>";
if(isset($_GET["submit"]))
{
	
$name=$_GET["name"];
if(preg_match("/^[a-zA-Z]+/", $name) or preg_match("/^[0-9][a-zA-Z]+/", $name))
{
$display.="<h1 align='center'> Sponsorship Award List</h1>";
$data=$db->query("SELECT $table1.Award_ID,$table2.Roll_No,$table2.Name,$table3.Sp_Name,$table4.Acedamic_Year FROM $table1 join $table2 join $table3 join $table4 where $table1.App_ID=$table2.App_ID and $table1.Sp_ID=$table3.Sp_ID and $table1.Acedamic_Year_ID=$table4.Acedamic_Year_ID and $table2.Name='$name'");

/*if(!$data)
{
	echo "<script type='text/javascript'>alert('Not Found')</script>";
	
}*/

foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$display.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$display.="</tr>";

foreach ($data as $key => $value) {
	 $display.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$display.="<td> $field </td>";
	 }
  $display.="</tr>";
}
}
}
require "view/awardinformation.view.php";
?>