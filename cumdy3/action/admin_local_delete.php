<?php 

require "db_connection.php";

$db=new Database($config);

$localid=$_POST['localid'];
	
	$data=$db->query("delete from localscholarimage where imageName='$localid'");
	
	
	/*else if($idintern)
	{
		$db->delete("internship","I_ID='$idintern' ");
	}
	else if($idsponsor)
	{
		$db->delete("sponsorshipapplicant","App_ID='$idsponsor' ");
	}*/
	




?>