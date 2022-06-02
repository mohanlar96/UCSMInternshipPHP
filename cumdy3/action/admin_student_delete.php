<?php 

require "db_connection.php";


$db=new Database($config);

$sscholar=$_POST['sscholar'];
	
	$data=$db->query("delete from scholarshipdetail where Scholar_ID='$sscholar'");
	$data1=$db->query("delete from scholarship where Scholar_ID='$sscholar'");
	
	/*else if($idintern)
	{
		$db->delete("internship","I_ID='$idintern' ");
	}
	else if($idsponsor)
	{
		$db->delete("sponsorshipapplicant","App_ID='$idsponsor' ");
	}*/
	




?>