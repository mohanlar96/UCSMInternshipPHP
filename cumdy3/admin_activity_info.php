<?php
require 'session_admin.php';
//$active_nav_home="";
//$active_nav_Activity="id='active-nav'";
//$active_nav_about="";
//$active_nav_signup="";
//$active_nav_login="";
$active_nav_information="id='active-nav'";


$studentTable=" ";

 $data=$db->query ( " select Academic_Year from student1");
 foreach ($data as $key => $value){
 	
 	$year=$value["Academic_Year"];

	$studentTable.="<tr>  <td> $year </td> </tr> ";

}
  


$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_activity_info.php" id = "linkStyle">Student Information</a>'; 

require "view/admin_activity_info.view.php";
?>