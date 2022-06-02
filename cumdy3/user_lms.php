<?php
require 'session_user.php';
$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_lms.php" id = "linkStyle">Upload File</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';

$showTable="";
$bar="";
$qString="";

$userName =$db->get("lmsinsert","Student_ID='$userId'")[0]['Name_Eng'];
//$yms=$db->query("select Year_ID,Major_ID,Section_ID,SubCode
 //from lmsinsert  where lmsinsert.Student_ID='$userId'");

/*foreach ($yms as $key => $value) {
	$yr=$value['Year_ID'];
	$maj=$value['Major_ID'];
	$sec=$value['Section_ID'];
}*/
$subjectCode=$db->query("select lmsinfo.Teacher_ID,
 lmsinfo.SubCode,lmsinsert.Year_ID,lmsinsert.Major_ID,lmsinsert.Section_ID
from lmsinfo join lmsinsert
where lmsinfo.Year_ID=lmsinsert.Year_ID
and lmsinfo.Section_ID=lmsinsert.Section_ID
and lmsinfo.Major_ID=lmsinsert.Major_ID
and lmsinsert.Student_ID='$userId' ");

foreach ($subjectCode as $key => $value) 
{
	$teacher=$value['Teacher_ID'];
	$sub1=$value['SubCode'];
	$yr=$value['Year_ID'];
	$maj=$value['Major_ID'];
	$sec=$value['Section_ID'];

	$teacherName=$db->get("teacher","Teacher_ID='$teacher'")[0]["Teacher_Name"];
	$subjectName1=$db->get("lmsinfo","SubCode='$sub1'")[0]["SubCode"];
	$yearName=$db->get("year","Year_ID='$yr'")[0]["Year"];
	$majorName=$db->get("major","Major_ID='$maj'")[0]["Major"];
	$sectionName=$db->get("section","Section_ID='$sec'")[0]["Section_Name"];

	$qString="yearId=$yr&majorId=$maj&sectionId=$sec&teacher=$teacher&userId=$userId&
	section=$sectionName&subName1=$subjectName1&year=$yearName&major=$majorName";

	$btnsub="<a href='user_lms_viewAnswer_student.php?$qString'>
	<button class='btn btn-success' data-year='$yr' data-major='$maj'
	 data-section='$sec' data-sub='$sub1'>$subjectName1</button> </a>";

	$showTable.="<tr> <td>$teacherName </td> <td>$btnsub</td> </tr>";
}
$bar.="$userName &gt; $yearName &gt; $majorName &gt; $sectionName";


require "view/user_lms.view.php";
?>