<?php 

require "db_connection.php";

$db=new Database($config);


$no=$_POST['number'];
if($db->delete("activity_calendar","Number='$no' ")){
	echo "true";

}




?>