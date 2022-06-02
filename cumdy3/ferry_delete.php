<?php
require 'session_admin.php';



 $db_data= $db->query(" select * from car,driver,town,route 
  where car.CarNo=driver.CarNo AND car.TownId=town.TownId AND car.CarNo=route.CarNo");

$table_output="<table class='table table-responsive table-hover'<tr> <th> Car Number</th>
                                                                      <th> Driver Name</th>
                                                                      <th>Phone Number</th>
                                                                      
                                                                      <th>Way</th>
                                                                      <tr>";




foreach($db_data as $key => $value) {
  $car_no=$value["CarNo"];
  $driver_id=$value["DriverName"];
  
  $phone_no=$value["PhoneNo"];
  $Way=$value["Way"];
  

  
  $btndel="<button class='btn btn-info' id='Delete' data-carno='$car_no' data-action='Delete'>Delete</button>";
 

  $table_output.="<tr class='active'><td>$car_no</td> 
                          <td>$driver_id</td>
                        <td>$phone_no</td>
                        
                        <td>$Way</td>
                        
                        <td>$btndel</td>
                        
                        
                      

                      </tr>";
}
  

 $table_output.="</table>";

/*$car=$db->query("select CarNo from car");
foreach ($car as $key => $value) {
 $no=$value["CarNo"];
 $db->query("insert into driverlogin (username)values('$no')");
}*/
require "view/ferry_delete.view.php";
?>