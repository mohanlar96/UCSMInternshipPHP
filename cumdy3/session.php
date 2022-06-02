<?php
$is_sessioin_login="false";
@session_start();
require 'library/database/config.php';
require 'library/database/database.php';
$db=new Database($config);
$active_nav_home="";
$active_nav_register="";
$active_nav_student="";
$active_nav_information="";
$active_nav_university="";



if(isset($_SESSION["accessLevel"])){
	if($_SESSION["accessLevel"]=="user"){
		 header("location:user.php");
		
		}elseif ($_SESSION["accessLevel"]=="admin") {
			 header("location:admin.php");
		}

}

$now_nav_session="HOME";

$nav_login='<li> <a href="#myPage" data-toggle="modal" data-target="#myModal"> Login</a></li>';

$information_nav_menu='
				<li><a href="user_activity.php"> Activity</a></li> 
                  <li><a href="user_course.php"> Courses </a></li>
                  <li><a href="user_hostel.php"> Hostel Information</a></li>
                  <li><a href="user_transpotation.php?id=1&name=MANDALAY"> Transportation Servie</a></li>
                  <li><a href="user_registration.php"> Registration</a></li>
                  <li><a href="user_scholarship.php"> Scholarship and Internship</a></li> 
                   <li><a href="user_libiary.php?name=Library&isLogin=true">Library</a></li> 
                  <li><a href="user_about.php"> About Us</a></li> 


                  ';
 $university_nav_menu='
                  <li><a href="#local_financial"> Financial Information</a></li>
                  <li><a href="#local_teacher"> Teacher Information </a></li> 
	
 							';    


$student_nav_menu= '<li><a href="#local_attendance" > Attendance Information</a></li>
                  <li><a href="#local_time"> Time Table</a></li>
                  <li><a href="#local_student"> Master Information</a></li>
                   <li><a href="user_result.php">Results</a></li> 

                  ';	

$register_nav_menu='
                  <li><a href="#local_school"> School Fee</a></li> 
                  <li><a href="#" data-toggle="modal" data-target="#myCreate"> Create An Account</a></li>
                  <li><a href="#local_classroom">Class Room Information</a></li> 	
                  ';	

$getQString="";
foreach ($_GET as $key => $value) {
     $getQString.="$key=$value&";



}
 $you_are_here="";




?>