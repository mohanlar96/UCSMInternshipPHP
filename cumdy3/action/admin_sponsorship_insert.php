<?php 

require "db_connection.php";


$db=new Database($config);
$idmanage=$_GET['id'];
//echo "id :".$idmanage;

$data=$db->query("select student.Student_ID from student join student_detail where student.Student_ID=student_detail.Student_ID and student.Roll_No='$idmanage'");
	foreach($data as $key=>$value)
	{
		$sid=$value['Student_ID'];
	}
	//echo "$sid";
	$data=$db->query("SELECT Acedamic_Year FROM sponsorshipapplicant WHERE Roll_No='$idmanage'");
	foreach ($data as $key => $value) 
	{
		$year=$value['Acedamic_Year'];
	}
	//echo "year: $year";
	$datayear=$db->query("SELECT Acedamic_Year_ID FROM acedamic_year WHERE Acedamic_Year='$year'");
	foreach ($datayear as $key => $value) 
	{
		$yearid=$value['Acedamic_Year_ID'];
	}
	//echo "year id is : $yearid";
	$appid=$db->query("SELECT App_ID from sponsorshipapplicant where Roll_No='$idmanage'");
	foreach($appid as $key =>$value)
	{
		$aid=$value['App_ID'];
	}
	$insertAward=$db->query("INSERT into sponsorshipaward(Sp_ID,App_ID,Student_ID,Acedamic_Year_ID) values('1','$aid','$sid','$yearid')");
	echo "<h1>Confirmation is successful!!!!!</h1>";
?>