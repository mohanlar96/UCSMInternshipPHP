<?php

require 'db_connection.php';

$db=new Database($config);

$id=$_POST['id'];
$db->delete("student","Student_ID='$id' ");

?>

