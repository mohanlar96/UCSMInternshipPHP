<?php
require 'db_connection.php';
$term_id=$_POST['term_id'];
$year_id=$_POST['year_id'];
$exam_type_id=$_POST['exam_type_id'];
$code=$_POST["SubCode"];

if($term_id!="" AND $year_id!="" AND $exam_type_id!=""){

	$data[0]="enable";

	$data[1]=$db->get("mark","Term_ID='$term_id' and Academic_Year_ID='$year_id' 
		and Exam_Type_ID='$exam_type_id' and SubCode='$code'");
	
	// $datas=array_sum($data[0],$data[1]);

	echo json_encode($data);


}



?>