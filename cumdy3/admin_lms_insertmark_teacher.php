<?php
require 'session_admin.php';
$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_insertmark_teacher.php" 
id = "linkStyle">Insert Mark</a>';

$bar1="";
$qString="";
$subname="";
$stuid="";
$year="";
$exam="";
$term="";

    
 $yearId=$_GET['yearId'];
 $major=$_GET['majorId'];
 $data="";
$TeacherName =$db->get("teacher","Teacher_ID='$userId'")[0]['Teacher_Name'];

$subjectCode1=$db->query("select Year_ID, Major_ID, Section_ID, SubCode
                       from lmsinfo
                       where lmsinfo.Teacher_ID='$userId'");
                                        
$showTable="";

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
     


$subjectCode=$db->query("select lmsinsert.Student_ID,lmsinsert.Roll_No,
  lmsinsert.Name_Eng
    from  lmsinsert join lmsinfo              
  where lmsinsert.Year_ID=lmsinfo.Year_ID and
  lmsinsert.Section_ID=lmsinfo.Section_ID and
  lmsinsert.Major_ID='$major'  and
  lmsinfo.Teacher_ID='$userId'");

 
 $table_output="<table class='table table-responsive'>
    <tr>
    
    <th>Roll Number</th>
    <th>Name Eng</th>
    <th>Mark</th>
    </tr>";
 
if($_POST["save"]==="Save"){

$SubCode=$_POST['SubCode'];
$term_id=$_POST['term_id'];
$year_id=$_POST['year_id'];
$exam_type_id=$_POST['exam_type_id'];

foreach ($_POST as $key => $value) {
  
  if( $key!="SubCode" AND $key!="exam_type_id" AND $key!="term_id"
   AND $key!="year_id" AND $key!="save"){

    $mark=$_POST[$key];

    $db->delete("mark","SubCode='$SubCode' and Term_ID='$term_id'
     and Academic_Year_ID='$year_id' and Exam_Type_ID='$exam_type_id' and Student_ID='$key'");
    $dbInsert="insert into mark(SubCode,Student_ID,Term_ID,Exam_Type_ID,Mark,Academic_Year_ID)
      values('$SubCode','$key','$term_id','$exam_type_id','$mark','$year_id')";

     $db->query($dbInsert);

  }

}
}


foreach($subjectCode as $key => $value) {


  $stuid=$value['Student_ID'];
  $rno1=$value['Roll_No'];
  $neng1=$value['Name_Eng'];
  

  
  $stuid1=$db->get("lmsinsert","Student_ID='$stuid'")[0]['Student_ID'];
  $rno=$db->get("lmsinsert","Roll_No='$rno1'")[0]['Roll_No'];
  $neng=$db->get("lmsinsert","Name_Eng='$neng1'")[0]['Name_Eng'];




  

  
  
    
//pattern='[0-20]{1}'
  
  $mark="<input disabled='disabled'  type='number' name='$stuid'
   class='mark' data-stdId='$stuid' maxlength='2' min='1' max='20'>";

                            

  $table_output.="
  <tr>
  
  <td>$rno</td>
  <td>$neng</td>
  <td>$mark</td>
  
  
  
  </tr>";

}
      
    
$table_output.="</table>"; 


  

  $save="<a href='admin_lms_insertmark_teacher.php'>
  <button class='btn btn-primary'  disabled='disabled' id='save'  
  name='save' value='Save'  
   data-action='save' >
  Save All</button>";
    



        
require "view/admin_lms_insertmark_teacher.view.php";

?>