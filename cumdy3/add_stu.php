<?php 
require 'session_admin.php';


if(isset($_GET['submit'])){

$StuId=$_GET['StudentId'];
$row=$db->query("select * from cardetail where Student_ID='".$StuId."'");
$no=count($row);
$ro=$db->query("select * from cardetail where CarNo='".$userId."'");
$sno=count($ro);

if($sno<=20){

if($no==0){
$db->query("insert into cardetail (Student_ID,CarNo) 
	values('$StuId','$userId')");
$db->query("delete from booking where Student_ID='".$StuId."'");
$message="<h3 align='center'style='color:cyan;'>Successful.</h3>";
}else{
$message="<h3 align='center' style='color:red;'>This student 
is already existing in you car or other car!</h3>";
}
}
else{
	$message="<h3 align='center' style='color:red;'>
	Your Passengers is full!</h3>";
}

}
require 'view/add_stu.view.php';
?>