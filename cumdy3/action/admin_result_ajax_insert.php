<?php
require 'db_connection.php';

$pid=$_POST["Percent_ID"];
$serialNo=$_POST["Serial_No"];
$f_percent=$_POST["First_Term_Percent"];
$s_percent=$_POST["Second_Term_Percent"];
$m_ID=$_POST["Major_ID"];
$S_ID=$db->get("subjectinformation","Serial_No='$serialNo'")[0]["Subject_Division_ID"];

if(isset($S_ID)){
	


	$db->query("update subject_division set First_Term_Percent='$f_percent',Second_Term_Percent='$s_percent' where ID='$pid'");
	

}else{

echo "inserting data $pid , $serialNo ,$f_percent, $s_percent ,$m_ID ";
//$db->insert("subject_percent"," '$pid','$serialNo','$f_percent','$s_percent','$m_ID'");
$db->query("insert into subject_percent(Percent_ID,Serial_No,First_Term_Percent,Second_Term_Percent,Major_ID) values('$pid','$serialNo','$f_percent','$s_percent','$m_ID')");


}


?>