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
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_result_passlistcheck.php" id = "linkStyle">Result</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


 /*
$date=$db->query("select datediff(now(),Published_Date) from Date");
var_dump($date);
echo "Today is " . date("Y/m/d") . "<br>";
// */
$db->query("drop table result");
$db->query("drop table pass_fail");
 $db->query("create table result(Result_ID varchar(8),Student_ID varchar(8),Serial_No int,Total_Mark int,Distinction varchar(8) null,Academic_Year_ID varchar(8))");
 $db->query("create table pass_fail(PF_ID varchar(8),New_Roll_NO int,Student_ID varchar(8),Total_Mark int,Pass_Fail varchar(8),Academic_Year_ID varchar(8) ,Year_ID varchar(8),Major_ID varchar(8),Credit varchar(8))");
 //$db->query("alter table grade add Grade_ID int not null auto_increment primary key");

$nowYear=date('Y');
$preYear=$nowYear-1;								
$year="$preYear-$nowYear";
//echo $year."<br>";
echo $year." Result Checking<br>";
 set_time_limit(3000);
//$m=$db->query("select * from mark");
//var_dump($m);
$disitnctStudent=$db->query("select distinct Student_ID from mark where Academic_Year_ID='05'");
var_dump($disitnctStudent);
$countStudent=count($disitnctStudent);
echo"count of std";
var_dump($countStudent);echo "<br>";
	for ($i=0; $i <$countStudent ; $i++) {
		echo "increment i ". $i ."<br>";
		@$s=$disitnctStudent[$i]['Student_ID'];/////Student_ID=05
		echo "studentid";
		var_dump($s);echo "<br>";
		@$yearid=$db->query("select Year_ID from mark,student where mark.Student_ID=student.Student_ID and mark.Student_ID='$s'")[0]['Year_ID'];
		echo "year";
		var_dump($yearid);echo "<br>";
		$nowYearID='05';//$db->query("select Academic_Year_ID from mark where Student_ID='$disitnctStudent'")[0]['Academic_Year_ID'];
		echo ($nowYearID);
		@$studentMajorID=$db->query("select Major_ID from mark,student where mark.Student_ID=student.Student_ID and mark.Student_ID='$s'")[0]['Major_ID'];
		var_dump($studentMajorID);
		echo "major<br>";
		$subjects=$db->query("select * from subjectinformation where Year_ID='$yearid' ");
		$innerInt=count($subjects);//7sub
		echo "sub count ";var_dump($innerInt);
			
		$finalTotalMark=0;
			for ($j=1; $j <=$innerInt ; $j++) { 
 			$subCode=$subjects[$j-1]['SubCode'];
 			echo "sub name ";
			var_dump($subCode);echo "<br>";
			$midTermExamMark=$db->query("select Mark from mark where mark.Student_ID='$s' and Term_ID='1' and Exam_Type_ID='3' and SubCode='$subCode' ")[0]['Mark'];
			echo "1st term mark ";	
			echo $midTermExamMark;echo "<br>";/////mid term exam mark

			$serialNo=$db->query("select * from subjectinformation join book 
 										where subjectinformation.Serial_No=book.Serial_No
 										and subjectinformation.Year_ID='$yearid'  and book.Major_ID='$studentMajorID'
 										 and subjectinformation.SubCode='$subCode'")[0]['Serial_No'];
					
			echo "serial no ".$serialNo."<br>";

			$midTermPercent="";
			$finalTermPercent="";
									
			$elasticSubID=$db->get("student","Student_ID='$s'")[0]['Elastic_Subject_ID'];
			var_dump($elasticSubID);echo " elastic sub id<br>";
									
			//if($elasticSubID!=null){
				if($serialNo=='33'){
					$elasticname=$db->query("select Elastic_Subject1 from elastic_subject where Elastic_Subject_ID=
							'$elasticSubID'")[0]['Elastic_Subject1'];
					echo $elasticname;echo " elasticname<br>";

					@$midTermPercent=$db->query("select First_Term_Percent from subject_division where Elastic_Name='$elasticname'")[0]['First_Term_Percent'];
					

 					@$finalTermPercent=$db->query("select Second_Term_Percent from subject_division where Elastic_Name='$elasticname'")[0]['Second_Term_Percent'];
 					echo $midTermPercent." 1st term percent<br>";
 					echo $finalTermPercent."2nd term percent<br>";

					}

				elseif($serialNo=='34'){
					$elasticname=$db->query("select Elastic_Subject2 from elastic_subject where Elastic_Subject_ID=
							'$elasticSubID'")[0]['Elastic_Subject2'];
					var_dump($elasticname);echo " elasticname<br>";
					@$midTermPercent=$db->query("select First_Term_Percent from subject_division where Elastic_Name='$elasticname'")[0]['First_Term_Percent'];
 					@$finalTermPercent=$db->query("select Second_Term_Percent from subject_division where Elastic_Name='$elasticname'")[0]['Second_Term_Percent'];
 					echo "1st term percent".$midTermPercent."<br>";
					echo "2nd term percent".$finalTermPercent."<br>";


					}

				
			//}
			
			else{
			@$midTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["First_Term_Percent"];
			@$finalTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["Second_Term_Percent"];
			echo "1st term percent".$midTermPercent."<br>";
			echo "2nd term percent".$finalTermPercent."<br>";


						}		


			@$midTermTutoMark=$db->query("select * from mark where Term_ID='1' and Exam_Type_ID='1' and Student_ID='$s'  and SubCode='$subCode'   ")[0]["Mark"];
			echo "mid tuto ".$midTermTutoMark."<br>";
			@$midTermPracticalMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='2' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "mid practical ".$midTermPracticalMark."<br>";
			@$midTermProjectMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='4' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "mid project".$midTermProjectMark."<br>";
			@$MidTotalMark=($midTermTutoMark+$midTermPracticalMark+$midTermProjectMark)+($midTermExamMark*$midTermPercent);
			echo "mid total ".$MidTotalMark."<br>";
			@$finalTermExamMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='3' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "2nd term mark ".$finalTermExamMark."<br>";
			@$finalTermTutoMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='1' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "final tuto ".$finalTermTutoMark."<br>";
			@$finalTermPracticalMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='2' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "final pract ".$finalTermPracticalMark."<br>";
			@$finalTermProjectMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='4' and Student_ID='$s'  and SubCode='$subCode' ")[0]["Mark"];
			echo "final project ".$finalTermProjectMark."<br>";
			$oneSubTotalMark=($MidTotalMark)+($finalTermTutoMark+$finalTermPracticalMark+$finalTermProjectMark)+ ($finalTermExamMark*$finalTermPercent);
			echo "One sub total ".$oneSubTotalMark."<br>";
									//var_dump($finalTermTutoMark);

           	$distinct=" ";

			if($oneSubTotalMark >= 80){

 				$distinct="D"	;

 			}
 			var_dump($distinct);echo "<br>";

			$db->query("insert into result(Student_ID,Serial_No,Total_Mark,Distinction,Academic_Year_ID) 
						values('$s','$serialNo','$oneSubTotalMark','$distinct','$nowYearID')");

 			$finalTotalMark=$finalTotalMark+$oneSubTotalMark;
 			echo "total mark".$finalTotalMark."<br>";
 			echo "<br><br><br>......................";
}
			$queryMark=$db->query("select Total_Mark from result where Student_ID=$s group by Student_ID,Serial_No;");
			var_dump($queryMark);
			echo "<br>queryMark";
			echo $s."<br>";
								$passfail="";
								$credit="";
								foreach ($queryMark as $key => $value) {
									$pf=$value['Total_Mark'];
									var_dump($pf);
									echo "one subject total marl <br>";
									if($pf>=40){
										$passfail="Pass";
										echo $passfail."<br>";
									}else{
										@$passfail="Fail";
										echo $passfail."fail<br>";
										break;
										echo "break";
									}
								}
								foreach ($queryMark as $key => $value) {
									$pf=$value['Total_Mark'];
									var_dump($pf);
									echo "All subject credit mark <br>";

									if($pf>=65){
										
											$credit="Credit";
											echo $credit."<br>";
										}else{
											$credit=" ";
											echo $credit."nocredit<br>";
											break;
											echo "break";
										}
								}

								
								
//		}
		$db->query("insert into pass_fail(Student_ID,Total_Mark,Pass_Fail,Academic_Year_ID,Year_ID,Major_ID,Credit) 
			values('$s','$finalTotalMark','$passfail','$nowYearID','$yearid','$studentMajorID','$credit') ");

}
for ($i=1; $i <=5 ; $i++) {
 for ($j=1; $j <=3 ; $j++) { 
 //$count=$db->query("select Student_ID from pass_fail where Major_ID='$j' and Year_ID='$i'");
 	$count=$db->query("select Student_ID from pass_fail where Major_ID='$j' and Year_ID='$i' order BY Total_Mark DESC, Year_ID ASC,Major_ID ASC,Academic_Year_ID ASC,Pass_Fail DESC");
 echo "count is=";
 var_dump($count);
 $c=count($count);
 //var_dump($c);
 //echo "count";
 if(isset($c)){
 $x=1;
 foreach ($count as $key3 => $value3) {
 	$stdid=$value3['Student_ID'];
 	var_dump($stdid);
 	echo "studebt<br>";
 	while ($x<=$c) {
   //echo "String...";
   echo "new roll".$x."<br>";
   $db->query("update pass_fail set New_Roll_NO =$x where Major_ID='$j' and Year_ID='$i' and Student_ID='$stdid'");
  	break;
    }
     $x=$x+1;
  
 }

 }
 
}
$x=1;
 }
	



// $db->query("drop table result");
// $db->query("drop table pass_fail");
// $db->query("create table result (Result_ID varchar(8),Student_ID varchar(8),Serial_No int,Total_Mark int,Distinction varchar(8),Academic_Year_ID varchar(8))");

// $db->query("create table pass_fail (PF_ID varchar(8),New_Roll_NO int, Student_ID varchar(8),Total_Mark int,Pass_Fail varchar(8),Academic_Year_ID varchar(8),Year_ID varchar(8),Major_ID varchar(8),Credit varchar(8))");


// // // //Result checking start;
// // // var_dump(date('Y'));
// $yearSub=$db->query("select distinct Year_ID from subjectinformation"); //std year first year secon 1 2 3 4 5

// $int=count($yearSub); //5 zzz


// //for ($i=1; $i<= $int ; $i++) { 

// 		$subjects=$db->get("subjectinformation","Year_ID=1"); //101 102 
// 		$innerInt=count($subjects);
// //		echo "inner".$innerInt."<br>";

// 		//$innerInt=2;
// $finalTotalMark=0;
// 		for ($j=1; $j <=$innerInt ; $j++) { 
// 			$subCode=$subjects[$j-1]['SubCode'];
// //			var_dump($subCode);

// 			$data=$db->query("select * from mark where Term_ID='1' and Exam_Type_ID='3' and SubCode='$subCode' ");
// //echo "data is...........";	
// //					var_dump($data);


						
// 						$stdID=$db->query("select Student_ID from mark where Term_ID='1' and Exam_Type_ID='3' and SubCode='$subCode' ")[0]['Student_ID'];
// //						var_dump($stdID);
// 						$nowYearID="";
// 								foreach ($data as $key1 => $value1) { //2 
// 										$oneSubTotalMark=0;
// 									$stdID =$value1["Student_ID"];
// 									$yearID=$db->query("select Year_ID from student where Student_ID='$stdID'")[0]['Year_ID'];
// //									echo $stdID ."<br>";
// 									$nowYear=date('Y');
// 									$preYear=$nowYear-1;
// 									$year="$preYear-$nowYear";
// //									echo $year."<br>";
// 									$nowYearID=$db->get("Academic_Year","$year")[0]["Academic_Year_ID"];
// 									$nowYearID=$db->query("select * from Academic_Year where Academic_Year='$year'")[0]['Academic_Year_ID'];
// //									echo $nowYearID ."<br>";

// 									$studentMajorID=$db->get("student","Student_ID='$stdID' and Academic_Year_ID='$nowYearID' ")[0]['Major_ID'];
// //									var_dump($studentMajorID);

// //									echo "$studentMajorID"."echoing <br>";
// 									$studentYearID=$db->get("student","Student_ID='$stdID' and Academic_Year_ID='$nowYearID' ")[0]['Year_ID'];

// 									$serialNo=$db->query("select * from subjectinformation join book 
// 										where subjectinformation.Serial_No=book.Serial_No
// 										and subjectinformation.Year_ID='$studentYearID'  and book.Major_ID='$studentMajorID'
// 										 and subjectinformation.SubCode='$subCode'")[0]['Serial_No'];
// //									echo $serialNo."<br>";
// 									$midTermPercent="";
// 									$finalTermPercent="";
									
// 									$subDivID=$db->get("student","Student_ID='$stdID'")[0]["Subject_Division_ID"];
									
// 									if($subDivID!=null){
// 										echo $subDivID."<br>";
// 									// **** 
									
// 									// Coding for division Subject 

// 									// ***


// 									}else{
// 										$midTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["First_Term_Percent"];
// 										$finalTermPercent=$db->get("subject_percent","Serial_No='$serialNo' and Major_ID='$studentMajorID'")[0]["Second_Term_Percent"];
// //										echo $midTermPercent."<br>";
// //										echo $finalTermPercent."<br>";
// 									}

									
// 									$midTermExamMark=$value1["Mark"];
// //									echo $midTermExamMark."<br>";
// 									$midTermTutoMark=$db->query("select * from mark where Term_ID='1' and Exam_Type_ID='1' and Student_ID='$stdID'  and SubCode='$subCode'   ")[0]["Mark"];
// 									echo $midTermTutoMark."<br>";
// 									$midTermPracticalMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='2' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $midTermPracticalMark."<br>";
// 									$midTermProjectMark=$db->query("select Mark from mark where Term_ID='1' and Exam_Type_ID='4' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $midTermProjectMark."<br>";
// 									$MidTotalMark=($midTermTutoMark+$midTermPracticalMark+$midTermProjectMark)+($midTermExamMark*$midTermPercent);
// //									echo $MidTotalMark."<br>";


// 									$finalTermExamMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='3' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $finalTermExamMark."<br>";
// 									$finalTermTutoMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='1' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $finalTermTutoMark."<br>";
// 									$finalTermPracticalMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='2' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $finalTermPracticalMark."<br>";
// 									$finalTermProjectMark=$db->query("select * from mark where Term_ID='2' and Exam_Type_ID='4' and Student_ID='$stdID'  and SubCode='$subCode' ")[0]["Mark"];
// //									echo $finalTermProjectMark."<br>";
// 									$oneSubTotalMark=($MidTotalMark)+($finalTermTutoMark+$finalTermPracticalMark+$finalTermProjectMark)+ ($finalTermExamMark*$finalTermPercent);
// //									echo $oneSubTotalMark."<br>";
// 									//var_dump($finalTermTutoMark);
// 									$distinct=" ";

// 									if($oneSubTotalMark >= 80){

// 										$distinct="D";

// 									}

									

// 								//	$db->query("insert into result(Student_ID,Serial_No,Total_Mark,Distinction,Academic_Year_ID) 
// 									//						values('$stdID','$serialNo','$oneSubTotalMark','$distinct','$nowYear')");

// 									$finalTotalMark=$finalTotalMark+$oneSubTotalMark;
// 									echo $finalTotalMark;
// 									//break;
// 								} // end for each


		// 						$queryMark=$db->query("select Total_Mark from result where Student_ID=$stdID group by Student_ID,Serial_No;");

		// //						var_dump($queryMark);

		// //						echo $stdID."queryMark<br>";
		// 						$passfail="";
		// 						$credit="";
		// 						foreach ($queryMark as $key2 => $value2) {
		// 							$pf=$value2['Total_Mark'];
		// 							if($pf>=40){
		// 								$passfail="Pass";
		// 							}else{
		// 								$passfail="Fail";
		// 								break;
		// 							}


		// 							if($pf>=65){
		// 									$credit="Credit";
		// 								}else{
		// 									$credit=" ";
		// 									break;
		// 								}
		// 						}

					
		//}
	// $db->query("insert into pass_fail(Student_ID,Total_Mark,Pass_Fail,Academic_Year_ID,Year_ID,Major_ID,Credit) values('$stdID','$finalTotalMark','$passfail','$nowYearID','$yearID','$studentMajorID','$credit') ");
				
//}

// // set_time_limit(30);


//  for ($i=1; $i <=5 ; $i++) {
//  for ($j=1; $j <=3 ; $j++) { 
// //var_dump($k);
// //var_dump($l);

//  $count=$db->query("select Student_ID from pass_fail where Major_ID='$j' and Year_ID='$i'");
//  //var_dump($count);
//  $c=count($count);

//  //var_dump($c);
//  //echo "count";
//  if(isset($c)){
//  $x=1;
//  foreach ($count as $key3 => $value3) {
//  	$stdid=$value3['Student_ID'];
//  	//var_dump($stdid);
//  	//echo "studebt";
//  	while ($x<=$c) {
//    //echo "String...";
//    //echo $x."<br>";
//    $db->query("update pass_fail set New_Roll_NO =$x where Major_ID='$j' and Year_ID='$i'");
//    $x=$x+1;
//    # code...
//     }
//  }
//  $x=1;
//  }
//   //echo "one major<br>";
// }
//   //echo "one year<br>";
//  }




$check=fopen("img/resultcheck.txt",'w+');
$txt=$year."Result Check Successful";
//echo $txt."<br>";
fwrite($check, $txt);
fclose($check);







//require "view/resultTest.view.php";
?>