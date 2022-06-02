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
$table1="scholarship";
$table2="scholarshipdetail";
$table3="teacher";
$table4="acedamic_year";
$display.="<tr>";
if(isset($_GET["submit"]))
{
	
$name=$_GET["name"];
if(preg_match("/^[a-zA-Z]+/", $name))
{
$display.="<h1 align='center'>Teacher Scholarship Award</h1>";

$data=$db->query("select $table3.Teacher_Name,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table4.Acedamic_Year from $table1 join $table2 join $table3 join $table4 where $table1.Scholar_ID=$table2.Scholar_ID and $table1.Teacher_ID=$table3.Teacher_ID and $table2.Acedamic_Year_ID=$table4.Acedamic_Year_ID and $table3.Teacher_Name='$name'");
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