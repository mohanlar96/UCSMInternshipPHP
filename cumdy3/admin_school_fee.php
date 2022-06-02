<?php
require 'session_admin.php';  
$active_nav_information="id='active-nav'";



$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';


$acayearlist="";
$db_acayear=$db->selectstar("academic_year");
for($i=0;$i<count($db_acayear);$i++){
  $ay=$db_acayear[$i]["Academic_Year"];
  $acayearlist.="<option>$ay</option>";
}
$yearlist="";
$db_year=$db->selectstar("year");
for($i=0;$i<count($db_year);$i++){
  $y=$db_year[$i]["Year"];
  $yearlist.="<option>$y</option>";
}

$receipt_list="";
$db_data=$db->query("select * from receipt"  );
     $arrSize = count($db_data);  
    for($c = 0; $c <$arrSize; $c++){ 
         $receipt_list.= "<tr>";
           $receiptNo = $db_data[$c]['ReceiptNo']; 
           $receiptBookNo = $db_data[$c]['ReceiptBookNo'];
           $receiptTotal = $db_data[$c]['ReceiptTotal'];
           $receiptDate = $db_data[$c]['ReceiptDate'];
           $student_id = $db_data[$c]['Student_ID']; 
           $db_student = $db->get("student","Student_ID='$student_id'");
           $rollno = $db_student[0]["Roll_No"];
           $yearid = $db_student[0]["Year_ID"];
           $acayearid = $db_student[0]["Academic_Year_ID"];  
           $db_year = $db->get("year","Year_ID='$yearid'");
           $year = $db_year[0]["Year"];
           $db_acayear = $db->get("academic_year","Academic_Year_ID='$acayearid'");
           $acayear = $db_acayear[0]["Academic_Year"];
           $db_studentdetail = $db->get("studentdetail","Student_ID='$student_id'");
           $name = $db_studentdetail[0]["Name_Eng"];
           
   $receipt_list.= "
    <td width=20%>$name</td>
    <td width=10%>$rollno</td>
    <td width=10%>$year</td>
    <td width=10%>$acayear</td>
    <td width=10%>$receiptTotal</td>
    <td width=10%>$receiptNo</td>
    <td width=10%>$receiptBookNo</td>
    <td width=10%>$receiptDate</td>
    <td><button class='btn btn-primary' data-studentid='$student_id' >Delete</button></td> 
  </tr>";
      }




require "view/admin_school_fee.view.php";
?>