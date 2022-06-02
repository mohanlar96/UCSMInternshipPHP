<?php
require "db_connection.php";


$value=$_POST['search'];

$data=$db->query("select * from library_book where book_Name LIKE '%$value%' ");

echo json_encode($data);


?>