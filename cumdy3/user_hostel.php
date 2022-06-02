<?php
  
require 'session_public.php';


$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span>
<a herf = "index.php" id = "linkStyle">Hostel Information</a>';




  $hostel_list="";
  $db_data=$db->query("select * from hostel  "  );
     $arrSize = count($db_data);  
    for($c = 0; $c <$arrSize; $c++){ 
         $hostel_list.= "<tr><td>";
           $hostel_id = $db_data[$c]['HostelID'];
           $hostel_name = $db_data[$c]['HostelName'];
           $gender = $db_data[$c]['Gender'];
           $address = $db_data[$c]['Address'];
           $city = $db_data[$c]['City'];
           $phone = $db_data[$c]['Phone'];
           $time_in = $db_data[$c]['TimeIn'];
           $time_out = $db_data[$c]['TimeOut'];
           $image = $db_data[$c]['Image'];
          
           $hostel_list.=  
   "<div class='row'>
    <div class='col-sm-4'>
    <img src='img/hostel/$image' class='img-rounded' width='270px' height='170px'>
    </div>
    <div class='col-sm-8'>
      <div class='row'>
       <div class='my-row col-sm-3'>Name</div>
       <div class='col-sm-9'>$hostel_name($gender)</div>
      </div>
      <div class='row'>
       <div class='my-row col-sm-3'>Room type</div>
        <div class='col-sm-9'> 
       ";
    
    $db_room=$db->query("select * from hostel join roomdetail join roomtype where hostel.HostelID = roomdetail.HostelID and roomdetail.RoomTypeID=roomtype.RoomTypeID and hostel.HostelID = $hostel_id"  );
    $arrRoom = count($db_room);
    for($r = 0; $r <$arrRoom; $r++){
           $room_detail_id = $db_room[$r]['RoomDetailID'];
           $room_price = $db_room[$r]['RoomPrice'];
           $room_type = $db_room[$r]['RoomType'];
            $db_Facility=$db->query("select * from roomdetail join facilitydetail join facilitycategory where facilitydetail.RoomDetailID=roomdetail.RoomDetailID and facilitydetail.FacilityCategoryID=facilitycategory.FacilityCategoryID and roomdetail.RoomDetailID = $room_detail_id"  );
            $arrFacility = count($db_Facility);
            $facility_type="Facility : Water, Electricity";
             if($arrFacility!=0) {
              for($f = 0; $f< $arrFacility; $f++){
               $facility_type.= ", ".$db_Facility[$f]['FacilityType'];
              } 
             }
     $hostel_list.="
      <a data-toggle='tooltip' title='$facility_type'>$room_type($room_price)</a><br>";
     }
    $hostel_list.= "
     </div>
      </div>
    <div class='row'>
       <div class='my-row col-sm-3'>Address</div>
       <div class='col-sm-9'>$address, $city</div>
    </div>
    <div class='row'>
       <div class='my-row col-sm-3'>Phone No</div>
       <div class='col-sm-9'>$phone</div>
    </div>
    <div class='row' >
       <div class='my-row col-sm-3'>Time in/Time out</div>
       <div class='col-sm-8'>$time_in AM to $time_out PM</div>
       <div class='col-sm-1'>
       
       </div>
    </div>                      
   </div>
   </div>
   </td></tr>
 ";
      } 



require "view/user_hostel.view.php";
?>