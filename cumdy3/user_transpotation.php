<?php 
require 'session_public.php';



$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


  $mdy_active="";
    $sk_active="";

  $ks_active="";

  $mt_active="";

  $sg_active="";
  $bo_active="";

if(!isset($_GET['id'])){
  $town='1';
}else{
 $town=@$_GET['id'];
 }
 $title=$_GET['name'];


switch ($town) {
	case '1':
		$mdy_active="id='active-nav'";
		break;
		case '2':
		$sk_active="id='active-nav'";
		break;
			case '3':
			$ks_active="id='active-nav'";
		break;
			case '4':
					$mt_active="id='active-nav'";

		break;
			case '5':
			$sg_active="id='active-nav'";

		break;	
	
	default:
		# code...
		break;
}





 $db_data= $db->query(" select * from car,driver,town,route 
  where car.CarNo=driver.CarNo AND car.TownId=town.TownId AND car.CarNo=route.CarNo AND town.TownID LIKE '%".$town."%'");

 
$table_output="<table class='table table-responsive table-hover'><tr> <th> Car Number</th>
                                                                      <th> Driver Name</th>
                                                                      <th>Phone Number</th>
                                                                      <th>Current Capacity</th>
                                                                      <th> Price</th>
                                                                      <th> Passengers' list</th>
                                                                      <th>Way</th><tr>  ";
 
 
foreach($db_data as $key => $value) {
  $car_no=$value["CarNo"];
  $driver_id=$value["DriverName"];
  $town_id=$value["Name"];
  $phone_no=$value["PhoneNo"];
  $maxcapacity=$value["MaxCapacity"];
  $price=$value["Price"];
  $way=$value["Way"];


 
  $btnStlist="<a href='user_transpotation_passanger.php?$getQString carNo=$car_no&title=$title&id=$town'> <button id='myBtn' class='btn btn-primary'>Passengers</button></a>
 <div class='modal' id='myModal'>";
  
$currCap=$db->query("select student.Student_ID from cardetail,student  where 
  cardetail.Student_ID=student.Student_ID AND student.Academic_Year_ID='05' AND cardetail.CarNo LIKE '%".$car_no."%'");
$currCapacity=count($currCap);





  $table_output.="<tr class='active'><td>$car_no</td>  
                        <td>$driver_id</td>
                        <td>$phone_no</td>
                        <td>$currCapacity</td>
                        <td>$price</td>
                        <td>$btnStlist</td>
                        <td>$way</td>
                       
                        </tr> ";
}
$table_output.="</table>"; 














require 'view/user_transpotation.view.php';
?>

