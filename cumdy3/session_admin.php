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


$level="ADMIN";



if($_SESSION["accessLevel"] !=="admin"){
	
 header("location:index.php");

}

$userId =$_SESSION["cumdyUserId"];
// echo "Current Login Admmision Or User Id is  <span style='color:red;'>" .$userId ."</span>

// You Can Access this userId with a Variable call <span style='color:red;font-size:20px;'> &dollar;userId</span> Or <span style='color:red;font-size:20px;'> &dollar;_GET['userId']</span> ";
// ;

$now_nav_session="ADMIN";

$information_nav_menu='
				<li><a href="admin_activity.php?name=ACTIVITY MANAGEMENT ADMIN"> Activity</a></li>  
                  <li><a href="admin_course.php?name=COURSES MANAGEMENT ADMIN"> Courses </a></li>
                  <li><a href="admin_hostel.php?name=HOSTEL MANAGEMENT ADMIN"> Hostel Information</a></li>
                  <li><a href="admin_transportation.php?name=TRANSPORATION MANAGEMENT ADMIN"> Transportation Servie</a></li>
                  <li><a href="admin_registration.php?name=REGISTRATION MANAGEMENT ADMIN"> Registration</a></li>
                  <li><a href="admin_scholarship.php?name=SCHOLARSHIP MANAGEMENT ADMIN"> Scholarship and Internship</a></li> 
                   <li><a href="libraryAdminPage.php?name=Library&isLogin=true">Library</a></li> 

                  <li><a href="admin_about.php?name=ABOUT US MANAGEMENT ADMIN"> About Us</a></li> 

                  ';
 $university_nav_menu='
                  <li><a href="admin_finical.php?name=FINANCIAL MANAGEMENT ADMIN"> Financial Information</a></li>
                  <li><a href="admin_teacher.php?name=TEACHER MANAGEMENT ADMIN"> Teacher Information </a></li> 
	
 							';    


$student_nav_menu= '<li><a href="admin_attendance.php?name=ATTENDANCE MANAGEMENT ADMIN" > Attendance Information</a></li>
                  <li><a href="http://192.168.43.240:8080/Timetable/project.html"> Time Table</a></li>
                  <li><a href="admin_master.php?name=MASTER INFORMATION MANAGEMENT ADMIN"> Master Information</a></li>
                   <li><a href="admin_lms.php?name=RESULT">Learning Management</a></li> 
                    <li><a href="admin_result.php?name=RESULT MANAGEMENT ADMIN">Results</a></li> 

                  ';	


 $register_nav_menu='
                  <li><a href="admin_school_fee.php?name=SCHOOL FEE MANAGEMENT ADMIN"> School Fee</a></li> 
                  <li><a href="admin_class.php?name=CLASS ROOM MANAGEMENT ADMIN">Class Room Information</a></li> 	
                  ';	

$userName=@$db->get("studentdetail"," Student_ID='$userId'  ")[0]['Name_Eng'];


$nav_login=' <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span style="font-size: 37px;
line-height: 0.3;" class="fa fa-user"></span> '."$userName".'
                <span class="caret"></span></a>
                <ul class="dropdown-menu my-drop-down  ">
                  <li><a href="#myPage" data-toggle="modal" data-target="#mySetting"> Change Password</a></li>               
                  <li><a href="go_to_user_session.php" >GoTo User Session</a></li> 
                  <li><a href="logout.php">Logout</a></li> 

                </ul>
              </li>';

$getQString="";
foreach ($_GET as $key => $value) {
     $getQString.="$key=$value&";



}
if(@$_SESSION["isDriverLogin"]=="true"){

$information_nav_menu="";
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}


if(@$_SESSION["isActivityAdminLogin"]=="true"){

$information_nav_menu=' <li><a href="admin_activity.php?name=ACTIVITY MANAGEMENT ADMIN"> Activity</a></li>  
';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}
if(@$_SESSION["isHostelAdminLogin"]=="true"){

$information_nav_menu=' <li><a href="admin_hostel.php?name=HOSTEL MANAGEMENT ADMIN"> Hostel Information</a></li>
 
';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}

if(@$_SESSION["isCourseAdminLogin"]=="true"){

$information_nav_menu='                  <li><a href="admin_course.php?name=COURSES MANAGEMENT ADMIN"> Courses </a></li>

';
$university_nav_menu="";
$student_nav_menu='';
$register_nav_menu="";

}


if(@$_SESSION["isLibraryAdminLogin"]=="true"){

$information_nav_menu='                   <li><a href="libraryAdminPage.php?name=Library&isLogin=true">Library</a></li> 
      ';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}

if(@$_SESSION["isSchoolfeeAdminLogin"]=="true"){

$information_nav_menu='   <li><a href="admin_school_fee.php?name=SCHOOL FEE MANAGEMENT ADMIN"> School Fee</a></li>
      ';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}
if(@$_SESSION["isScholarshipAdminLogin"]=="true"){

$information_nav_menu='    <li><a href="admin_scholarship.php?name=SCHOLARSHIP MANAGEMENT ADMIN"> Scholarship and Internship</a></li> 
      ';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}

if(@$_SESSION["isCarAdminLogin"]=="true"){

$information_nav_menu='  <li><a href="admin_transportation.php?name=SCHOOL FEE MANAGEMENT ADMIN"> Manage Driver</a></li>        ';
$university_nav_menu="";
$student_nav_menu="";
$register_nav_menu="";

}


if(@$_SESSION["accessType"]=="Dean"){
  $information_nav_menu="";
   
$university_nav_menu='<li><a href="admin_teacher.php?name=TEACHER MANAGEMENT ADMIN"> Teacher Information </a></li> 
';
$student_nav_menu='                   <li><a href="admin_lms.php?name=RESULT">Learning Management</a></li> 
';
$register_nav_menu="";
}








if(@$_SESSION["accessType"]=="MDean"){
  $information_nav_menu="";
   
$university_nav_menu='<li><a href="admin_teacher.php?name=TEACHER MANAGEMENT ADMIN"> Teacher Information </a></li> 
';
$student_nav_menu="";
$register_nav_menu="";
}




 $you_are_here="";







?>