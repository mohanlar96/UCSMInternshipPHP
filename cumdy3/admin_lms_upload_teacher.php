<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms_upload_teacher.php" 
id = "linkStyle">Upload File</a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';


$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];
$bar="";
$showTable="";
$qString="";

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
 
 }
    foreach ($_GET as $key => $value) {
      $qString.="$key=$value&";
    }


    $bar.="$TeacherName &gt; {$_GET['year']} &gt; {$_GET['section']} &gt; 
    {$_GET['subName']}";

    $dataString="data=$bar&".$qString;


require "view/admin_lms_upload_teacher.view.php";
?>