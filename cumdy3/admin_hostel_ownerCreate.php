<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span> 
<a herf = "admin_hostel.php" id = "linkStyle">Hostel</a> ';


$hostel_list="";
$db_data = $db->selectStar("hostel");
foreach ($db_data as $key ) {
	$hostel_name = $key["HostelName"];
	$phone = $key["Phone"];
	$hostel_list.="<option>$hostel_name,$phone</option>";
}
$useridErr  =  $usernameErr = $passwordErr= "";
$userid =  $name = $password= "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $db_login = $db->query("select * from login where User_ID like 'h%'"  );   
    $login_size = count($db_login)+1;
    $userid = "h".(string)$login_size; 
    $username = $_POST["username"];                         
    $password = $_POST["password"];
    $hostel_select = $_POST["hostel"] ;

    if (empty($username)) {
    	$usernameErr = "Username is required";
  	}elseif (count($db->get("login","Username='$username'"))>0) {
      $usernameErr = "Username is already eixst";
    }
  	if (empty($userid)) {
    	$useridErr = "User id is required";
  	}
  	if (empty($password)) {
    	$passwordErr = "Password is required";
  	}

  	if($useridErr == "" && $usernameErr == "" && $passwordErr== "") {
  		$hostel_arr = explode(",", $hostel_select);
  		$hostel_name = $hostel_arr[0];
  		$phone = $hostel_arr[1];
  		$hostelid = $db->get("hostel","HostelName='$hostel_name'","Phone='$phone'")[0]["HostelID"];
  		$db->query("insert into login values('$userid','$username','$password','user')");
		$db->query("update hostel set OwnerID='$userid' where HostelName='$hostel_name' and Phone='$phone'");  			
  	}
  }



require "view/admin_hostel_ownerCreate.view.php";
?>