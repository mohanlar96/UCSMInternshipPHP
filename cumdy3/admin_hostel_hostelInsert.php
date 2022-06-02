<?php
require 'session_admin.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">HOME</a> <span class = "animate">  > </span> 
<a herf = "admin_hostel.php" id = "linkStyle">Hostel</a> ';


    $imageErr = $nameErr = $addressErr  = $phnoErr = $priceErr = $timeinErr = $timeoutErr = "";
    $image= $name = $address  = $phno = $price = $timein = $timeout = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $name = $_POST["hname"];
    $gender = $_POST["selGender"];
    $address = $_POST["address"];
    $city = $_POST["selCity"];
    $phno = $_POST["phno"];
    $roomtype = $_POST["selRoomType"];                          
    $price = $_POST["price"];
    $timein = $_POST["timein"];
    $timeout = $_POST["timeout"];
    
     if (empty(basename( $_FILES["fileToUpload"]["name"]))) {
    $imageErr = "Image is required";
  } else {  
  }
    if (empty($_POST["hname"])) {
    $nameErr = "Name is required";
  } else { 
     if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed"; 
    }
  }
    if (empty($_POST["address"])) {
    $addressErr = "Address is required";
  } else {  
  }
  if (empty($_POST["phno"])) {
    $phnoErr = "Phone Number is required";
  } else {  
     if (!preg_match("/^[0-9]*$/",$phno)) {
      $phnoErr = "Invalid Phone Number"; 
    }
  }
  if (empty($_POST["timein"])) {
     $timeinErr = "Timein is required";
  } else {                          
     if (!preg_match("/^[0-9:]*$/",$timein)) {
      $timeinErr = "Invalid Time Format"; 
    }
  }
  if (empty($_POST["timeout"])) {
    $timeoutErr = "Timeout is required";
  } else {                                  
     if (!preg_match("/^[0-9:]*$/",$timeout)) {
      $timeoutErr = "Invalid Time Format"; 
    }
  }
  if (empty($_POST["price"])) {
    $priceErr = "Price is required";
  } else {                                  
     if (!preg_match("/^[0-9]*$/",$price)) {
      $priceErr = "Invalid Price"; 
    }
  }
   if($imageErr=="" && $nameErr=="" && $addressErr=="" && $phnoErr=="" && $timeinErr=="" && $timeoutErr=="" ){
    //image upload    
    $target_dir = "../../img/hostel/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        //echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
    if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        $img_name = basename( $_FILES["fileToUpload"]["name"]);
        
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
}
//end uploading image

     $db->query("insert into hostel(HostelName,Gender,Address,City,Phone,TimeIn,TimeOut,Image) values('$name','$gender',
     '$address','$city','$phno','$timein','$timeout','$img_name')");
 
    $data_hostel=$db->query("select * from hostel");
    $hostelArr = count($data_hostel);
    $hostel_id = $data_hostel[$hostelArr-1]['HostelID'];
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

 
require "view/admin_hostel_hostelInsert.view.php";
  
?>