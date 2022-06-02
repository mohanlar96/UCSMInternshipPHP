<?php
require 'session_public.php';


$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_result_testmark.php" id = "linkStyle">Mark Issue</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle"></a>';



@$register=$_POST['submit'];
//echo $register;
		
if(isset($register)){
	$_SESSION['date']=$_POST['date'];
	$_SESSION['name']=$_POST['name'];
	$_SESSION['rollno']=$_POST['rollno'];
	$_SESSION['year']=$_POST['year'];
	$_SESSION['academic']=$_POST['academic'];
	//$nrc=$_POST['nrc'];
	$_SESSION['fname']=$_POST['fname'];
	$_SESSION['email']=$_POST['email'];
	
	if(empty($_SESSION['date']) or empty($_SESSION['name']) or empty($_SESSION['rollno']) or empty($_SESSION['year']) or empty($_SESSION['academic'])  or empty($_SESSION['fname']) or empty($_SESSION['email'])){

		echo '<script language="javascript">';
		echo 'alert("You missed out some fields.Please check and fill again")';
		echo '</script>';
	}else{
	
		echo $_SESSION['date']."<br>";
	echo $_SESSION['name']."<br>";
	echo $_SESSION['rollno']."<br>";
	echo $_SESSION['year']."<br>";
	echo $_SESSION['academic']."<br>";
	//echo $nrc."<br>";
	echo $_SESSION['fname']."<br>";
	echo $_SESSION['email']."<br>";

	$date=$_SESSION['date'];
	$name=$_SESSION['name'];
	$rollno=$_SESSION['rollno'];
	$year=$_SESSION['year'];
	$academic=$_SESSION['academic'];
	$fname=$_SESSION['fname'];
	$email=$_SESSION['email'];

	$yrid=$db->query("select Year_ID from year where year.Year='$year'")[0]['Year_ID'];
	//$yrid=$db->get("year","Year='$year'")['Year_ID'];
//echo "yrid=";
//var_dump($yrid);
	$aid=$db->query("select Academic_Year_ID from academic_year where academic_year.Academic_Year='$academic'")[0]['Academic_Year_ID'];
//	echo "aid=";
//	var_dump($aid);


$query=$db->query("select studentdetail.Name_Eng,student.Roll_No,subjectinformation.SubCode,result.Total_Mark as onesubmark
FROM student,studentdetail,result,pass_fail,subjectinformation
WHERE subjectinformation.Serial_No=result.Serial_No and student.Student_ID=studentdetail.Student_ID and student.Student_ID=result.Student_ID AND student.Student_ID=pass_fail.Student_ID 
and student.Student_ID=studentdetail.Student_ID and studentdetail.Name_Eng='$name' 
and student.Roll_No='$rollno' AND student.Academic_Year_ID='$aid' AND pass_fail.Year_ID='$yrid' 
AND studentdetail.FatherName_Eng='$fname' and studentdetail.Email_Address='$email'");
//var_dump($query);
//echo "<br>";
$noRows=count($query);
//echo $noRows."<br>";

		 if($noRows==0){
		 	echo '<script language="javascript">';
		 echo 'alert("There is no record with your data Information.Please check")';
		 echo '</script>';
			 
		 }else{
		 	
		 	
		 		foreach ($query as $key => $value) {
				 	@$sub.=$value['SubCode']." ";
					@$onemark.=$value['onesubmark'].",";
					//@$dist=$value['Distinction']." ";
					@$totalmark.=$value['Total']." ";
					echo $sub."<br>";
					echo $onemark."<br>";
					//echo "dist is".$dist."<br>";
					//echo $totalmark."<br>";

				 		}
				 	$_SESSION['sub']=$sub;
					 $_SESSION['onemark']=$onemark;
					// $_SESSION['totalmark']=$totalmark;	 
					 //$_SESSION['distinction']=$dist;
					
					 //echo $_SESSION['onemark']."<br>";

				 	
					header('Location: result_markissue.php');	

		 			}
				
					}

}








require "view/user_resultTestMark.view.php";
?>  