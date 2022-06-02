<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span> 
<a herf = "admin_hostel.php" id = "linkStyle">Hostel</a> ';



$priceErr = $price = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    $roomtype = $_POST["selRoomType"];                          
    $price = $_POST["price"];
     
    if (empty($_POST["price"])) {
    $priceErr = "Price is required";
  } else {                                  
     if (!preg_match("/^[0-9]*$/",$price)) {
      $priceErr = "Invalid Price"; 
    }
  }
  if($priceErr==""){
    $data_hostel=$db->query("select * from hostel");
    $hostelArr = count($data_hostel);
    $hostel_id = $data_hostel[$host
    elArr-1]['HostelID'];
    $data_room=$db->get("roomtype","RoomType='$roomtype'");
    $roomtype_id = $data_room[0]['RoomTypeID'];

    $db->query("insert into roomdetail(HostelID,RoomTypeID,RoomPrice) values($hostel_id,$roomtype_id,'$price')"); 
                
    $data_roomdetail=$db->query("select * from roomdetail where HostelID=$hostel_id and RoomTypeID=$roomtype_id and RoomPrice=$price");
    $roomdetail_id = $data_roomdetail[0]['RoomDetailID'];
    
    if (isset($_POST["Fan"])){
        $facility_category_id = $_POST['Fan']; 
     $db->query("insert into facilitydetail(FacilityCategoryID,RoomDetailID) values ($facility_category_id,$roomdetail_id)") ;
    }
    if (isset($_POST["Cook"])){
        $facility_category_id = $_POST['Cook']; 
     $db->query("insert into facilitydetail(FacilityCategoryID,RoomDetailID) values ($facility_category_id,$roomdetail_id)") ;
    }
    if (isset($_POST["Refrigerator"])){
        $facility_category_id = $_POST['Refrigerator']; 
     $db->query("insert into facilitydetail(FacilityCategoryID,RoomDetailID) values ($facility_category_id,$roomdetail_id)") ;
    }
    if (isset($_POST["Wifi"])){
        $facility_category_id = $_POST['Wifi']; 
     $db->query("insert into facilitydetail(FacilityCategoryID,RoomDetailID) values ($facility_category_id,$roomdetail_id)") ;
    }
    if (isset($_POST["Aircon"])){
        $facility_category_id = $_POST['Aircon']; 
     $db->query("insert into facilitydetail(FacilityCategoryID,RoomDetailID) values ($facility_category_id,$roomdetail_id)") ;
    }
   ?>
  <script type="text/javascript"  >    
   var d = confirm('More Roomtype?');
    if(d){     
       window.location="hostel_hostelMorePrice.php";
    }
  </script>
 <?php 
  }    
 }  
require "view/admin_hostel_hostelMorePrice.view.php";
  
?>