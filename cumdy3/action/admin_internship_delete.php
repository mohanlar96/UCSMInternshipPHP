<?php 

require "db_connection.php";


$db=new Database($config);

$idintern=$_POST['idintern'];
	
		
		$data=$db->query("delete from internship where I_ID='$idintern'");
	
	
	
?>


