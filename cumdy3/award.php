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


$displayTable.="<tr>";

$table1=$_GET["tableName1"];
$table2=$_GET["tableName2"];
$table3=$_GET["tableName3"];
$table4=$_GET["tableName4"];
$table5=$_GET["tableName5"];
$id=$_GET["id"];
$name=$_GET["name"];
	if($id==1)
{
$displayTable.="<h1 align='center'>Teacher Scholarship Award</h1>";
$data=$db->query("select $table3.Teacher_Name,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table4.Acedamic_Year from $table1 join $table2 join $table3 join $table4 where $table1.SchoOrg_ID=$table2.SchoOrg_ID and $table1.Teacher_ID=$table3.Teacher_ID and $table2.Acedamic_Year_ID=$table4.Acedamic_Year_ID");
foreach ($data as $key => $value) {
	$i=0;

	foreach ($value as $title => $field) {
		
		$displayTable.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;	
	}
	break;
	}


$displayTable.="</tr>";

foreach ($data as $key => $value) {
	 $displayTable.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayTable.="<td> $field </td>";
 		
 		///$result=$db->query("insert into awardinfote($tableTitle[$i]) values('$value[$title]')");
}
  $displayTable.="</tr>";
}
}
if($id==3)
{
$displayTable.="<h1 align='center'>Internship Award</h1>";
$data=$db->query("select $table4.Name_Eng,$table2.CName,$table2.City,$table2.Address,$table2.Duration,$table5.Acedamic_Year  from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.C_ID=$table2.C_ID and $table1.Student_ID=$table3.Student_ID and $table3.Student_ID=$table4.Student_ID and $table3.Acedamic_Year_ID=$table5.Acedamic_Year_ID");


/*$file_arr=file("css/exam_time_table.css");
var_dump($file_arr);*/
foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displayTable.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displayTable.="</tr>";

foreach ($data as $key => $value) {
	 $displayTable.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayTable.="<td> $field </td>";
	 }
  $displayTable.="</tr>";
}
}
if($id==2)
{
$displayTable.="<h1 align='center'>Student Scholarship Award</h1>";
$data=$db->query("select $table4.Name_Eng,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table5.Acedamic_Year from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.SchoOrg_ID=$table2.SchoOrg_ID and $table3.Student_ID=$table4.Student_ID and $table1.Student_ID=$table3.Student_ID and $table3.Acedamic_Year_ID=$table5.Acedamic_Year_ID");


/*$file_arr=file("css/exam_time_table.css");
var_dump($file_arr);*/
foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displayTable.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displayTable.="</tr>";

foreach ($data as $key => $value) {
	 $displayTable.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayTable.="<td> $field </td>";
	 }
  $displayTable.="</tr>";
}
}
if($id==4)
{
$displayTable.="<h1 align='center'>Sponsorship Award</h1>";
$data=$db->query("SELECT $table2.App_ID,$table2.Roll_No,$table2.Name,$table2.Rec_T_name,$table4.Acedamic_Year FROM $table1 join $table2 join $table3 join $table4 where $table1.App_ID=$table2.App_ID and $table1.Sp_ID=$table3.Sp_ID and $table1.Acedamic_Year_ID=$table4.Acedamic_Year_ID");


/*$file_arr=file("css/exam_time_table.css");
var_dump($file_arr);*/
foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displayTable.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displayTable.="</tr>";

foreach ($data as $key => $value) {
	 $displayTable.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayTable.="<td> $field </td>";
	 }
  $displayTable.="</tr>";
}
}

require "view/award.view.php";
?>