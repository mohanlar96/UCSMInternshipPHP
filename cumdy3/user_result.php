<?php
require 'session_public.php';
// $active_nav_home="";
// $active_nav_register="";
// $active_nav_courses="";
// $active_nav_result="id='active-nav'";
// $active_nav_Activity="";
// $active_nav_about="";
// $active_nav_signup="";
// $active_nav_login="";
$active_nav_student="id='active_nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> 
<span class = "animate">  > </span> <a herf = "user_result.php" id = "linkStyle">
Exam Result</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle"></a>';



 // set_time_limit(3000);

//  /*
// $date=$db->query("select datediff(now(),Published_Date) from Date");
// var_dump($date);
// echo "Today is " . date("Y/m/d") . "<br>";
// */


//Result checking start;
// $db->query("drop table result");
// $db->query("drop table pass_fail");
// $db->query("create table result(Result_ID varchar(8) primary key,Student_ID varchar(8),Serial_No int,Total_Mark int,Distinction varchar(8) null,Academic_Year_ID varchar(8))");
// $db->query("create table pass_fail(PF_ID varchar(8),New_Roll_NO int,Student_ID varchar(8),Total_Mark int,Pass_Fail varchar(8),Academic_Year_ID varchar(8),Year_ID varchar(8),Major_ID varchar(8),Credit varchar(8))");
//  //$db->query("alter table grade add Grade_ID int not null auto_increment primary key");
 


// var_dump(date('Y'));
//  $yearSub=$db->query("select distinct Year_ID from subjectinformation");

//  $int=count($yearSub);

//  for ($i=1; $i<= $int ; $i++) { 
// $oneSubTotalMark=0;
// 		$subjects=$db->get("subjectinformation","Year_ID='$i'");
// 		//var_dump($subjects);
// 		$innerInt=count($subjects);//7
// 		//echo "inner".$innerInt."<br>";
// 	//	$innerInt=2;
// 		for ($i=1; $i <=$innerInt ; $i++) { 
// 			$subCode=$subjects[$i-1]['SubCode'];
// 			var_dump($subCode);echo "onesub<br>";
// 			$data=$db->query("select * from mark where Term_ID='1' and Exam_Type_ID='3' and SubCode='$subCode' ");
						
// 						$finalTotalMark=0;
// 						$stdID="";
// 						$nowYearID="";
// 						$studentMajorID="";
// 						$studentYearID="";
// 								foreach ($data as $key => $value) {
										
// 									$stdID =$value['Student_ID'];echo $stdID."student<br>";

// 									$yearID=$db->query("select Year_ID from student where Student_ID='$stdID'")[0]['Year_ID'];
							
// 									$nowYear=date('Y');
// 									$preYear=$nowYear-1;
// 									$year="$preYear-$nowYear";
					

// 									// @$nowYearID=$db->get("academic_year","Academic_Year=$year")["Academic_Year_ID"];
// 									// echo $nowYearID ."get<br>";

// 									$nowYearID=$db->query("select * from academic_year where Academic_Year='$year'")[0]['Academic_Year_ID'];
// 									echo $nowYearID."academic<br>";
									
// 									@$studentMajorID=$db->get("student","Student_ID='$stdID' and Academic_Year_ID='$nowYearID' ")[0]['Major_ID'];
// 									var_dump($studentMajorID);echo "major<br>";

// 									@$studentYearID=$db->get("student","Student_ID='$stdID' and Academic_Year_ID='$nowYearID' ")[0]['Year_ID'];
// 									var_dump($studentYearID);echo "study year<br>";

// 									$serialNo=$db->query("select * from subjectinformation join book 
// 										where subjectinformation.Serial_No=book.Serial_No
// 										and subjectinformation.Year_ID='$studentYearID'  and book.Major_ID='$studentMajorID'
// 										 and subjectinformation.SubCode='$subCode'")[0]['Serial_No'];
// 									echo $serialNo."serial no<br>";
									
// 									$midTermPercent="";
// 									$finalTermPercent="";
									
// 									if($serialNo=='33' || $serialNo=='34'){
// 										$sectionName=$db->query("select Section_Name from section,section_detail where Student_ID='$stdID' and section.Section_ID=section_detail.Section_ID;");
// 										$midTermPercent=$db->query("select First_Term_Percent from subject_division where Section_Name='$sectionName'");
// 										$finalTermPercent=$db->query("select Second_Term_Percent from subject_division where Section_Name='$sectionName");


