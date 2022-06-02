<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/hostel.css">
<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">

         <h3> Hostel Information Management Admin</h3>
          <div class="btn-group btn-group-justified" style="margin-bottom: 50px;">
             <a  id="active-nav" href="admin_hostel_ownerList.php" class="btn btn-primary">Manage Hostel List </a >
             <a   href="admin_hostel_ownerList.php" class="btn btn-primary">Manage Owner List </a >
             <a  href="admin_hostel_hostelInsert.php" class="btn btn-primary">Add Hostel </a>
        </div>

         <form role="form" class="form-horizontal" action="admin_hostel_hostelInsert.php" method="post" enctype="multipart/form-data" >
             <div class="form-group">
                <label class="control-label col-sm-2" for="fileToUpload">Image:</label>
                <div class="col-sm-4">
                  <input type="file" id="fileToUpload" name="fileToUpload"  >
                </div>
                <div class="error col-sm-4"><?php echo $imageErr;?></div> 
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="hname">Name:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="hname" id="hname" placeholder="Enter name" >
                </div>
                <div class="error col-sm-4"><?php echo $nameErr;?></div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="selGender">Gender:</label>
                <div class="col-sm-4">
                  <select class="form-control" id="selGender" name="selGender">
                           <option>Boy</option>
                           <option>Girl</option> 
                  </select>
                </div>
              </div> 
              <div class="form-group">
                <label class="control-label col-sm-2" for="address">Address:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="address" name="address" placeholder="Enter address"  >
                </div>
                <div class="error col-sm-4"><?php echo $addressErr;?></div> 
              </div>
               <div class="form-group">
                <label class="control-label col-sm-2" for="selCity">City:</label>
                <div class="col-sm-4">
                  <select class="form-control" id="selCity" name="selCity">
                           <option>Mandalay</option>
                           <option>Singaing</option> 
                  </select>
                </div>
              </div> 
              <div class="form-group">
                <label class="control-label col-sm-2" for="phno">Phone No:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="phno" name="phno" placeholder="Enter phno"  >
                </div>
                <div class="error col-sm-4"><?php echo $phnoErr;?></div> 
              </div> 
              <div class="form-group">
                <label class="control-label col-sm-2" for="timein">Time In:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="timein" name="timein" placeholder="6:00"  >
                </div>
                <div class="error col-sm-4"><?php echo $timeinErr;?></div> 
              </div> 
              <div class="form-group">
                <label class="control-label col-sm-2" for="timeout">Time Out:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="phno" name="timeout" placeholder="8:00"  >
                </div>
                <div class="error col-sm-4"><?php echo $timeoutErr;?></div> 
              </div> 
              <div class="form-group">
                <label class="control-label col-sm-2" for="selRoomType">Room Type:</label>
                <div class="col-sm-4">
                  <select class="form-control" id="selRoomType" name="selRoomType">
                           <option>Single Room</option>
                           <option>Double Room</option>
                           <option>Triple Room</option>
                           <option>Quadruple Room</option>
                           <option>Hall Room</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="price">Price:</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="price" name="price" placeholder="Enter price" >
                </div>
                <div class="error col-sm-4"><?php echo $priceErr;?></div> 
              </div>
              <div class="container"  >
              <h4>Facilities</h4>
              <div class="checkbox">
                <label><input type="checkbox" value="1" name="Fan">Fan</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="2" name="Cook">Cook</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="3" name="Refrigerator">Refrigerator</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="4" name="Wifi">Wifi</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="5" name="Aircon">Aircon</label>
              </div>
               <div class="form-group" align="center"> 
              <div class="col-sm-8">  
                <button type="submit" name="submit" class="btn btn-primary btn-md"   >Add</button>
              </div>
             </div>
             </div> 
                   
                   </form>


</div>

</div>      
          
                  
</div> 
 





 <script type="text/javascript" src="js/jquery.min.js"></script>     
<script type="text/javascript" src="js/hostel.js"></script> 
<script src="js/bootstrap.min.js"></script>



  









