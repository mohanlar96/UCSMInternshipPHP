<?php 
require 'session_admin.php';	
$active_nav_home="id='active-nav'";



$active_pass="id='active-nav'";
$active_booking="";


$data=$db->query("select student.Student_ID,student.Roll_No,studentdetail.Name_Eng 
	from cardetail,student,studentdetail where cardetail.Student_ID=student.Student_ID AND 
	student.Student_ID=studentdetail.Student_ID AND student.Academic_Year_ID='05' AND cardetail.CarNo LIKE '%".$userId."%'");



$output="<h2>$userId Car Passenger List </h2>
<table class='table table-responsive table-hover' id='stable'><tr>
		 <th width='20%'> Student ID </th>
		 <th width='30%'>Roll No</th>
		 <th width='45%'> Name </th>
		 <th width='5%'></th>
		 </tr>  ";
foreach ($data as $key => $value){
	
	$StudentId=$value["Student_ID"];
	$rollNo=$value["Roll_No"];
	$name=$value["Name_Eng"];
$del="<button class='btn btn-danger' id='del' data-id='$StudentId'>-</button>";
$output.="<tr>
		      <td>$StudentId</td>
		      <td>$rollNo</td>
		      <td>$name </td>
		      <td> $del</td></tr>";


}
$output.="<tr><td></td><td></td></td><td></td>
		<td> <a href='add_stu.php?CarNo=".$userId."' class='btn btn-info'>add</a></td></tr></table>";


$book=$db->query("select * from booking where CarNo LIKE'".$userId."'");
$bo="<table class='table table-responsive table-hover'>
<tr><th>Student_ID</th><th>PhoneNo</th><th>Time</th>";


foreach ($book as $key => $value) {
 $stud=$value['Student_ID'];
 $pho=$value['PhoneNo'];
 $time=$value['Time'];
 $access="<button class='btn btn-info' id='access' data-carno='$userId'>Accept</button>";
 $unacess="<button class='btn btn-danger' id='unacess' data-carno='$userId'>Deny</button>";
$bo.="<tr class='active'><td>$stud</td><td>$pho</td><td>$time</td><td>$access</td><td>$unacess</td></tr>";

}
$bo.="</table>";



require "view/driver.view.php";
?>