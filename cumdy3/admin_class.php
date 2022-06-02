<?php
require 'session_admin.php';



$firsttotal=$db->query("select student.Student_ID from student where Year_ID=1");
$secondtotal=$db->query("select student.Student_ID from student where Year_ID=2");
$thirdtotal=$db->query("select student.Student_ID from student where Year_ID=3");
$fourthtotal=$db->query("select student.Student_ID from student where Year_ID=4");
$finaltotal=$db->query("select student.Student_ID from student where Year_ID=5");
$mastertotal=$db->query("select student.Student_ID from student where Year_ID=6");

if(isset($_POST['submit'])){
	$firstyear= $_POST['firstyearperroom'];
	$secondyear= $_POST['secondyearperroom'];
	$thirdyear= $_POST['thirdyearperroom'];
	$fourthyear= $_POST['fourthyearperroom'];
	$finalyear= $_POST['finalyearperroom'];
	$masteryear= $_POST['masteryearperroom']; 

	$firstCount=count($firsttotal); //total no of student
	$secondCount=count($secondtotal);
	$thirdCount=count($thirdtotal);
	$fourthCount=count($fourthtotal);
	$finalCount=count($finaltotal);
	$masterCount=count($mastertotal);

	$totalfirstYearPerRoom=round($firstCount/$firstyear);
	$totalsecondYearPerRoom=round($secondCount/$secondyear);
	$totalthirdYearPerRoom=round($thirdCount/$thirdyear);
	$totalfourthYearPerRoom=round($fourthCount/$fourthyear);
	$totalfinalYearPerRoom=round($finalCount/$finalyear);
	$totalmasterYearPerRoom=round($masterCount/$masteryear);





	 function setSection($id,$Year_ID ,$Major_ID,$outerLoop,$innerLoop,$totalStudentNowPerRoom,$sectionNow,$rollHeader,$db){

	 	$year=date("Y");//2017-2018
	 	$nextYear=$year+1;
	 	$year="$year-$nextYear";
	 
	 	$yearId=$db->get("acedamic_year","Acedamic_Year='$year'")[0]["Acedamic_Year_ID"]; //06
	 	$sectionID=count($db->selectStar("section"))+1; //pk


	 	$string="0 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z";
	 	$sectionArr=explode(" ",$string);
	 
	 	$section="Section";
	 	if($Major_ID==3){
	 		$section="Section";
	 	}
		$sectionName="$section(".$sectionArr[$sectionNow].")";
			
		$rollNo=$totalStudentNowPerRoom; // pure rooll no eg 23
		$stdRollNo=$rollHeader.$rollNo;  

				
	if(!$db->is_data("select * from section where Student_ID='$id' and Academic_Year_ID='$yearId'"))
		{			//student insert herer eg ..totoal 51 per room
			$db->insert("section"," '$sectionID','$sectionName','$Year_ID','$Major_ID','$yearId','$id' ");
			$db->query("update student set Roll_No='$stdRollNo' where Student_ID='$id' ");

			}	

				
			
	 }



    $totalmark=$db->query("SELECT * FROM `pass_fail` WHERE Pass_Fail='pass' ORDER BY Total_Mark DESC ");
   // var_dump($totalmark);

    	$totalStudentNowPerRoom1=1;
    	$totalStudentNowPerRoom2=1;
    	$totalStudentNowPerRoom3=1;
    	$totalStudentNowPerRoom4=1;
    	$totalStudentNowPerRoom5=1;
    	$totalStudentNowPerRoom6=1;


    	$totalStudentNowPerRoomCT2=1;
    	$totalStudentNowPerRoomCT3=1;
    	$totalStudentNowPerRoomCT4=1;
    	$totalStudentNowPerRoomCT5=1;
    	$totalStudentNowPerRoomCT6=1;

    	$sectionNow1=($totalStudentNowPerRoom1+$firstyear)/$firstyear;  // 51
    	$sectionNow2=($totalStudentNowPerRoom2+$secondyear)/$secondyear; 
    	$sectionNow3=($totalStudentNowPerRoom3+$thirdyear)/$thirdyear; 
    	$sectionNow4=($totalStudentNowPerRoom4+$fourthyear)/$fourthyear; 
    	$sectionNow5=($totalStudentNowPerRoom5+$finalyear)/$finalyear; 
    	$sectionNow6=($totalStudentNowPerRoom6+$masteryear)/$masteryear; 

    foreach ($totalmark as $key => $value) {
    	$stdId=$value['Student_ID'];
    	$yid= end($db->get("student","Student_ID='$stdId'"))['Year_ID']; //firstyear lar second lar
    	$mid=end($db->get("student","Student_ID='$stdId'"))['Major_ID']; // cs lar ct lar

    	
		    	switch ($yid) {

		    		case '1':
		    			if($mid=="3"){


		    		 
		    		     	break;
		    		     }
		    			
		    			setSection($stdId,'1',$mid,$totalfirstYearPerRoom,$firstyear,$totalStudentNowPerRoom1,$sectionNow1,"1CST-",$db);
		    			$totalStudentNowPerRoom1++;
		    			break;

		    		case '2':
		    		     if($mid=="3"){
		    		     	setSection($stdId,'2',$mid,$totalsecondYearPerRoom,$firstyear,$totalStudentNowPerRoomCT2,$sectionNow2,"2CT-",$db);

		    		        $totalStudentNowPerRoomCT2++;
		    		     	break;
		    		     }
		    			
		    			setSection($stdId,'2',$mid,$totalsecondYearPerRoom,$firstyear,$totalStudentNowPerRoom2,$sectionNow2,"2CS-",$db);
		    			$totalStudentNowPerRoom2++;
		    			break;

		    		case '3':
		    			  if($mid=="3"){

		    			  	setSection($stdId,'3',$mid,$totalthirdYearPerRoom,$firstyear,$totalStudentNowPerRoomCT3,$sectionNow3,"3CT-",$db);

		    		        $totalStudentNowPerRoomCT3++;
		    		     	break;
		    		     }
		    			
		    			setSection($stdId,'3',$mid,$totalthirdYearPerRoom,$firstyear,$totalStudentNowPerRoom3,$sectionNow3,"3CS-",$db);
		    			$totalStudentNowPerRoom3++;
		    			break;


		    		case '4':
		    			   if($mid=="3"){
		    			setSection($stdId,'4',$mid,$totalfourthYearPerRoom,$firstyear,$totalStudentNowPerRoomCT4,$sectionNow4,"4CT-",$db);


		    		        $totalStudentNowPerRoomCT4++;
		    		     	break;
		    		     }
		    			
		    			setSection($stdId,'4',$mid,$totalfourthYearPerRoom,$firstyear,$totalStudentNowPerRoom4,$sectionNow4,"4CS-",$db);
		    			$totalStudentNowPerRoom4++;
		    			break;

		    		case '5':
		    			  if($mid=="3"){
		    			setSection($stdId,'5',$mid,$totalfinalYearPerRoom,$firstyear,$totalStudentNowPerRoomCT5,$sectionNow5,"5CT-",$db);


		    		        $totalStudentNowPerRoomCT5++;
		    		     	break;
		    		     }

		    			setSection($stdId,'5',$mid,$totalfinalYearPerRoom,$firstyear,$totalStudentNowPerRoom5,$sectionNow5,"5CS-",$db);

		    			$totalStudentNowPerRoom5++;
		    			break;



		    		case '6':
		    			   if($mid=="3"){
		    			setSection($stdId,'6',$mid,$totalmasterYearPerRoom,$firstyear,$totalStudentNowPerRoomCT6,$sectionNow6,"6CT-",$db);


		    		        $totalStudentNowPerRoomCT6++;
		    		     	break;
		    		     }


		    			
		    			setSection($stdId,'6',$mid,$totalmasterYearPerRoom,$firstyear,$totalStudentNowPerRoom6,$sectionNow6,"6CS-",$db);
		    			$totalStudentNowPerRoom6++;
		    			break;
		    	}
		 






    }



  echo '<script type="text/javascript">';
      echo 'alert("Successful!")';
      echo '</script>';



	}

require "view/admin_class.view.php";
?> 