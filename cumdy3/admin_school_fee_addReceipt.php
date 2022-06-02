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
$nameErr  =  $rollnoErr = $receiptnoErr= $booknoErr = $dateErr =  "";
$name = $rollno = $receiptno= $bookno = $date = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    // $name = $_POST["name"];                         
    $rollno = $_POST["rollno"];                         
    $year = $_POST["year"];                         
    $acayear = $_POST["acayear"];                         
    $receiptno = $_POST["receiptno"];                         
    $bookno = $_POST["bookno"];                         
    $date = $_POST["date"];
     
  //   if (empty($name)) {
  //   $nameErr = "Name is required";
  // } else {                                  
  //    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
  //     $nameErr = "Invalid Name"; 
  //   }
  // }
   if (empty($rollno)) {
    $rollnoErr = "Rollno is required";
  }elseif(count($db->get("student","Roll_No='$rollno'"))<1){
    $rollnoErr = "This student is not registered";
  }
   if (empty($receiptno)) {
    $receiptnoErr = "Receiptno is required";
  } else {                                  
     if (!preg_match("/^[0-9]*$/",$receiptno)) {
      $receiptnoErr = "Invalid Receiptno"; 
    }
  }
  if (empty($bookno)) {
    $booknoErr = "Bookno is required";
  } else {                                  
     if (!preg_match("/^[0-9]*$/",$bookno)) {
      $booknoErr = "Invalid Bookno"; 
    }
  }
   if (empty($date)) {
    $dateErr = "Date is required";
  } else {                                  
     // if (!preg_match("/^[0-9\/]*$/",$date)) {
     //  $dateErr = "Invalid Date"; 
    // }
  }
   
  if($nameErr  =="" &&  $rollnoErr  =="" && $receiptnoErr =="" && $booknoErr  =="" && $dateErr ==  ""){
      $total=0;
      $db_year = $db->get("year","Year='$year'");
           $yearid = $db_year[0]["Year_ID"];
           $db_acayear = $db->get("academic_year","academic_year='$acayear'");
           $acayearid = $db_acayear[0]["academic_year_ID"];
           $db_student = $db->get("student","Roll_No='$rollno'", "Year_ID='$yearid'","academic_year_ID='$acayearid'");
           $studentid = $db_student[0]["Student_ID"];
           // $db_isAccept = $db->get("student","Student_ID='$studentid'");
           // $studentAccept = $db_isAccept[0]["Is_Accept"];
            
               $db_fee = $db->get("feecategory","Year_ID='$yearid'","Academic_Year_ID='$acayearid'");  
               for($c=0;$c<count($db_fee);$c++){
                   $fee = $db_fee[$c]["Fee"];
                   $total+=(int)$fee;
           }
              $db->query("insert into receipt(ReceiptNo,ReceiptBookNo, ReceiptTotal, ReceiptDate,Student_ID) 
              values ('$receiptno','$bookno','$total','$date','$studentid')")   ;
              $db_receipt = $db->selectstar("receipt");
              $receiptid = $db_receipt[count($db_receipt)-1]["ReceiptID"];
               for($c=0;$c<count($db_fee);$c++){
                   $feecategoryid = $db_fee[$c]["FeeCategoryID"]; 
                    $db->query("insert into receiptdetail(ReceiptID,FeeCategoryID) values($receiptid,$feecategoryid)");
           }
            
           
  }
}


require "view/admin_school_fee_addReceipt.view.php";
?>