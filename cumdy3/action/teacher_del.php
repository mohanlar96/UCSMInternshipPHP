<?php 

require 'db_connection.php';


$srno=$_POST['srno'];
if($db->delete("teacher","Sr_No='$srno'")){
	echo "true";

}




?>