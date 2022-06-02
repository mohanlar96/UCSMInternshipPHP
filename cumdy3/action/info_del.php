<?php 

require "db_connection.php";

$db=new Database($config);


$no=$_POST['typeid'];
if($db->delete("type","Type_ID='$no' ")){
	echo "true";

}




?>