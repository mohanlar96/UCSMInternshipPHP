<?php
require 'db_connection.php';


$id=$_POST['ID'];
$pwd=$_POST['pwd'];
$db->update("login","Password='$pwd'","User_ID='$id'");
echo "true";


?>