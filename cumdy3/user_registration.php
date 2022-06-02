<?php  
require 'session_public.php';
  $form_data="";
  $beingExam="";
 


$font=$db->query("SET character_set_results=utf8");


$getFile="";
if(isset($_FILES['Photo']["name"])){
	$getFile=strtolower($_FILES['Photo']["name"]);
}
$imgFile="";
if($getFile != ""){
	$imgFile="upload/".$getFile;
	move_uploaded_file($_FILES["Photo"]["tmp_name"],$imgFile);
}

$getFile="";
if(isset($_FILES['NRC_Copy']["name"])){
	$getFile=strtolower($_FILES['NRC_Copy']["name"]);
}
$imgFile="";
if($getFile != ""){
	$imgFile="upload/".$getFile;
	move_uploaded_file($_FILES["NRC_Copy"]["tmp_name"],$imgFile);
}

$getFile="";
if(isset($_FILES['Police_Recommendation']["name"])){
	$getFile=strtolower($_FILES['Police_Recommendation']["name"]);
}
$imgFile="";
if($getFile != ""){
	$imgFile="upload/".$getFile;
	move_uploaded_file($_FILES["Police_Recommendation"]["tmp_name"],$imgFile);
}

$getFile="";
if(isset($_FILES['Address_Recommendation']["name"])){
	$getFile=strtolower($_FILES['Address_Recommendation']["name"]);
}
$imgFile="";
if($getFile != ""){
	$imgFile="upload/".$getFile;
	move_uploaded_file($_FILES["Address_Recommendation"]["tmp_name"],$imgFile);
}



$majorOption="";

for ($i=0; $i <1; $i++) { 
	
	$majorOption.="<option >CST</option>
			<option >CS</option>
	                         <option >CT</option> ";
	
}



$dateOption="";
$dateOption=Date("Y/m/d");

if(@$_SESSION["accessLevel"]=="user" ){
$dbData=$db->query("select * from studentdetail where Student_ID='01' ")[0];

// $dbData=$db->query("select * from studentdetail join student join academic_year join year join pass_fail 
// 	where student.Student_ID=studentdetail.Student_ID AND  student.Year_ID=year.Year_ID AND 
// 	student.Academic_Year_ID=academic_year.Academic_Year_ID AND
// 	student.PF_ID=pass_fail.PF_ID AND studentdetail.Student_ID='01' ")[0];
}

$Academic_Year=array(0=>"",1=>"");
$Major_ID=array(0=>"", 1=>"");
$Date=array(0=>"",1=>"");
$Roll_No = array(0=>"",1=>"");
$Student_ID=array(0=>"",1=>"");
$Admission_Year=array(0=>"",1=>"");
$Name_Myan=array(0 =>"", 1=>'' );
$Name_Eng=array(0 =>"" ,1=> "");
$Nationality=array(0=>"",1=>"");
$Religion=array(0=>"",1=>"");
$Native_Town=array(0=>"",1=>"");
$Township=array(0=>"",1=>"");
$NRC=array(0=>"",1=>"");
$Date_Of_Birth=array(0=>"",1=>"");
$MRoll_No=array(0=>"",1=>"");
$M_Year=array(0=>"",1=>"");
$TotalMark=array(0=>"",1=>"");
$Dept_Of_Transistor=array(0=>"",1=>"");
$Permanent_Address=array(0=>"",1=>"");
$Contact_Address=array(0=>"",1=>"");
$Phone_Num=array(0=>"",1=>"");
$Email_Address=array(0=>"",1=>"");

$FName_Myan=array(0=>"",1=>"");
$FName_Eng=array(0=>"",1=>"");
$FNationality=array(0=>"",1=>"");
$FReligion=array(0=>"",1=>"");
$FNative_Town=array(0=>"",1=>"");
$FTownship=array(0=>"",1=>"");
$FNRC=array(0=>"",1=>"");
$FDate_Of_Birth=array(0=>"",1=>"");
$FOccupation=array(0=>"",1=>"");
$FPermanent_Address=array(0=>"",1=>"");
$FPhone_Num=array(0=>"",1=>"");

