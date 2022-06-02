<?php 

require '..\library\database\config.php';
require '..\library\database\database.php';

$db=new Database($config);


$no=$_POST['Id'];

$db->delete("cardetail","Student_ID='$no' ");
		

	



?>