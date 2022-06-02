
     <?php
  require 'view/header.view.php'; 
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

          <div class="container">
  <form role="form" class="form-horizontal" action="admin_hostel_ownerCreate.php" method="post" > 
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">Username:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
      </div>
      <div class="error col-sm-4"><?php echo $usernameErr;?></div> 
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-4">
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
      </div>
      <div class="error col-sm-4"><?php echo $passwordErr;?></div> 
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="hostel">Hostel:</label>
        <div class="col-sm-4"> 
          <select class="form-control" id="hostel" name="hostel">
            <?php echo $hostel_list; ?>
          </select> 
        </div>  
    </div>
    <div class="form-group" align="center"> 
      <div class="col-sm-8">  
        <button type="submit" name="submit" class="btn btn-primary btn-md" >Add</button>
      </div>
    </div>
  </form>
</div>


        

    </div>
  </div>
</div>