$MName_Myan=array(0=>"",1=>"");
$MName_Eng=array(0=>"",1=>"");
$MNationality=array(0=>"",1=>"");
$MReligion=array(0=>"",1=>"");
$MNative_Town=array(0=>"",1=>"");
$MTownship=array(0=>"",1=>"");
$MNRC=array(0=>"",1=>"");
$MDate_Of_Birth=array(0=>"",1=>"");
$MOccupation=array(0=>"",1=>"");
$MPermanent_Address=array(0=>"",1=>"");
$MPhone_Num=array(0=>"",1=>"");

$Name1=array(0=>"",1=>"");
$Relationship1=array(0=>"",1=>"");
$Occupation1=array(0=>"",1=>"");
$Permanent_Address1=array(0=>"",1=>"");
$Phone_Num1=array(0=>"",1=>"");

$Roll_No1 = array(0=>"",1=>"");
$Student_ID=array(0=>"",1=>"");
$Roll_No2=array(0=>"",1=>"");
$Roll_No3=array(0=>"",1=>"");
$Roll_No4=array(0=>"",1=>"");
$Roll_No5=array(0=>"",1=>"");
$Roll_No6=array(0=>"",1=>"");
$Roll_No7=array(0=>"",1=>"");
$Year_ID2=array(0=>"",1=>"");
$PF_ID2=array(0=>"",1=>"");
$Year_ID3=array(0=>"",1=>"");
$PF_ID3=array(0=>"",1=>"");
$Year_ID4=array(0=>"",1=>"");
$PF_ID4=array(0=>"",1=>"");
$Year_ID5=array(0=>"",1=>"");
$PF_ID5=array(0=>"",1=>"");
$Year_ID6=array(0=>"",1=>"");
$PF_ID6=array(0=>"",1=>"");
$Year_ID7=array(0=>"",1=>"");
$PF_ID7=array(0=>"",1=>"");
$Academic_Year_ID2= array(0=>"" ,1=>"" );
$Academic_Year_ID3= array(0=>"" ,1=>"" );
$Academic_Year_ID4= array(0=>"" ,1=>"" );
$Academic_Year_ID5= array(0=>"" ,1=>"" );
$Academic_Year_ID6= array(0=>"" ,1=>"" );
$Academic_Year_ID7= array(0=>"" ,1=>"" );
$Year_ID1=array(0=>"",1=>"");
$PF_ID1=array(0=>"",1=>"");
$Academic_Year_ID1= array(0=>"" ,1=>"" );

$error="";
$forTeacher="";
$text="";



