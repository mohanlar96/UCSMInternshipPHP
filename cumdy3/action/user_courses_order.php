<?php
require 'db_connection.php';
$db=new Database($config);

$userId=$_POST['UserID'];
$subID=$_POST['SubID'];

// var_dump($_POST);


$db->query("insert into orders(User_ID) values('$userId');");
$id=end($db->selectStar("orders"))['Order_ID'];



$db->query("insert into orderdetails(Order_ID,Sub_ID) values('$id','$subID')");



?>