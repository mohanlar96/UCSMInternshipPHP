s<?php  
require 'db_connection.php';
                           
$ph=$_POST['phone'];
$owner_ID=$db->get("hostel","Phone='$ph'")[0]["OwnerID"];
console.log("ID $owner_ID");

if($db->delete("hostel","Phone='$ph'")){
    echo "true";

}

if($db->delete("login","User_ID='$owner_ID'")){
    echo "true";

}



 
?>
