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

$displayInternship="";
$table1=$_GET["tableName1"];
$table2=$_GET["tableName2"];
$table3=$_GET["tableName3"];
$table4=$_GET["tableName4"];
$table5=$_GET["tableName5"];
$displayInternship.="<tr>";

$displayInternship.="<h1 align='center'>Internship Award</h1>";
$data=$db->query("select $table4.Name,$table2.Company_Name,$table2.City,$table2.Address,$table1.Duration,$table5.Acedamic_Year  from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.C_ID=$table2.C_ID and $table1.Student_ID=$table3.Student_ID and $table3.Student_ID=$table4.Student_ID and $table3.Acedamic_Year_ID=$table5.Acedamic_Year_ID");



foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displayInternship.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displayInternship.="</tr>";

foreach ($data as $key => $value) {
	 $displayInternship.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayInternship.="<td> $field </td>";
	 }
  $displayInternship.="</tr>";
}

require "view/awardinternship.view.php";
?>
