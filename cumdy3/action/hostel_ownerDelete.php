<?php  
require 'db_connection.php';
                            
$id=$_POST['userid'];
if($db->delete("login","User_ID='$id'")){
    echo "true";

}




 
?>
