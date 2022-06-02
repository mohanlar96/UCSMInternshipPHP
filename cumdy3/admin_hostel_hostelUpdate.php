<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span> 
<a herf = "admin_hostel.php" id = "linkStyle">Hostel</a> ';


            $priceErr  = ""; 
            $option_output ="";
            

          $hostelid = $db->get("hostel","OwnerID='$userId'")[0]["HostelID"];   
          //option output
          $data_room_detail=$db->get("roomdetail","HostelID=$hostelid");
            $arrRoom = count($data_room_detail);
            
          for($r = 0; $r <$arrRoom; $r++){
            $roomtype_id = $data_room_detail[$r]['RoomTypeID'];
            $roomprice = $data_room_detail[$r]['RoomPrice'];
            $data_room_type=$db->get("roomtype","RoomTypeID='$roomtype_id'");
            $roomtype = $data_room_type[0]['RoomType'];
            $option_output.= "<option>$roomtype,$roomprice</option> ";
          }

         // $db_facility = $db->get("facilitydetail","RoomDetailID=2");
//          for($f=0;$f<count($db_facility);$f++){
//              $facility_category = $db_facility[$f]['FacilityCategoryID'];
//              if($facility_category==1){
//                  $checkFan = "checked";
//              }
//              if($facility_category==2){
//                  $checkCook = "checked";
//              }
//              if($facility_category==3){
//                  $checkRefrigerator = "checked";
//              }
//              if($facility_category==4){
//                  $checkWifi = "checked";
//              }
//              if($facility_category==5){
//                  $checkAirCon = "checked";
//              }
//          }
 if ($_SERVER["REQUEST_METHOD"] == "POST") {  
   
    $newprice = $_POST["newprice"];
     if (empty($newprice)) {
    $priceErr = "New price is required";
  } else {                                  
     if (!preg_match("/^[0-9]*$/",$newprice)) {
      $priceErr = "Invalid Price"; 
    }
  }
  if($priceErr==""){  
    $roomstr = $_POST["selRoom"] ;    
    $roomArr =  explode(",",$roomstr);
    $roomtype = $roomArr[0];
    $roomprice = $roomArr[1];
    
    $data_room_type=$db->get("roomtype","RoomType='$roomtype'");
    $roomtype_id = $data_room_type[0]['RoomTypeID'];
    
    $db_roomdetail = $db->query("select * from roomdetail where HostelID=$hostelid and RoomTypeID=$roomtype_id and RoomPrice='$roomprice'");
    $roomdetail_id= $db_roomdetail[0]['RoomDetailID'];
     
    $db->delete("facilitydetail","RoomDetailID='$roomdetail_id'");
    
    $db->update("roomdetail","RoomPrice='$newprice'","RoomDetailID=$roomdetail_id");
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
 }
}


require "view/hostel_hostelUpdate.view.php";
?>