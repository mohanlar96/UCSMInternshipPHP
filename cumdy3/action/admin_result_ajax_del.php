<?php
require 'db_connection.php';


$id=$_POST["ID"];
$Serial_No=$_POST["Serial_No"];


$S_ID=$db->get("subjectinformation","Serial_No='$Serial_No'")[0]["Subject_Division_ID"];
if(isset($S_ID)){

	// $db->delete("subject_division","ID='$id'");


}else{



$db->delete("subject_percent","Percent_ID='$id'");
}
?>