if(isset($_POST['Save'])){
	
	    $Name_Eng[0]=trim($_POST['Name_Eng']);
	    $Name_Myan[0]=trim($_POST['Name_Myan']);
	    $Academic_Year[0]=trim($_POST['Academic_Year']);
	    $Major_ID[0]=trim($_POST['major']);
	    $Date[0]=trim($_POST['Date']);
	    $Roll_No[0]=trim($_POST['Roll_No']);
	    $Student_ID[0]=trim($_POST['Student_ID']);
	    $Admission_Year[0]=trim($_POST['Admission_Year']);
	    $Nationality[0]=trim($_POST['Nationality']);
	    $Religion[0]=trim($_POST['Religion']);
	    $Native_Town[0]=trim($_POST['nativeTown'] );
	    $Township[0]=trim($_POST['Township']);
	    $NRC[0]=trim($_POST['NRC']);
	    $Date_Of_Birth[0]=trim($_POST['Date_Of_Birth']);
	    $MRoll_No[0]=trim($_POST['MRoll_No']);
	    $TotalMark[0]=trim($_POST['TotalMark']);
	    $M_Year[0]=trim($_POST['M_Year']);
	    $Dept_Of_Transistor[0]=trim($_POST['Dept_Of_Transistor']);
	    $Permanent_Address[0]=trim($_POST['Permanent_Address']);
	    $Contact_Address[0]=trim($_POST['Contact_Address']);
	    $Phone_Num[0]=trim($_POST['Phone_Num']);
	    $Email_Address[0]=trim($_POST['Email_Address']);

	    $FName_Eng[0]=trim($_POST['FName_Eng']);
	    $FName_Myan[0]=trim($_POST['FName_Myan']);
                 $FNationality[0]=trim($_POST['FNationality']);
	    $FReligion[0]=trim($_POST['FReligion']);
	    $FNative_Town[0]=trim($_POST['FNative_Town']);
	    $FTownship[0]=trim($_POST['FTownship']);
	    $FNRC[0]=trim($_POST['FNRC']);
	    $FDate_Of_Birth[0]=trim($_POST['FDate_Of_Birth']);
	    $FOccupation[0]=trim($_POST['FOccupation']);
	    $FPermanent_Address[0]=trim($_POST['FPermanent_Address']);
	    $FPhone_Num[0]=trim($_POST['FPhone_Num']);

	    $MName_Eng[0]=trim($_POST['MName_Eng']);
	    $MName_Myan[0]=trim($_POST['MName_Myan']);
	    $MNationality[0]=trim($_POST['MNationality']);
	    $MReligion[0]=trim($_POST['MReligion']);
	    $MNative_Town[0]=trim($_POST['MNative_Town']);
	    $MTownship[0]=trim($_POST['MTownship']);
	    $MNRC[0]=trim($_POST['MNRC']);
	    $MDate_Of_Birth[0]=trim($_POST['MDate_Of_Birth']);
	    $MOccupation[0]=trim($_POST['MOccupation']);
	    $MPermanent_Address[0]=trim($_POST['MPermanent_Address']);
	    $MPhone_Num[0]=trim($_POST['MPhone_Num']);

	    $Name1[0]=trim($_POST['Name1']);
	    $Relationship1[0]=trim($_POST['Relationship1']);
	    $Occupation1[0]=trim($_POST['Occupation1']);
	    $Permanent_Address1[0]=trim($_POST['Permanent_Address1']);
	    $Phone_Num1[0]=trim($_POST['Phone_Num1']);
	    

		


	if($Academic_Year[0]=="" OR ! preg_match("/^[0-9]{4}(\-[0-9]{4})$/", $Academic_Year[0])){
		$Academic_Year[1]="has-error";
		$Academic_Year[0]="";
	}

	if($Admission_Year[0]=="" OR ! preg_match("/^[0-9]{4}$/", $Admission_Year[0])){
		$Admission_Year[1]="has-error";
		$Admission_Year[0]="";
	}

	if($Name_Myan[0]=="" OR ! preg_match("/^.{3,}$/", $Name_Myan[0])){
	
		$Name_Myan[1]="has-error";
		$Name_Myan[0]="";
	}
	if($Name_Eng[0]=="" OR !  preg_match("/^[A-Za-z  ].*$/",$Name_Eng[0])){
		$Name_Eng[1]="has-error";
		$Name_Eng[0]="";
	}
	
	
	if($Student_ID[0]=="" OR !  preg_match("/^[0-9]{4,}$/",$Student_ID[0])){
		$Student_ID[1]="has-error";
		$Student_ID[0]="";
	}
	
	if($Nationality[0]=="" OR ! preg_match("/^.{2,}$/", $Nationality[0])){
		$Nationality[1]="has-error";
		$Nationality[0]="";
	}
	if($Religion[0]=="" OR ! preg_match("/^.{2,}$/", $Religion[0])){
		$Religion[1]="has-error";
		$Religion[0]="";
	}
	if($Native_Town[0]=="" OR ! preg_match("/^.{2,}$/", $Native_Town[0])){
		$Native_Town[1]="has-error";
		$Native_Town[0]="";
	}
	if($Township[0]=="" OR ! preg_match("/^.{2,}$/", $Township[0])){		
		$Township[1]="has-error";
		$Township[0]="";
	}
	if($NRC[0]=="" OR ! preg_match("/^.{2,}$/", $NRC[0])){
		$NRC[1]="has-error";
		$NRC[0]="";
	}
	// if($Date_Of_Birth[0]=="" OR ! preg_match("/^ [0-9]{4}(\-[0-9]{1,})(\-[0-9]{1,})$/", $Date_Of_Birth[0])){
	// 	$Date_Of_Birth[1]="has-error";
	// 	$Date_Of_Birth[0]="";
	// }
	if($M_Year[0]=="" OR ! preg_match("/^[0-9]{4}$/", $M_Year[0])){
		$M_Year[1]="has-error";
		$M_Year[0]="";
	}
	if($MRoll_No[0]=="" OR ! preg_match("/^.{2,}$/", $MRoll_No[0])){
		$MRoll_No[1]="has-error";
		$MRoll_No[0]="";
	}
	// if ($TotalMark[0]=="" OR ! preg_match("/^ [0-9]{3} $/", $TotalMark[0])) {
	// 	$TotalMark[1]="has-error";
	// 	$TotalMark[0]="";
	// }
	// if($M_Year[0]=="" OR ! preg_match("/^ [0-9]{4}$/", $M_Year[0])){
	// 	$M_Year[1]="has-error";
	// 	$M_Year[0]="";
	// }
	if($Dept_Of_Transistor[0]=="" OR ! preg_match("/^.{2,}$/", $Dept_Of_Transistor[0])){
		$Dept_Of_Transistor[1]="has-error";
		$Dept_Of_Transistor[0]="";
	}
	if($Permanent_Address[0]=="" OR ! preg_match("/^.{2,}$/", $Permanent_Address[0])){
		$Permanent_Address[1]="has-error";
		$Permanent_Address[0]="";
	}
	if($Contact_Address[0]=="" OR ! preg_match("/^.{2,}$/", $Contact_Address[0])){
		$Contact_Address[1]="has-error";
		$Contact_Address[0]="";
	}
	if($Phone_Num[0]=="" OR !  preg_match("/^[0-9]{2,}(\-[0-9]{5,})$/", $Phone_Num[0])){
		$Phone_Num[1]="has-error";
		$Phone_Num[0]="";
	}
	//    false   OR ! false
	if($Email_Address[0]=="" OR  ! preg_match("/^[A-Za-z][0-9]{3,}$/",$Email_Address[0])){
		$Email_Address[1]="has-error";
		$Email_Address[0]="";	
	}


 	if($FName_Myan[0]=="" OR ! preg_match("/^.{2,}$/", $FName_Myan[0])){
		$FName_Myan[1]="has-error";
		$FName_Myan[0]="";
	}
	if($FName_Eng[0]=="" OR !  preg_match("/^[A-Za-z  ].*$/",$FName_Eng[0])){
		$FName_Eng[1]="has-error";
		$FName_Eng[0]="";
	}
	if($FNationality[0]=="" OR ! preg_match("/^.{2,}$/", $FNationality[0])){
		$FNationality[1]="has-error";
		$FNationality[0]="";
	}
	if($FReligion[0]=="" OR ! preg_match("/^.{2,}$/", $FReligion[0])){
		$FReligion[1]="has-error";
		$FReligion[0]="";
	}
	if($FNative_Town[0]=="" OR ! preg_match("/^.{2,}$/", $FNative_Town[0])){
		$FNative_Town[1]="has-error";
		$FNative_Town[0]="";
	}
	if($FTownship[0]=="" OR ! preg_match("/^.{2,}$/", $FTownship[0])){
		$FTownship[1]="has-error";
		$FTownship[0]="";
	}
	if($FNRC[0]=="" OR ! preg_match("/^.{2,}$/", $FNRC[0])){
		$FNRC[1]="has-error";
		$FNRC[0]="";
	}
	// if($FDate_Of_Birth[0]=="" OR ! preg_match("/^ [0-9]{4}(\-[0-9]{1,})(\-[0-9]{1,})$/", $FDate_Of_Birth[0])){
	// 	$FDate_Of_Birth[1]="has-error";
	// 	$FDate_Of_Birth[0]="";
	// }
	if($FOccupation[0]=="" OR ! preg_match("/^.{2,}$/", $FOccupation[0])){
		$FOccupation[1]="has-error";
		$FOccupation[0]="";
	}
	if($FPermanent_Address[0]=="" OR ! preg_match("/^.{2,}$/", $FPermanent_Address[0])){
		$FPermanent_Address[1]="has-error";
		$FPermanent_Address[0]="";
	}
	if($FPhone_Num[0]==""  OR !  preg_match("/^[0-9]{2,}(\-[0-9]{5,})$/", $FPhone_Num[0])){
		$FPhone_Num[1]="has-error";
		$FPhone_Num[0]="";
	}

	
	if($MName_Myan[0]=="" OR ! preg_match("/^.{2,}$/", $MName_Myan[0])){
		$MName_Myan[1]="has-error";
		$MName_Myan[0]="";
	}
	if($MName_Eng[0]=="" OR !  preg_match("/^[A-Za-z  ].*$/",$MName_Eng[0])){
		$MName_Eng[1]="has-error";
		$MName_Eng[0]="";
	}
	if($MNationality[0]=="" OR ! preg_match("/^.{2,}$/", $MNationality[0])){
		$MNationality[1]="has-error";
		$MNationality[0]="";
	}
	if($MReligion[0]=="" OR ! preg_match("/^.{2,}$/", $MReligion[0])){
		$MReligion[1]="has-error";
		$MReligion[0]="";
	}
	if($MNative_Town[0]=="" OR ! preg_match("/^.{2,}$/", $MNative_Town[0])){
		$MNative_Town[1]="has-error";
		$MNative_Town[0]="";
	}
	if($MTownship[0]=="" OR ! preg_match("/^.{2,}$/", $MTownship[0])){
		$MTownship[1]="has-error";
		$MTownship[0]="";
	}
	if($MNRC[0]=="" OR ! preg_match("/^.{2,}$/", $MNRC[0])){
		$MNRC[1]="has-error";
		$MNRC[0]="";
	}
	// if($MDate_Of_Birth[0]=="" OR ! preg_match("/^ [0-9]{4}(\-[0-9]{1,})(\-[0-9]{1,})$/", $MDate_Of_Birth[0])){
	// 	$MDate_Of_Birth[1]="has-error";
	// 	$MDate_Of_Birth[0]="";
	// }
	if($MOccupation[0]=="" OR ! preg_match("/^.{2,}$/", $MOccupation[0])){
		$MOccupation[1]="has-error";
		$MOccupation[0]="";
	}
	if($MPermanent_Address[0]=="" OR ! preg_match("/^.{2,}$/", $MPermanent_Address[0])){
		$MPermanent_Address[1]="has-error";
		$MPermanent_Address[0]="";
	}
	if($MPhone_Num[0]==""  OR !  preg_match("/^[0-9]{2,}(\-[0-9]{5,})$/", $MPhone_Num[0])){
		$MPhone_Num[1]="has-error";
		$MPhone_Num[0]="";
	}

	

	if($Name1[0]=="" OR ! preg_match("/^.{2,}$/", $Name1[0])){
		$Name1[1]="has-error";
		$Name1[0]="";
	}
	if($Relationship1[0]=="" OR ! preg_match("/^.{2,}$/", $Relationship1[0])){
		$Relationship1[1]="has-error";
		$Relationship1[0]="";
	}
	if($Occupation1[0]=="" OR ! preg_match("/^.{2,}$/", $Occupation1[0])){
		$Occupation1[1]="has-error";
		$Occupation1[0]="";
	}
	if($Permanent_Address1[0]=="" OR ! preg_match("/^.{2,}$/", $Permanent_Address1[0])){
		$Permanent_Address1[1]="has-error";
		$Permanent_Address1[0]="";
	}
	if($Phone_Num1[0]==""  OR !  preg_match("/^[0-9]{2,}(\-[0-9]{5,})$/", $Phone_Num1[0])){
		$Phone_Num1[1]="has-error";
		$Phone_Num1[0]="";
	}
	
	if(@$_SESSION["accessLevel"]!="user" ){
	
		$db->query( "insert into studentdetail(Student_ID,Admission_Year,Name_Myan,Name_Eng,Nationality,Religion,Date_Of_Birth,TownshipStateDivision,NRC,Native_Town,MarticulationRoll_No,Total_Mark,MarticulationYear,Dept_Of_Transistor,Permanent_Address,Contact_Address,Phone_Num,Email_Address,FatherName_Myan,FatherName_Eng,FatherNationality,FatherReligion,FatherDate_Of_Birth,FatherTownshipStateDivision,FatherNRC,FatherNative_Town,FatherOccupation,FatherPermanent_Address,FatherPhone_Num,MotherName_Myan,MotherName_Eng,MotherNationality,MotherReligion,MotherDate_Of_Birth,MotherTownshipStateDivision,MotherNRC,MotherNative_Town,MotherOccupation,MotherPermanent_Address,MotherPhone_Num,ProviderName,Relationship,ProviderOccupation,ProviderPermanent_Address,ProviderPhone_Num)
		  values('$Student_ID[0]','$Admission_Year[0]','$Name_Myan[0]','$Name_Eng[0]','$Nationality[0]','$Religion[0]','$Date_Of_Birth[0]','$Township[0]','$NRC[0]','$Native_Town[0]','$MRoll_No[0]','$TotalMark[0]','$M_Year[0]','$Dept_Of_Transistor[0]','$Permanent_Address[0]','$Contact_Address[0]','$Phone_Num[0]','$Email_Address[0]','$FName_Myan[0]','$FName_Eng[0]','$FNationality[0]','$FReligion[0]','$FDate_Of_Birth[0]','$FTownship[0]','$FNRC[0]','$FNative_Town[0]','$FOccupation[0]','$FPermanent_Address[0]','$FPhone_Num[0]','$MName_Myan[0]','$MName_Eng[0]','$MNationality[0]','$MReligion[0]','$MDate_Of_Birth[0]','$MTownship[0]','$MNRC[0]','$MNative_Town[0]','$MOccupation[0]','$MPermanent_Address[0]','$MPhone_Num[0]','$Name1[0]','$Relationship1[0]','$Occupation1[0]','$Permanent_Address1[0]','$Phone_Num[0]')");
		$db->query(" insert into student(Student_ID,Academic_Year_ID,Roll_No,Major_ID) values('$Student_ID[0]','$Academic_Year[0]','$Roll_No[0]','$Major_ID[0]')");
		
		}else{
		

		$db->query("update studentdetail set Permanent_Address='$Permanent_Address[0]',Contact_Address='$Contact_Address[0]',Phone_Num='$Phone_Num[0]',Email_Address='$Email_Address[0]',FatherPermanent_Address='$FPermanent_Address[0]',FatherPhone_Num='$FPhone_Num[0]',
			MotherPermanent_Address='$MPermanent_Address[0]',MotherPhone_Num='$MPhone_Num[0]',ProviderName='$Name1[0]',Relationship='$Relationship1[0]',ProviderOccupation='$Occupation1[0]',ProviderPermanent_Address='$Permanent_Address1[0]',ProviderPhone_Num='$Phone_Num1[0]' 
			where Student_ID='$userId' ");
		$db->query(" insert into student(Student_ID,Academic_Year_ID,Roll_No,Major_ID) values('$Student_ID[0]','$Academic_Year[0]','$Roll_No[0]','$Major_ID[0]')");

	}

}

// for access Level

if(@$_SESSION["accessLevel"]!="user" ){//for registration only

	  $form_data='
	<div class="form-group'. @$hasErrorFile.'">
	    <label for="NRC_Copy" class="control-label col-sm-2">ကျောင်းသားမှတ်ပုံတင်မိတ္တူ</label>
	  <input type="file" accept="image/*"  name="NRC_Copy">
	    '.$imgFile.'
	  </div>

	  <div class="form-group '.@$hasErrorFile.' ">
	    <label for="Police_Recommendation" class="control-label col-sm-2">ရဲစခန်းထောက်ခံစာ</label>
	  <input type="file" accept="image/*"  name="Police_Recommendation">
	    '.$imgFile.'
	  </div>

	  <div class="form-group  '.@$hasErrorFile.' ">
	    <label for="Address_Recommendation" class="control-label col-sm-2">ရပ်ကွက်ထောက်ခံစာ</label>
	  <input type="file" accept="image/*" name="Address_Recommendation">
	    '.$imgFile.'
	  </div>

	';
}else{ //for login user

$Roll_No1 = array(0=>"{$dbData['Roll_No']}",1=>"");
$Student_ID=array(0=>"{$dbData['Student_ID']}",1=>"");
$Admission_Year=array(0=>"{$dbData['Admission_Year']}",1=>"");
$Name_Myan=array(0 =>"{$dbData['Name_Myan']}", 1=>'' );
$Name_Eng=array(0 =>"{$dbData['Name_Eng']}" ,1=> "");
$Nationality=array(0=>"{$dbData['Nationality']}",1=>"");
$Religion=array(0=>"{$dbData['Religion']}",1=>"");
$Native_Town=array(0=>"{$dbData['Native_Town']}",1=>"");
$Township=array(0=>"{$dbData['TownshipStateDivision']}",1=>"");
$NRC=array(0=>"{$dbData['NRC']}",1=>"");
$Date_Of_Birth=array(0=>"{$dbData['Date_Of_Birth']}",1=>"");
$MRoll_No=array(0=>"{$dbData['MarticulationRoll_No']}",1=>"");
$M_Year=array(0=>"{$dbData['MarticulationYear']}",1=>"");
$TotalMark=array(0=>"{$dbData['Total_Mark']}",1=>"");
$Dept_Of_Transistor=array(0=>"{$dbData['Dept_Of_Transistor']}",1=>"");

$FName_Myan=array(0=>"{$dbData['FatherName_Myan']}",1=>"");
$FName_Eng=array(0=>"{$dbData['FatherName_Eng']}",1=>"");
$FNationality=array(0=>"{$dbData['FatherNationality']}",1=>"");
$FReligion=array(0=>"{$dbData['FatherReligion']}",1=>"");
$FNative_Town=array(0=>"{$dbData['FatherNative_Town']}",1=>"");
$FTownship=array(0=>"{$dbData['FatherTownshipStateDivision']}",1=>"");
$FNRC=array(0=>"{$dbData['FatherNRC']}",1=>"");
$FDate_Of_Birth=array(0=>"{$dbData['FatherDate_Of_Birth']}",1=>"");
$FOccupation=array(0=>"{$dbData['FatherOccupation']}",1=>"");

$MName_Myan=array(0=>"{$dbData['MotherName_Myan']}",1=>"");
$MName_Eng=array(0=>"{$dbData['MotherName_Eng']}",1=>"");
$MNationality=array(0=>"{$dbData['MotherNationality']}",1=>"");
$MReligion=array(0=>"{$dbData['MotherReligion']}",1=>"");
$MNative_Town=array(0=>"{$dbData['MotherNative_Town']}",1=>"");
$MTownship=array(0=>"{$dbData['MotherTownshipStateDivision']}",1=>"");
$MNRC=array(0=>"{$dbData['MotherNRC']}",1=>"");
$MDate_Of_Birth=array(0=>"{$dbData['MotherDate_Of_Birth']}",1=>"");
$MOccupation=array(0=>"{$dbData['MotherOccupation']}",1=>"");


$Year_ID1=array(0=>"{$dbData['Year']}",1=>"");
$PF_ID1=array(0=>"{$dbData['Pass_Fail']}",1=>"");
$Academic_Year_ID1= array(0=>"{$dbData['Academic_Year']}" ,1=>"" );


	$beingExam='
	 <div class="form-group " >
     <label for="Year_ID" class="control-label col-sm-2"> ဖြေဆိုခဲ့သည့်စာမေးပွဲများ</label>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" name="Year_ID" id="Year_ID" value="checked'.$Year_ID1[0].'"> ပထမနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" name="Year_ID" id="Year_ID" value="checked'.$Year_ID2[0].'"> ဒုတိယနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label><input type="checkbox" name="Year_ID" id="Year_ID" value="checked'.$Year_ID3[0].'" >တတိယနှစ် </label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label><input type="checkbox" name="Year_ID" id="Year_ID" value="checked'.$Year_ID4[0].'">စတုတ္ထနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" name="Year_ID" id="Year_ID" value="checked'.$Year_ID5[0].' ">ပဉ္စမနှစ်</label>
    </div>
    </div>
    </div>
  
<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No1" name="Roll_No1" value="'.$Roll_No1[0].' " placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID1" name="Academic_Year_ID1" 
              value="'.$Academic_Year_ID1[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID1" name="PF_ID1" value="'.$PF_ID1[0].' " placeholder="အောင်/ရှုံး">
    </div>
</div>

<div class="form-group " >
    <div class="col-sm-4">
          <input type="text" class="form-control " id="Roll_No2" name="Roll_No2" value="'.$Roll_No2[0] .' " placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID2" name="Academic_Year_ID2" value="'.$Academic_Year_ID2[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID2" name="PF_ID2" value="'.$PF_ID2[0].' " placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No3" name="Roll_No3 " value="'.$Roll_No3[0].' " placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID3" name="Academic_Year_ID3" value="'.$Academic_Year_ID3[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID3" name="PF_ID3" value="'.$PF_ID3[0].' " placeholder="အောင်/ရှုံး" >
    </div>
    </div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No4" name="Roll_No4" value="'.$Roll_No4[0].' " placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID4" name="Academic_Year_ID4" value="'.$Academic_Year_ID4[0].' " placeholder="ခုနှစ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID4" name="PF_ID4" value="'.$PF_ID4[0].' " placeholder="အောင်/ရှုံး"  >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No5" name="Roll_N5 " value="'.$Roll_No5[0].' " placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID5" name="Academic_Year_ID5" value="'.$Academic_Year_ID5[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID5" name="PF_ID5" value="'.$PF_ID5[0].' " placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No6" name="Roll_No6" value="'.$Roll_No6[0].' " placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID6" name="Academic_Year_ID6" value="'.$Academic_Year_ID6[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID6" name="PF_ID6" value="'.$PF_ID6[0].' " placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No7" name="Roll_No7" value="'.$Roll_No7[0].' " placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID7" name="Academic_Year_ID7" value="'.$Academic_Year_ID7[0].' " placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID7" name="PF_ID7" value="'.$PF_ID7[0].' " placeholder="အောင်/ရှုံး" >
    </div>
</div>


 	
';

}






require "view/user_registration.view.php";
?>