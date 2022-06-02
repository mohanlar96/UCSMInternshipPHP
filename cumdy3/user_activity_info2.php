<?php
require 'session_public.php';
$active_nav_information="id='active-nav' ";
//$active_nav_home="";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";




$year=$_GET["academicyear"];
$test=$db->query("select Academic_Year_ID from student1 where academic_year='$year' ");
foreach ($test as $key => $value) {
  $yearid=$value["Academic_Year_ID"];
}
echo "$yearid";

$sTable=" ";  

  $data= $db->query ( " select * from student1 join participant join event join type
                        where  student1.Student_ID=participant.Student_ID and 
                        participant.Event_ID=event.Event_ID and 
                        event.Type_ID=type.Type_ID and student1.Academic_Year_ID='$yearid' ");


foreach ($data as $key => $value) {
  	$name= $value["Name_Eng"];
  	$rno= $value["Roll_No"];
    $academicyear=$value["Academic_Year"];
  	$typename=$value["Type_Name"];
  	$remark=$value["Remark"];
  	$sTable.="<tr> <td> $name  </td> <td> $rno </td> <td> $academicyear </td>  <td> $typename </td> <td> $remark </td> </tr>  ";
}

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "user_activity_info2.php" id = "linkStyle">Activity Type</a>'; 




require "view/user_activity_info2.view.php";
?>