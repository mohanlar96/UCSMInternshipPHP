<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms_download_teacher.php" 
id = "linkStyle">View Answer</a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';
$qString="";
$bar="";
$showTable="";
$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];

$subjectCode=$db->query("select Year_ID, Major_ID, Section_ID, SubCode
                       from lmsinfo
                       where lmsinfo.Teacher_ID='$userId'");





foreach($subjectCode as $key => $value)
 {
  $yearId=$value['Year_ID'];
  $majordId=$value['Major_ID'];
  $section_id=$value['Section_ID'];
  $subname=$value['SubCode'];

  $yearName=$db->get("year","Year_ID='$yearId'")[0]["Year"];
  $majorName=$db->get("major","Major_ID='$majordId'")[0]["Major"];
  $sectionName=$db->get("section","Section_ID='$section_id'")[0]["Section_Name"];
  $subjectName=$db->get("lmsinfo","SubCode='$subname'")[0]["SubCode"];

  $qString="yearId=$yearId&majorId=$majordId&sectionId=$section_id&userId=$userId&
  section=$sectionName&subName=$subjectName&year=$yearName&major=$majorName";
 
 }
//$student=$db->get("file_download_student","Year_ID='$yearId'")[0]["Student_ID"];
//$roll=$db->get("lmsinsert","Student_ID='$student'")[0]["Roll_No"];




$res =$db->query("select * from file_download_student where 
                  Year_ID='$yearId' and Section_ID='$section_id' 
                  and SubCode='$subname'");

  foreach ($res as $key => $row) 
  {
  $id     = $row['Sfile_ID'];
  $term   =$row['Term_ID'];
  $student=$row['Student_ID'];
  $year   =$row['Year_ID'];
  $section=$row['Section_ID'];
  $subject= $row['SubCode'];
  $date   = $row['Date'];
  $name   =$row['Upload_File_Name'];
  $path   = $row['Path'];
  $link="<a href='admin_lms_download.php?down=$path'>Download</a>";


  //$stuid=$db->query("select Student_ID from file_download_student
  //where Student_ID='$student'");

  $roll=$db->get("lmsinsert","Student_ID='$student'")[0]["Roll_No"];

  $showTable.="<tr><td>$roll</td> <td>$date</td> <td>$name</td> <td>$link</td></tr>";

    
}


$year=$_GET['year'];
//$major=$_GET['major'];
$section=$_GET['section'];
$subname=$_GET['subName'];


 if(!is_array(@$res[0]))
 {
   $showTable="<p class='alert alert-info'> No Data Were Uploaded Yet </p>";
}
  $bar="";

foreach ($_GET as $key => $value) 
{
  $qString.="$key=$value&";
}
   $bar.="$TeacherName &gt; $year &gt; $section &gt; $subname";

    $dataString="data=$bar&".$qString;

require "view/admin_lms_download_teacher.view.php";
?>