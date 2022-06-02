<?php
require 'session_admin.php';
// $active_nav_home="";
// $active_nav_register="";
// $active_nav_courses="";
// $active_nav_result="id='active-nav'";
// $active_nav_Activity="";
// $active_nav_about="";
// $active_nav_signup="";
// $active_nav_login="";
$active_nav_student="id='active_nav'";

//$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_result_gradecheck.php" id = "linkStyle">Grade Checking</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


//Grade checking start
$nowYear=date('Y');
$preYear=$nowYear-1;								
$year="$preYear-$nowYear";
//echo $year."<br>";
echo $year." Grade Checking<br>";
 $db->query("drop table grade");
 $db->query("create table grade (Grade_ID varchar(8) ,SubCode varchar(8),Student_ID varchar(8),Term_ID varchar(8),Exam_Type_ID varchar(8),Mark int,Academic_Year_ID varchar(8))");
// //$db->query("alter table grade add Grade_ID int not null auto_increment primary key");
 $db->query("alter table grade add Grade varchar(8) null");
 
 $disitnctStudent=$db->query("select distinct Student_ID from mark where Term_ID='1' and Exam_Type_ID='3'");
  $countStudent=count($disitnctStudent);

	for ($i=0; $i <$countStudent ; $i++){
		@$s=$disitnctStudent[$i]['Student_ID'];
		//$mid=$db->query("select Mark_ID from mark where Student_ID='$s'")[$i]['Mark_ID'];
		echo "studentid";
		var_dump($s);echo "<br>";
		@$yearid=$db->query("select Year_ID from mark,student where mark.Student_ID=student.Student_ID and mark.Student_ID='$s'")[0]['Year_ID'];
		echo "year";
		var_dump($yearid);echo "<br>";
		$subjects=$db->query("select * from subjectinformation where Year_ID='$yearid' ");
		$innerInt=count($subjects);//7sub
		echo "sub count ";
		var_dump($innerInt);
$gid=1;
		for ($j=1; $j <=$innerInt ; $j++) { 

 			$subCode=$subjects[$j-1]['SubCode'];
 			echo "sub name ";
			var_dump($subCode);
			echo "<br>";
			$mark=$db->query("select Mark, mark.Student_ID from mark,student where mark.Student_ID=student.Student_ID and mark.Student_ID='$s' and Term_ID='1' and Exam_Type_ID='3' and SubCode='$subCode' and Year_ID='$yearid' AND student.Academic_Year_ID='05'")[0]['Mark'];
			echo "1st term mark ";	
			echo $mark;
			echo "<br>";
switch(True){
 	case ($mark>=80 && $mark<=100):
 		$grade='A';
 	break;

 	case ($mark>=60 and $mark<=80):
 		$grade='B';
 	break;

 	case ($mark>=40 and $mark<=60):
 		$grade='C';
 	break;

 	case ($mark>=20 and $mark<=40):
 		$grade='D';
 	break;

 	case ($mark>=0 and $mark<=20):
 		$grade='E';
 	break;
 	}
echo $grade."grade<br>";
//$db->update('grade',"Grade='$grade'","Mark_ID='$mid'");
$db->query("insert into grade(Grade_ID,Student_ID,SubCode,Term_ID,Exam_Type_ID,Mark,Grade) values('$gid','$s','$subCode','1','3','$mark','$grade')");


		$gid+=1;	

 }


}




 set_time_limit(3000);


					

$check=fopen("img/gradecheck.txt",'w+');
$txt=$year." Grade Check Successful";
//echo $txt."<br>";
fwrite($check, $txt);
fclose($check);

echo"Grade Checking end";

// require "view/resultTest.view.php";
?>