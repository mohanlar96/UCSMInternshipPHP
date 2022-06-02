<?php
require 'session_admin.php';
$db->query("SET character_set_results=utf8");



$id=$_GET["stdID"];



$getFile="";
if(isset($_FILES['Photo']["name"])){
	$getFile=strtolower($_FILES['Photo']["name"]);
}
$imgFile="";
if($getFile != ""){
	$imgFile="upload/".$getFile;
	move_uploaded_file($_FILES["Photo"]["tmp_name"],$imgFile);
}

$majorOption="";

for ($i=0; $i <1; $i++) { 
	
	$majorOption.="<option >CST</option>
			<option >CS</option>
	                         <option >CT</option> ";
	
}



$dateOption="";
$dateOption=Date("Y/m/d");

$dbData=$db->query("select * from studentdetail join  student join year join pass_fail join academic_year join major where student.Student_ID=studentdetail.Student_ID AND studentdetail.Student_ID='$id' AND student.Year_ID=year.Year_ID AND student.PF_ID=pass_fail.PF_ID AND student.Academic_Year_ID=academic_year.Academic_Year_ID AND student.Major_ID=major.Major_ID")[0];

$Academic_Year=array(0=>"{$dbData['Academic_Year']}",1=>""); // 0->value 1->has-error 
$Major_ID=array(0=>"{$dbData['Major']}", 1=>"");
$Roll_No=array(0=>"{$dbData['Roll_No']}",1=>"");
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
$Permanent_Address=array(0=>"{$dbData['Permanent_Address']}",1=>"");
$Contact_Address=array(0=>"{$dbData['Contact_Address']}",1=>"");
$Phone_Num=array(0=>"{$dbData['Phone_Num']}",1=>"");
$Email_Address=array(0=>"{$dbData['Email_Address']}",1=>"");

$FName_Myan=array(0=>"{$dbData['FatherName_Myan']}",1=>"");
$FName_Eng=array(0=>"{$dbData['FatherName_Eng']}",1=>"");
$FNationality=array(0=>"{$dbData['FatherNationality']}",1=>"");
$FReligion=array(0=>"{$dbData['FatherReligion']}",1=>"");
$FNative_Town=array(0=>"{$dbData['FatherNative_Town']}",1=>"");
$FTownship=array(0=>"{$dbData['FatherTownshipStateDivision']}",1=>"");
$FNRC=array(0=>"{$dbData['FatherNRC']}",1=>"");
$FDate_Of_Birth=array(0=>"{$dbData['FatherDate_Of_Birth']}",1=>"");
$FOccupation=array(0=>"{$dbData['FatherOccupation']}",1=>"");
$FPermanent_Address=array(0=>"{$dbData['FatherPermanent_Address']}",1=>"");
$FPhone_Num=array(0=>"{$dbData['FatherPhone_Num']}",1=>"");

$MName_Myan=array(0=>"{$dbData['MotherName_Myan']}",1=>"");
$MName_Eng=array(0=>"{$dbData['MotherName_Eng']}",1=>"");
$MNationality=array(0=>"{$dbData['MotherNationality']}",1=>"");
$MReligion=array(0=>"{$dbData['MotherReligion']}",1=>"");
$MNative_Town=array(0=>"{$dbData['MotherNative_Town']}",1=>"");
$MTownship=array(0=>"{$dbData['MotherTownshipStateDivision']}",1=>"");
$MNRC=array(0=>"{$dbData['MotherNRC']}",1=>"");
$MDate_Of_Birth=array(0=>"{$dbData['MotherDate_Of_Birth']}",1=>"");
$MOccupation=array(0=>"{$dbData['MotherOccupation']}",1=>"");
$MPermanent_Address=array(0=>"{$dbData['MotherPermanent_Address']}",1=>"");
$MPhone_Num=array(0=>"{$dbData['MotherPhone_Num']}",1=>"");

$Name1=array(0=>"{$dbData['ProviderName']}",1=>"");
$Relationship1=array(0=>"{$dbData['Relationship']}",1=>"");
$Occupation1=array(0=>"{$dbData['ProviderOccupation']}",1=>"");
$Permanent_Address1=array(0=>"{$dbData['ProviderPermanent_Address']}",1=>"");
$Phone_Num1=array(0=>"{$dbData['ProviderPhone_Num']}",1=>"");

$Roll_No1 = array(0=>"{$dbData['Roll_No']}",1=>"");
$Year_ID1=array(0=>"{$dbData['Year']}",1=>"");
$PF_ID1=array(0=>"{$dbData['Pass_Fail']}",1=>"");
$Academic_Year_ID1= array(0=>"{$dbData['Academic_Year']}" ,1=>"" );
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



// $forTeacher="";
// $text="";

// if(explode('_', $userId)[0]=="MOST"){

// 	$forTeacher="style='display:none';";
// 	$text="<div class='well well-lg'>Registration For Student Only </div>";

// }

$you_are_here=' <a herf = "admin.php" id = "linkStyle">Home</a> <span class = "animate">  > <a herf = "admin_registration_std_detail.php" id = "linkStyle">Registration</a> </span>
';

		




require "view/admin_registration_std_detail.view.php";
?>