
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
  // $maxcapacity=$value["MaxCapacity"];
    

  
  
  $btnupt="<button class='btn btn-info' data-carno='$car_no' id='Update' >Update </button>";

  $table_output.="<tr class='active'><td>$car_no</td> 
                          <td>$driver_id</td>
                        <td>$phone_no</td>
                        
                        <td>$Way</td>
                        
                        
                        <td>$btnupt</td>
                        
                      

                      </tr>";
}
  

 $table_output.="</table>";


require "view/ferry_update.view.php";
?>