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

$schoolfeeErr  =  $libraryfeeErr =  $entrancefeeErr =  $nrcfeeErr = $sportfeeErr= $labfeeErr = $examfeeErr =  "";
$schoolfee  =  $libraryfee =  $entrancefee =  $nrcfee = $sportfee= $labfee = $examfee =  "";
if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    $schoolfee = $_POST["schoolfee"];                         
    $libraryfee = $_POST["libraryfee"];
    $entrancefee = $_POST["entrancefee"];
    $nrcfee = $_POST["nrcfee"];
    $sportfee = $_POST["sportfee"];                         
    $labfee = $_POST["labfee"];                         
    $examfee = $_POST["examfee"];
    $year = $_POST["year"] ;
    $acayear = $_POST["acayear"] ;
     
    if (empty($schoolfee)) {
    $schoolfeeErr = "Fee is required";
  } else if (!preg_match("/^[0-9]*$/",$schoolfee)) {
      $schoolfeeErr = "Invalid Fee"; 
    
  }
  if (empty($libraryfee)) {
    $libraryfeeErr = "Fee is required";
  } else if (!preg_match("/^[0-9]*$/",$libraryfee)) {
      $libraryfeeErr = "Invalid Fee"; 
    
  }
    if (empty($entrancefee)) {
      if($year=="First Year")
        $entrancefeeErr = "Fee is required";
  } elseif (!preg_match("/^[0-9]*$/",$entrancefee)) {
      $entrancefeeErr = "Invalid Fee"; 
    
  }
  if (empty($nrcfee)) {
    if($year=="First Year")
      $nrcfeeErr = "Fee is required";
  } elseif (!preg_match("/^[0-9]*$/",$nrcfee)) {
      $nrcfeeErr = "Invalid Fee"; 
    
  }
   if (empty($labfee)) {
    $labfeeErr = "Fee is required";
  } elseif (!preg_match("/^[0-9]*$/",$labfee)) {
      $labfeeErr = "Invalid Fee"; 
    
  }
   if (empty($sportfee)) {
    $sportfeeErr = "Fee is required";
  } elseif (!preg_match("/^[0-9]*$/",$sportfee)) {
      $sportfeeErr = "Invalid Fee"; 
    
  }
   if (empty($examfee)) {
    $examfeeErr = "Fee is required";
  } elseif (!preg_match("/^[0-9]*$/",$examfee)) {
      $examfeeErr = "Invalid Fee"; 
    
  }
  
  if($schoolfeeErr =="" &&  $libraryfeeErr =="" &&  $entrancefeeErr =="" &&  $nrcfeeErr =="" && $sportfeeErr =="" && $labfeeErr =="" && $examfeeErr ==""  ){
      
      
      $db_year = $db->get("year","Year='$year'");
           $yearid = $db_year[0]["Year_ID"];
           $db_acayear = $db->get("academic_year","Academic_Year='$acayear'");
           $acayearid = $db_acayear[0]["Academic_Year_ID"];
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('School Fee','$schoolfee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('Library Fee','$libraryfee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('Entrance Fee','$entrancefee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('NRC Fee','$nrcfee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('Sport Fee','$sportfee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('Lab Fee','$labfee','$yearid','$acayearid')");
      $db->query("insert into feecategory(FeeType,Fee,Year_ID,Academic_Year_ID) values ('Exam Fee','$examfee','$yearid','$acayearid')");
  }

}


require "view/admin_school_fee_addFee.view.php";
?>