<?php
require 'session_public.php';

$title=$_GET['title'];
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a> <span class = "animate">  <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle"> Passanger </a> ';
$id=$_GET['id'];
$name=$_GET['title'];


  $car_no=$_GET['carNo'];

  $db_Stdata=$db->query(" select * from cardetail join student join studentdetail 
  where cardetail.Student_ID=student.Student_ID AND student.Student_ID=studentdetail.Student_ID 
  AND student.Academic_Year_ID='05' AND cardetail.CarNo LIKE '%".$car_no."%'");
  
$output="<h4>$car_no Car Passengers' list </h4>
<table class='table table-responsive table-hover'>
                        <tr><th>Student_ID</th>
                            <th>Roll_No</th>
                            <th>Name</th></tr>";
      

    foreach ($db_Stdata as $key => $value) {
       $Student_ID=$value['Student_ID'];
        $Roll_No=$value['Roll_No'];
        $Name=$value['Name_Eng'];


   $output.="
                <tr class='active'> 
                 <td> $Student_ID</td>
                    <td> $Roll_No</td>
                     <td>$Name</td>
                    </tr>";




  
  
 } 
 $output.="</table>";




require "view/user_transpotation_passanger.view.php";
?>