<?php 

require "db_connection.php";


$db=new Database($config);

$tscholar=$_POST['tscholar'];
	
		$db->query("delete from scholarshipdetail where Scholar_ID='$tscholar'");
		$data=$db->query("delete from scholarship where Scholar_ID='$tscholar'");
	
	
?>


