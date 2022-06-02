<?php
require 'db_connection.php';

$msg="";



	$username=trim($_POST["username"]);
	$password=trim($_POST["password"]);
	
	$db_data=$db->query("select * from login where Username='$username' and Password='$password' ");
	


		if(is_array(@$db_data[0])){ //test for username and password is in database
			$id=$db_data[0]['User_ID'];



			$access_type=$db_data[0]['Access_Level'];
			if ($access_type=="user") {
				$_SESSION["accessLevel"]="user";
				$_SESSION["cumdyUserId"]=$id;		
				$_SESSION['isLogin']="true";


				$msg= "user";
				// header("Location:index.php");

			
			}elseif ($access_type=="admin" OR $access_type=="Dean" OR $access_type=="MDean" OR $access_type=="Rector"){
				
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				if($access_type=="Dean"){
					$_SESSION["accessType"]="Dean";
				}elseif($access_type=="MDean"){
					$_SESSION["accessType"]="MDean";

				}elseif ($access_type=="Rector") {
					$_SESSION["accessType"]="Rector";
				}
				$msg= "admin";

			
		
			}elseif($access_type=="activityadmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isActivityAdminLogin"]="true";

				$msg= "admin";


			}elseif($access_type=="caradmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isCarAdminLogin"]="true";

				$msg= "admin";


			}elseif($access_type=="scholarshipadmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isScholarshipAdminLogin"]="true";

				$msg= "admin";
			}elseif($access_type=="courseadmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isCourseAdminLogin"]="true";

				$msg= "admin";


			


			}elseif($access_type=="schoolfeeadmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isSchoolfeeAdminLogin"]="true";

				$msg= "admin";


			}elseif($access_type=="libraryadmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isLibraryAdminLogin"]="true";

				$msg= "admin";


			}elseif($access_type=="hosteladmin"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isHostelAdminLogin"]="true";

				$msg= "admin";


			}elseif($access_type=="driver"){
				$_SESSION["cumdyUserId"]=$id;
				$_SESSION["loginProcess"]="true";
				$_SESSION["isDriverLogin"]="true";
				$msg= "admin";

			}else{
				$msg="Error in Database conncetion or Session";
			}

		}else{
			$msg="Your Username and  Password Incorrect";
		}




	


echo $msg;

?>