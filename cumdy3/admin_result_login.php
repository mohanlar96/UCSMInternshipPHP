
<?php
require 'session_admin.php';

$active_nav_student="id='active_nav'";

$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_result_login.php" id = "linkStyle">Result Admin Log In</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


$msg="";



if($_SERVER["REQUEST_METHOD"]==="POST"){
	$username=trim($_POST["username"]);
	$password=trim($_POST["password"]);
	$db_data=$db->query("select * from login where Username='$username' and Password='$password'");
	
	
	if($_POST["login"]=="Login"){
		if(is_array(@$db_data[0])){ //test for username and password is in database
			
			
			$access_type=$db_data[0]['Access_Level'];
			// if ($access_type=="user") {
			// 	$_SESSION["accessLevel"]="user";
			// 	$_SESSION["cumdyUserId"]=$db_data[0]['User_ID'];
			// 	$id=$db_data[0]['User_ID'];
			// 	header("location:login/user/user.php?userId=$id");
			// }
			if ($access_type=="admin"){
				$_SESSION["accessLevel"]="admin";
				$id=$db_data[0]['User_ID'];
				$_SESSION["cumdyUserId"]=$db_data[0]['User_ID'];
				header("location:admin_result.php?userId=$id");
			}elseif{
				$msg="Error in Database conncetion or Session ";
			}

		}else{
			$msg=" Your Username and  Password Incorrect ...";
		}




	} //end for post=post



}   //end for server menthod
 //header("location:login/user/user.php");
	//header("location:login/admin/admin.php");

require "view/admin_result_login.view.php";
?>