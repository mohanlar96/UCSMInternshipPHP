<?php
require 'db_connection.php';
require 'session_admin.php';

$active_nav_university="id='active-nav'";

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';
//$db=new Database($config); //

  
  $department_id=$_POST['department'];

  $db_data=$db->query("select Teacher_Name from teacher join department where teacher.Department_ID=department.Department_ID and department.Department_ID='$department_id' ");


  echo json_encode($db_data);


  
?>