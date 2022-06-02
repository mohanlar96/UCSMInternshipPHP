<?php
require 'db_connection.php';	

	$id=trim($_POST['id']);
	$email=trim($_POST['email']);
	$username=trim($_POST['username']);
	$password=trim($_POST['password']);
	$re_password=trim($_POST['Repassword']);

	if(explode("_", $id)[0]=="MOST"){

		if(!$db->is_data("select * from login where User_ID='$id'")){ // he have no account ..

			$isTeacher=$db->is_data("select * from teacher_details where Email_Address='$email' 
				and Teacher_ID='$id'");
			if($isTeacher){
				if($db->is_data("select * from login where username='$username'")) {
					$msg_alert="
					This Username is not Availiable For You Please Select 
					Another Username ";
					

				}else{
					if($password===$re_password){
											//everythis is okay now inserting data
						$db->insert("login","'$id','$username','$password','user' ");

						$msg_alert="success";
						// header("Location:login.php?username=$username&info=Your Are Successfully Register <strong> Please Login</strong>");

					}else{
					$msg_alert="
						
						Your Password Is Not Match . Please Type Correctly! 
						";
					}


				}



			}else{
				$msg_alert="
				Your Eamil and Admmision ID Doesn't Match. 
				May Be, You Are Not A Teacher From Our University! 
				 Please <a href='user_registration.php'> Register </a> First ! ";

			}
	}else{
		$user=$db->get("login","User_ID='$id' ")[0]['Username'];
	$msg_alert="
	 Your Admmision_No Have Already  Registered. Please <a href='login.php?username=$user'> 
	 Login </a> For More Information ! Your Username is <strong style='color:black'> <a href='login.php?username=$user'> $user </a></strong> ";

	}


	}else{ //if not a teacher ID
		if(!$db->is_data("select * from login where User_ID='$id'")){ // he have no account ..

			$isStudent=$db->is_data("select * from studentdetail where Email_Address='$email' 
				and Student_ID='$id'");
			if($isStudent){
				if($db->is_data("select * from login where username='$username'")) {
					$msg_alert="
					This Username is not Availiable For You Please Select 
					Another Username ";
					

				}else{
					if($password===$re_password){
											//everythis is okay now inserting data
						$db->insert("login","'$id','$username','$password','user' ");

						$msg_alert="success";
						// header("Location:login.php?username=$username&info=Your Are Successfully Register <strong> Please Login</strong>");

					}else{
					$msg_alert="
						
						Your Password Is Not Match . Please Type Correctly! 
						";
					}


				}



			}else{
				$msg_alert="
				Your Eamil and Admmision ID Doesn't Match. 
				May Be, You Are Not A Student From Our University! 
				 Please <a href='user_registration.php'> Register </a> First ! ";

			}
	}else{
		$user=$db->get("login","User_ID='$id' ")[0]['Username'];
	$msg_alert="
	 Your Admmision_No Have Already  Registered. Please <a href='login.php?username=$user'> 
	 Login </a> For More Information ! Your Username is <strong style='color:black'> <a href='login.php?username=$user'> $user </a></strong> ";

	}

	}


echo $msg_alert;
	?>