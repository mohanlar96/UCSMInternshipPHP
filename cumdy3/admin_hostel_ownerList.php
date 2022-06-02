<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span> 
<a herf = "admin_hostel.php" id = "linkStyle">Hostel</a> ';


  
$owner_list="";
$db_data=$db->query("select * from login where User_ID like 'h%'"  );   
    foreach ($db_data as $key ) {
           $userid = $key["User_ID"]; 
           $username = $key["Username"];
           $password = $key["Password"]; 
           $hostel_arr=$db->query("select * from hostel where OwnerID='$userid'"  );  
           $hostel_name = $hostel_arr[0]["HostelName"];
           $phone = $hostel_arr[0]["Phone"];
   $owner_list.=
   "<tr>
    <td>$username</td>
    <td>$password</td>
    <td>$hostel_name,$phone</td>
    <td><button class='btn btn-primary' data-userid='$userid'>Delete</button></td>  
  </tr>";
    }
        
      
 
require "view/admin_hostel_ownerList.view.php";
?>
