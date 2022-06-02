<?php 
require 'session_public.php';
		
$active_nav_information="id='active-nav' ";
//$active_nav_home="";
//$active_nav_Activity="";
//$active_nav_about="id='active-nav'";
//$active_nav_signup="";
//$active_nav_login="";


$participantTable="";

$eID=$_GET['eventId'];
$data= $db->query ( " select * from  student1  join participant join event join type 
	                  where  student1.Student_ID=participant.Student_ID and 
	                  participant.Event_ID=event.Event_ID and event.Type_ID=type.Type_ID and 
	                  event.Event_ID='$eID'");
 foreach ($data as $key => $value) {
    $rno=$value["Roll_No"];
    $name=$value["Name_Eng"];
    $session=$value["No_Of_Session"];
    $date=$value["Date"];
    $time=$value["Time"];
  	$participantTable.="<tr> <td> $rno </td> <td> $name </td>
                       <td> $session </td> <td> $date </td>  <td> $time </td> </tr>";
    
}
  	
  	
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "user_activity_participant.php" id = "linkStyle">Activity Type</a>'; 

require "view/user_activity_participant.view.php";
?>