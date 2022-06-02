<?php
require 'session.php';

if(@$_SESSION["isDriverLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:driver.php");
		
				

}
if(@$_SESSION["isLibraryAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:libraryAdminPage.php");
		}
		
				

if(@$_SESSION["isScholarshipAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_scholarship.php");
		
}
if(@$_SESSION["isSchoolfeeAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_school_fee.php");
		
				

}

if(@$_SESSION["isActivityAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_activity.php");
		
				

}


if(@$_SESSION["isHostelAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_hostel.php");
		
				

}
if(@$_SESSION["isCarAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_transportation.php");
		
				

}

if(@$_SESSION["isCourseAdminLogin"]=="true"){
		$_SESSION["accessLevel"]="admin";
			header("location:admin_course.php");
		
				

}

if($_SESSION["loginProcess"]!="true"){
	header("Location:index.php");
}



$id=$_SESSION['cumdyUserId'];



if(@$_POST['admin']==="true"){
	unset($_SESSION["loginProcess"]);


			$_SESSION["accessLevel"]="admin";
				
				header("location:admin.php");

	
}else if(@$_POST['user']==="true"){
					unset($_SESSION["loginProcess"]);


					$_SESSION["accessLevel"]="user";
					$_SESSION["isLogin"]="true";
				
				$_SESSION["cumdyUserId"]=$id;

				header("location:user.php");

	




}

require "view/loging.view.php";
?>