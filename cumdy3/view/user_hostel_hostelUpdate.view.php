<?php
  require 'view/header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>
 <link rel="stylesheet" type="text/css" href="css/hostel-form.css">
 <link rel="stylesheet" type="text/css" href="css/hostel.css">
 <div class="container-fluid">        
 <form role="form" class="form-horizontal" action="user_hostel_hostelUpdate.php" method="post" >
 
  <div class="form-group">
    <label class="control-label col-sm-2" for="selRoom">Room:</label>
    <div class="col-sm-4">
      <select class="form-control" id="selRoom" name="selRoom" >
        <?php
         echo  $option_output;
        ?>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="price">New Price:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="price" name="newprice" placeholder="Enter price">
    </div>
    <div class="error col-sm-4"><?php echo $priceErr;?></div>
  </div>
  <div class="container"  >
  <h4>Facilities</h4>
  <div class="checkbox">
    <label><input type="checkbox" value="1" name="Fan">Fan</label>
  </div>
  <div class="checkbox">
    <label><input type="checkbox" value="2"  name="Cook">Cook</label>
  </div>
  <div class="checkbox">
    <label><input type="checkbox" value="3"  name="Refrigerator">Refrigerator</label>
  </div>
  <div class="checkbox">
    <label><input type="checkbox" value="4"  name="Wifi">Wifi</label>
  </div>
  <div class="checkbox">
    <label><input type="checkbox" value="5"  name="Aircon">Aircon</label>
  </div>
   <div class="form-group" align="center"> 
  <div class="col-sm-6">  
    <button type="submit" name="submit" class="btn btn-primary btn-md"  >Update</button>
  </div>
 </div>
 </div> 
 </form>
</div> 
                
<script>
function hostel_update(){
    var d = confirm('Are you sure to update?');
    if(d){
      
    }
   
}
  
</script>
<script type="text/javascript" src="js/hostel.js"></script>
<?php
 require 'footer.view.php'; 
?>