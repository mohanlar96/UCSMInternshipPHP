<?php
require 'session_user.php';

$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_lms_viewAnswer_student.php" id = "linkStyle">
View Answer</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'
.$title.'</a>';
 
 $showTable="";
 $qString="";
 $bar="";

$userName =$db->get("lmsinsert","Student_ID='$userId'")[0]['Name_Eng'];
$sub1=$_GET['subName1'];
$tea=$_GET['teacher'];
$yr=$_GET['yearId'];
$sec=$_GET['sectionId'];


$subjectCode=$db->query("select 
 lmsinfo.SubCode,lmsinsert.Year_ID,lmsinsert.Major_ID,lmsinsert.Section_ID
from lmsinfo join lmsinsert
where lmsinfo.Year_ID=lmsinsert.Year_ID
and lmsinfo.Section_ID=lmsinsert.Section_ID
and lmsinfo.Major_ID=lmsinsert.Major_ID
and lmsinfo.Teacher_ID='$tea'
and lmsinsert.Student_ID='$userId' ");

foreach ($subjectCode as $key => $value) 
{
  //$teacher=$value['Teacher_ID'];
  $sub1=$value['SubCode'];
  $yr=$value['Year_ID'];
  $maj=$value['Major_ID'];
  $sec=$value['Section_ID'];

  //$teacherName=$db->get("teacher","Teacher_ID='$teacher'")[0]["Teacher_Name"];
  $subjectName1=$db->get("lmsinfo","SubCode='$sub1'")[0]["SubCode"];
  $yearName=$db->get("year","Year_ID='$yr'")[0]["Year"];
  $majorName=$db->get("major","Major_ID='$maj'")[0]["Major"];
  $sectionName=$db->get("section","Section_ID='$sec'")[0]["Section_Name"];

  $qString="yearId=$yr&majorId=$maj&sectionId=$sec&teacher=$tea&userId=$userId&
  section=$sectionName&subName1=$subjectName1&year=$yearName&major=$majorName";

  $btnsub="<a href='user_lms_viewAnswer_student.php?$qString'>
  <button class='btn btn-success' data-year='$yr' data-major='$maj'
   data-section='$sec' data-sub='$sub1'>$subjectName1</button> </a>";

 // $showTable.="<tr> <td>$teacherName </td> <td>$btnsub</td> </tr>";
}







//$teacher=$_GET['teacher'];

$res =$db->query("select * from file_download_teacher where Teacher_ID='$tea'");


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

  $linkdown="<a href='user_lms_download1.php?down=$path'>Download</a>";
  $linkupload="<a href='user_lms_uploadForm_student.php?$qString'>Upload</a>";
  $showTable.="<tr><td>$name</td> <td>$date</td> <td>$linkdown</td>
  <td>$linkupload</td> </tr>";
}




foreach ($_GET as $key => $value) {
      $qString.="$key=$value&";
    }


    $bar.="$userName &gt; {$_GET['year']} &gt; {$_GET['major']}
     &gt; {$_GET['section']}
     &gt; {$_GET['subName1']}";

    $dataString="data=$bar&".$qString;

    if(!is_array(@$res[0])){
   $showTable="<p class='alert alert-info'> No Data Were Uploaded Yet </p>";
}
  
require "view/user_lms_download_student.view.php";

?> 