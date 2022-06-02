<?php
require 'db_connection.php';

  $department_id=$_POST['department'];
  $position_name=$_POST['position'];
  if(($position_name !="")&&($department_id !="") )
  {
  	   $db_data=$db->query("select Teacher_ID,Teacher_Name from teacher join department join teacher_details where teacher.Department_ID=department.Department_ID and teacher.Teacher_ID=teacher_details.Teacher_ID and department.Department_ID='$department_id' and teacher.Position='$position_name' ");
  echo json_encode($db_data);

  }elseif (($position_name !="")&&($department_id =="")) {
  	$db_data=$db->query("select Teacher_ID,Teacher_Name from teacher join department join teacher_details where teacher.Department_ID=department.Department_ID and teacher.Teacher_ID=teacher_details.Teacher_ID and teacher.Position='$position_name' ");
  echo json_encode($db_data);
  	
  }

?>