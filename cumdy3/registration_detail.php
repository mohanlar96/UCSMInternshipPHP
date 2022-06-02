<?php
require 'session_admin.php';
$font=$db->query("SET character_set_results=utf8");



$id= $_GET['id'];
$query=$db->query("select * from studentdetail join student where student.Student_ID=studentdetail.Student_ID and student.Year_ID='$id' ");

$displayTable="";


foreach ($query as $key => $value){
	$Student_ID=$value['Student_ID'];
 	$Name_Myan=$value['Name_Myan'];
	$Name_Eng=$value['Name_Eng'];
	$Date_Of_Birth=$value['Date_Of_Birth'];
	$NRC=$value['NRC'];
	$MRoll_No=$value['MarticulationRoll_No'];
	$M_Year=$value['MarticulationYear'];
	$FName_Myan=$value['FatherName_Myan'];
	$FName_Eng=$value['FatherName_Eng'];
	$FDate_Of_Birth=$value['FatherDate_Of_Birth'];
	$FNRC=$value['FatherNRC'];
	$MName_Myan=$value['MotherName_Myan'];
	$MName_Eng=$value['MotherName_Eng'];
	$MDate_Of_Birth=$value['MotherDate_Of_Birth'];
	$MNRC=$value['MotherNRC'];
	
	$btnDetail ="<a href='registration_std_detail.php?stdID=$Student_ID'><button class='btn btn-primary'  data-Student_ID='$Student_ID' data-action='Detail' >Detail</button></a>";
	$btnDel ="<button class='btn btn-primary' id='Delete' data-Student_ID='$Student_ID' data-action='Delete'>Delete</button>";



	$displayTable.="<tr class='active'>
			         <td>$Student_ID</td>
			          <td>$Name_Myan</td>
			          <td>$Name_Eng</td> 
			          <td>$NRC</td> 
			          <td>$Date_Of_Birth</td> 
			          <td>$MRoll_No</td> 
			          <td>$M_Year</td> 
			          <td>$FName_Myan</td>
			          <td>$FName_Eng</td> 
			          <td>$FNRC</td> 
			          <td>$FDate_Of_Birth</td>
			          <td>$MName_Myan</td>
			          <td>$MName_Eng</td> 
			          <td>$MNRC</td> 
			          <td>$MDate_Of_Birth</td>
			          <td> $btnDetail</td>
			           <td>$btnDel</td> </tr>";
			           
}
$you_are_here=' <a herf = "admin.php" id = "linkStyle">Home</a> <span class = "animate">  > <a herf = "admin_registration_detail.php" id = "linkStyle">Registration</a> </span>
';


require "view/admin_registration_detail.view.php";
?>

