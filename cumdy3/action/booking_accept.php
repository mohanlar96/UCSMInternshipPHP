<?php 

require '..\library\database\config.php';
require '..\library\database\database.php';

$db=new Database($config);
$carno=$_POST["carno"];
$stuId=$_POST["stuid"];
$stu=$db->query("select * from cardetail where 
	Student_ID='".$stuId."'");
$studid=count($stu);
if($studid==0){
	
$db->query("insert into cardetail(CarNo,Student_ID)values('$carno','$stuId')");
}
else{


$db->query("update cardetail set CarNo='".$carno."' where Student_ID LIKE '%".$stuId."%'");
}
$db->delete("booking","Student_ID='$stuId' ");




		

	



?>