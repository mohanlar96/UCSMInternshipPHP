<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms_edit.php" 
id = "linkStyle">Edit Mark</a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';

$bar1="";
$qString="";
$subname="";
$stuid="";
$year="";
$exam="";
$term="";

	  
 $yearId=$_GET['yearId'];
 $major=$_GET['majorId'];
 
$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];

$subjectCode1=$db->query("select Year_ID, Major_ID, Section_ID, SubCode
                       from lmsinfo
                       where lmsinfo.Teacher_ID='$userId'");
                                        
//$showTable="";

foreach($subjectCode1 as $key => $value)
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

}


     $bar1.="$TeacherName &gt; {$_GET['year']} &gt; {$_GET['section']}
     &gt; {$_GET['subName']}";


     if(isset($_POST['update']))
     {

      $rr=$_POST['roll_no'];
      $mk=$_POST['mark'];

      
      $ss=$db->get("lmsinsert","roll_no='$rr'")[0]["Student_ID"];
     
     $db->query("update mark set mark='".$mk."' where Student_ID 
                  LIKE '%".$ss."%' ");


     }

     




require 'view/admin_lms_edit.view.php';

?>