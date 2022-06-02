<?php
require 'db_connection.php';
$name=trim($_POST['searchName']); //s
$data=$db->query("select Teacher_Name from teacher where Teacher_Name Like '%$name%' ");
echo json_encode($data);

?>