// 									}
									

									
// 									else{
// 										$midTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["First_Term_Percent"];
// 										$finalTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["Second_Term_Percent"];
// 										echo $midTermPercent."midtermpercent<br>";
// 										echo $finalTermPercent."finalpercent<br>";
// 									}

									
// 									$midTermExamMark=$value["Mark"];
// 									echo $midTermExamMark."midexammark<br>";
// 									$midTermTutoMark=$db->query("select * from mark where Term_ID='1' and Exam_Type_ID='1' and Student_ID='$stdID'  and SubCode='$subCode'   ")[0]["Mark"];
// 									echo $midTermTutoMark."midtuto<br>";
// 									$midTermPracticalMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='2' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $midTermPracticalMark."midpractical<br>";
// 									$midTermProjectMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='4' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $midTermProjectMark."midproject<br>";
// 									$MidTotalMark=($midTermTutoMark+$midTermPracticalMark+$midTermProjectMark)+($midTermExamMark*$midTermPercent);
// 									echo $MidTotalMark."midtotal<br>";


// 									$finalTermExamMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='3' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $finalTermExamMark."sectermmark<br>";
// 									$finalTermTutoMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='1' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $finalTermTutoMark."sectuto<br>";
// 									$finalTermPracticalMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='2' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $finalTermPracticalMark."secpractical<br>";
// 									$finalTermProjectMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='4' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// 									echo $finalTermProjectMark."secproject<br>";
// 									$oneSubTotalMark=($MidTotalMark)+($finalTermTutoMark+$finalTermPracticalMark+$finalTermProjectMark)+ ($finalTermExamMark*$finalTermPercent);
// 									echo $oneSubTotalMark."onesubtotal<br>";
// 									//var_dump($finalTermTutoMark);
// 									$distinct=" ";

// 									if($oneSubTotalMark >= 80){

// 										$distinct="D";
// 										echo $distinct." distinct<br>";
// 									}

									

// 									$db->query("insert into result(Student_ID,Serial_No,Total_Mark,Distinction,Academic_Year_ID) 
// 															values('$stdID','$serialNo','$oneSubTotalMark','$distinct','$nowYear')");
// echo "insert result successfullllllllllllllllllllll<br>";
// 									$finalTotalMark+=$oneSubTotalMark;
// 									//break;
// 								} // end for each


// 								$queryMark=$db->query("select Total_Mark from result where Student_ID='$stdID' group by Student_ID,Serial_No");
// 								echo $stdID."studentIDDDDDD<br>";
// 								$passfail="";
// 								$credit="";
// 								foreach ($queryMark as $key => $value) {
// 									$pf=$value['Total_Mark'];
// 									if($pf>=40){
// 										$passfail="Pass";echo $passfail."<br>";

// 										if($pf>=65){
// 											$credit="Credit";echo $credit."<br>";
// 										}else{
// 											$credit=" ";
// 											break;
// 										}

// 									}else{
// 										$passfail="Fail";
// 										break;
// 									}
// 								}

// 								$db->query("insert into pass_fail(Student_ID,Total_Mark,Pass_Fail,Academic_Year_ID,Year_ID,Major_ID,Credit) values('$stdID','$finalTotalMark','$passfail','$nowYearID','$studentYearID','$studentMajorID','$credit') ");
								
// 		}
	
// }


//     for ($i=1; $i <=5 ; $i++) {
//  for ($j=1; $j <=3 ; $j++) { 


//  $count=$db->query("select Student_ID from pass_fail where Major_ID='$j' and Year_ID='$i'");
//  var_dump($count);echo " count<br>";
//   $c=count($count);
//   //var_dump($c);
//   if(isset($c)){
//     $x=1;
//     foreach ($count as $key => $value) {
//       $stdid=$value['Student_ID'];
//       echo $stdid."Studentid<br>";
      
//       while ($x<=$c) {
//        //echo "String...";
//        //echo $x."<br>";
//       $db->query("update pass_fail set New_Roll_NO =$x where Major_ID='$j' and Year_ID='$i' and Student_ID='$stdid'");
//        break;
//        }
//         $x+=1;
//     }

//   }
//  $x=1;
//  }
  

//  }

//}
// set_time_limit(30);







require "view/user_resultTest.view.php";
?>