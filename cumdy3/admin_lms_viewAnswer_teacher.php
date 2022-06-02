<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms_viewAnswer_teacher.php" 
id = "linkStyle">View Answer</a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';


$qString="";
$yearId=$_GET['yearId'];
$majordId=$_GET['majorId'];
$sectionId=$_GET['sectionId'];
$subCode=$_GET['subName'];


$showTable=" <tr><th>File Name</th><th>Due Date</th><th>View Answer</th>
              </tr>";
$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];
$subjectCode=$db->query("select Year_ID, Major_ID, Section_ID, SubCode
                      from lmsinfo
                      where lmsinfo.Teacher_ID='$userId'");

foreach($subjectCode as $key => $value) {
  $yearId=$value['Year_ID'];
  $majordId=$value['Major_ID'];
  $section_id=$value['Section_ID'];
  $subname=$value['SubCode'];

  $yearName=$db->get("year","Year_ID='$yearId'")[0]["Year"];
  $majorName=$db->get("major","Major_ID='$majordId'")[0]["Major"];
  $sectionName=$db->get("section","Section_ID='$section_id'")[0]["Section_Name"];
  $subjectName=$db->get("lmsinfo","SubCode='$subname'")[0]["SubCode"];

  $qString="yearId=$yearId&majorId=$majordId&sectionId=$section_id&
  userId=$userId&
  section=$sectionName&subName=$subjectName&year=$yearName&major=$majorName";
 
 }
$res =$db->query("select * from file_download_teacher where 
Teacher_ID='$userId' and  Year_ID='$yearId' and Section_ID='$sectionId' 
and SubCode='$subCode' ");

  foreach ($res as $key => $row) 
  {

  $id     = $row['Tfile_ID'];
  $term   =$row['Term_ID'];
  $teacher=$row['Teacher_ID'];
  $year   =$row['Year_ID'];
  $section=$row['Section_ID'];
  $subject= $row['SubCode'];
  $date   = $row['Date'];
  $name   =$row['Upload_File_Name'];
  $path   = $row['Path'];
  $link="<a href='admin_lms_download_teacher.php?$qString'>View Answer</a>";
 
  $showTable.="<tr><td>$name</td><td>$date</td><td>$link</td></tr>";  
}
if(!is_array(@$res[0]))
{
   $showTable="<p class='alert alert-info'> No Data Were Uploaded Yet </p>";
}
  $bar="";
    $bar.="$TeacherName &gt; {$_GET['year']} &gt;
     {$_GET['section']} &gt; {$_GET['subName']}";

    $dataString="data=$bar&".$qString;

     


require "view/admin_lms_viewAnswer_teacher.view.php";

?> 