
<?php
require 'session_admin.php';
$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms.php" 
id = "linkStyle">Uploadfile</a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';

$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];
 
$subjectCode=$db->query("select Year_ID, Major_ID, Section_ID, SubCode
	                     from lmsinfo
	                     where lmsinfo.Teacher_ID='$userId'");
												              	
$showTable="";

foreach($subjectCode as $key => $value)
 {
	$yearId=$value['Year_ID'];
	$majorId=$value['Major_ID'];
	$section_id=$value['Section_ID'];
	$subname=$value['SubCode'];

	$yearName=$db->get("year","Year_ID='$yearId'")[0]["Year"];
	$majorName=$db->get("major","Major_ID='$majorId'")[0]["Major"];
	$sectionName=$db->get("section","Section_ID='$section_id'")[0]["Section_Name"];
	$subjectName=$db->get("lmsinfo","SubCode='$subname'")[0]["SubCode"];

	$qString="yearId=$yearId&majorId=$majorId&sectionId=$section_id&
	userId=$userId&
	section=$sectionName&subName=$subjectName&year=$yearName&major=$majorName";

	$btn="<a href='admin_lms_upload_teacher.php?$qString'>
	<button class='btn btn-success' id='viewupload'
	 data-yr='$yearName' data-section='$sectionName'
	 data-sub='$subjectName' data-action='Uploadfile'> Upload </button> </a>";

	$btn1="<a href='admin_lms_insertMark_teacher.php?$qString'>
	<button class='btn btn-success' id='viewinsert' 
	data-yr='$yearName' data-section='$sectionName'
	 data-sub='$subjectName' data-action='Insertmark'> Insert Mark </button> </a>";
	
	$link="<a href='admin_lms_download_teacher.php?$qString'>View Answer</a>";
	
	$showTable.="<tr> <td>$yearName </td> <td>$majorName</td><td>$sectionName</td> 
	 <td>$subjectName </td>  <td>$btn</td> <td>$btn1</td><td>$link</td></tr>";

}
require "view/admin_lms.view.php";
?>