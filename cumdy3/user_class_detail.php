<?php
require 'session_user.php';



$result=" ";
$name=" ";

$rono=" ";
$displayTable="";
// $y=date("Y");
// $year=$y."-".$y+1;
// $Academic_yearid=$db->get("academic_year","Year='$year'")[0]["Academic_Year_ID"]; //06
 $Academic_yearid="05";
if(isset($_POST['submit']))
{

	$yearid=$_POST['year'];
	$majorid=$_POST['major'];
	$sectionname=$_POST['section'];

	$result=$db->query("select *FROM 	section where Year_ID='$yearid' and Major_ID='$majorid' and Section_Name='$sectionname' ");
	//var_dump($result);
	foreach ($result as $key => $value){
		$id=$value['Student_ID'];
		$no=$key+1;
		$name=$db->get("studentdetail","Student_ID='$id'")[0]["Name_Eng"];
		
		$rono=$db->query("select * from student where Student_ID='$id' and Academic_Year_ID='$Academic_yearid'")[0]["Roll_No"];


		$displayTable.="<tr> <td> $no <td> $name </td> <td>$rono</td></tr>";
	}
	
	
}//var_dump($name,$rono);




require "view/user_class_detail.view.php";
?>