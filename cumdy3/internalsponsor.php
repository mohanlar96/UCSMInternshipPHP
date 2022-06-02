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
$table1="sponsorshipapplicant";
$display.="<tr>";
if(isset($_GET["submit"]))
{
	
$name=$_GET["name"];
if(preg_match("/^[a-zA-Z]+/", $name) or preg_match("/^[0-9][a-zA-Z]+/", $name))
{
$display.="<h1 align='center'>Apply Sponsorship Student List</h1>";
 $data=$db->query("SELECT * from $table1 where  $table1.Name='$name' or $table1.Roll_No='$name'");
 /*$data=$db->query("SELECT * from $table1 where  $table1.Name='$name'");
*/



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