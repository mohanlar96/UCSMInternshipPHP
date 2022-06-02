<?php 
require 'session_admin.php';



 if(isset($_GET['submit'])){


$car_no=$_GET['CarNo'];
$driver_name=$_GET['Dname'];
$phone_no=$_GET['Phone'];
$town_id=$_GET['town'];
$way=$_GET['Way'];


if($town_id==1)
{
	$price=35000;
}
elseif ($town_id==2) {
$price=15000;
}
elseif ($town_id==3) {
$price=25000;
}
elseif ($town_id==4) {
$price=35000;
}
elseif($town_id==5){
	$price=35000;
}
$row=$db->query("select * from car where CarNo='".$car_no."'");
$no=count($row);

if($no==0){
$db->query("insert into car(CarNo,TownID,MaxCapacity,Price) values('$car_no','$town_id',20,'$price')");

 $db->query("insert into driver(CarNo,DriverName,PhoneNo) values('$car_no','$driver_name','$phone_no')");
 $db->query("insert into route(Way,CarNo) values('$way','$car_no')");
 
$db->query("insert into login values('$car_no','$car_no','123','driver')");
$message="<h3 align='center'style='color:cyan;'> Insert Successful </h3>";
}
else{
	$message="<h3 align='center' style='color:red;'>This Car is already existing in System!</h3>";

}
}


require "view/AddCar.view.php";
?>