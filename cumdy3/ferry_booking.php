<?php
require 'session_public.php';

$mdy_active="";
    $sk_active="";

  $ks_active="";

  $mt_active="";

  $sg_active="";
  $bo_active="";


 $car=$db->query("select * from car");
 $output="";
foreach($car as $key => $value){
	$CarNo=$value["CarNo"];

  $output.="<option value='".$CarNo."'' id='".$CarNo."'>$CarNo</option>";
}

if(isset($_GET['submit']))
{
	$CarNo=$_GET['CarNo'];
	$StudentId=$_GET['StudentId'];
	$Phone=$_GET['Phone'];
$date = date('Y-m-d H:i:s');
$row=$db->query("select * from cardetail where CarNo='".$CarNo."' AND Student_ID='".$StudentId."'");
	$no=count($row);
	if($no==0)
	{
		$db->query("insert into booking(Student_ID,CarNo,PhoneNo,Time) values('$StudentId','$CarNo','$Phone','$date')");
		$message="<h3 align='center'style='color:cyan;'>Booking successful</h4>";
	}else{
		$message="<h3 align='center' style='color:red;'>You have already in this car!</h4>";
	}

}


require "view/ferry_booking.view.php";
?>