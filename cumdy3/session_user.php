<?php
session_start();
require 'library/database/config.php';
require 'library/database/database.php';
$db=new Database($config);

$active_nav_home="";
$active_nav_register="";
$active_nav_student="";
$active_nav_information="";
$active_nav_university="";


if( $_SESSION["accessLevel"]!=="user"  ){
header("location:index.php");
 die();
}

$userId =$_SESSION["cumdyUserId"];
// echo "Current Login Admmision Or User Id is  <span style='color:red;'>" .$userId ."</span>

// You Can Access this userId with a Variable call <span style='color:red;font-size:20px;'> &dollar;userId</span> Or <span style='color:red;font-size:20px;'> &dollar;_GET['userId']</span> ";
// ;


$userName=$db->get("studentdetail"," Student_ID='$userId'")[0]['Name_Eng'];
// $userName="Mg Krishna Wagle";

$now_nav_session="USER";
$information_nav_menu='
				<li><a href="user_activity.php?name=ACTIVITY&isLogin=true"> Activity</a></li> 
                  <li><a href="user_course.php?name=COURSES&isLogin=true "> Courses </a></li>
                  <li><a href="user_hostel.php?name=HOSTEL INFORMATION&isLogin=true"> Hostel Information</a></li>
                  <li><a href="user_transpotation.php?name=TRANSPORATION SERVIE&isLogin=true"> Transportation Servie</a></li>
                  <li><a href="user_registration.php?name=REGISTRATION&isLogin=true"> Registration</a></li>
                  <li><a href="scholar_sponsor.php?name=SCHOLARSHIP AND INTERNSHIP&isLogin=true"> Scholarship and Internship</a></li> 
                   <li><a href="user_libiary.php?name=Library&isLogin=true">Library</a></li> 
                  <li><a href="user_about.php?name=ABOUT US&isLogin=true"> About Us</a></li> 

                  ';
 $university_nav_menu='
                  <li><a href="user_finical.php?name=FINANCIAL INFORMATION"> Finical Information</a></li>
                  <li><a href="user_teacher.php?name=TEACHER INFORMATION"> Teacher Information </a></li> 
	
 							';    


$student_nav_menu= '<li><a href="user_attendance.php?name=ATTENDANCE"> Attendance Information</a></li>
                  <li><a href="http://192.168.43.240:8080/Timetable/project.html"> Time Table</a></li>
                  <li><a href="user_master.php?name=MASTER INFORMATION"> Master Information</a></li>
                <li><a href="user_lms.php?name=RESULT">Learning Management</a></li> 
                        <li><a href="user_result.php?name=RESULT">Results</a></li> 

                  ';
 $register_nav_menu='
                  <li><a href="user_class.php?name=CLASS ROOM INFORMATION">Class Room Information</a></li> 	
                  ';	
$nav_login=' <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span style="font-size: 37px;
line-height: 0.3;" class="fa fa-user"></span> '.$userName.'
                <span class="caret"></span></a>
                <ul class="dropdown-menu my-drop-down  ">

                  <li><a href="#myPage" data-toggle="modal" data-target="#mySetting"> Change Password</a></li> 

                  <li><a href="logout.php">Logout</a></li> 



                </ul>
              </li>';


$getQString="";
foreach ($_GET as $key => $value) {
     $getQString.="$key=$value&";



}

 $you_are_here="";

?>
