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




/*$table1=$_GET["tableName1"];
$table2=$_GET["tableName2"];
$table3=$_GET["tableName3"];
$table4=$_GET["tableName4"];
$table5=$_GET["tableName5"];*/
//$id=$_GET["id"];

$table1="scholarship";
$table2="scholarshipdetail";
$table3="teacher";
$table4="acedamic_year";
$table5="student";
$table6="studentdetail";
$table7="sponsorshipaward";
$table8="sponsorshipapplicant";
$table9="sponsorshipname";
$displayInfo.="<tr>";

if(isset($_GET["submit"]))
{
$name=$_GET["name"];
//$name=trim($name1);
//echo $name;
//$d=$db->query("select $table3.Teacher_Name from $table3 where $table3.Teacher_Name LIKE '".$name."'%'");
$displayTeacher.="<tr>";
if(preg_match("/^[a-zA-Z]+/", $name))
{
$displayTeacher.="<h1 align='center'>Teacher Scholarship Award</h1>";
$data=$db->query("select $table3.Teacher_Name,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table4.Acedamic_Year from $table1 join $table2 join $table3 join $table4 
	where $table1.SchoOrg_ID=$table2.SchoOrg_ID and $table1.Teacher_ID=$table3.Teacher_ID and $table2.Acedamic_Year_ID=$table4.Acedamic_Year_ID and $table3.Teacher_Name LIKE '%". $name ."%'");
foreach ($data as $key => $value) {
	$i=0;

	foreach ($value as $title => $field) {
		
		$displayTeacher.= "<td>$title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;	
	}
	break;
	}
$displayTeacher.="</tr>";

foreach ($data as $key => $value) {
	 $displayTeacher.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayTeacher.="<td> $field </td>";
}
  $displayTeacher.="</tr>";
}
require "view/awardteacher.view.php";
}
$displayStudent.="<tr>";
if(preg_match("/^[a-zA-Z]+/", $name))
{
$table1="scholarship";
$table2="scholarshipdetail";
$table3="student";
$table4="studentdetail";
$table5="acedamic_year";
$displayStudent.="<h1 align='center'>Student Scholarship Award</h1>";
$data=$db->query("select $table4.Name_Eng,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table5.Acedamic_Year from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.SchoOrg_ID=$table2.SchoOrg_ID and $table3.Student_ID=$table4.Student_ID and $table1.Student_ID=$table3.Student_ID and $table3.Acedamic_Year_ID=$table5.Acedamic_Year_ID and $table4.Name_Eng LIKE '%". $name ."%'");

foreach ($data as $key => $value) {
	$i=0;
	foreach ($value as $title => $field) {
		
		$displayStudent.= "<td> $title</td>";
	
		$tableTitle[$i]=$title;
		$i=$i+1;
		
	}
	break;
	}


$displayStudent.="</tr>";

foreach ($data as $key => $value) {
	 $displayStudent.="<tr>";

	 for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 	$title=$tableTitle[$i];
	 	$field=$value[$title];
 		$displayStudent.="<td> $field </td>";
	 }
  $displayStudent.="</tr>";
}
require "view/awardstudent.view.php";
}

}
?>