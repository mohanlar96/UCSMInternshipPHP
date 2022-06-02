<?php
require 'db_connection.php';


$id=$_POST['ID'];
$pwd=$_POST['password'];
echo  ($db->is_data("select * from login where User_ID='$id'
 and Password='$pwd'"))? "true" :"false" ;


?>