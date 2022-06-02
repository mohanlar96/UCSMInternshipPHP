<?php 

require "db_connection.php";


$db=new Database($config);

$newsid=$_POST['newsid'];
	
	$data=$db->query("delete from scholarshippic where image='$newsid'");
	
	
	/*else if($idintern)
	{
		$db->delete("internship","I_ID='$idintern' ");
	}
	else if($idsponsor)
	{
		$db->delete("sponsorshipapplicant","App_ID='$idsponsor' ");
	}*/
	




?>