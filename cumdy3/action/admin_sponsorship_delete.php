<?php 

require "db_connection.php";


$db=new Database($config);

$idmanage=$_POST['idmanage'];
$awardid=$_POST['awardid'];
	
	if($idmanage)
	{
		$data=$db->query("delete from sponsorshipapplicant where Roll_No='$idmanage'");
	}
	else if ($awardid)
	{
		$data=$db->query("delete from sponsorshipaward where Award_ID='$awardid'");
	}
	
	
?>