<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   <h1>  Student Information </h1>
  <form class="form-horizontal" method="GET" action="admin_activity_info2.php">
      <div class="form-group form" >
        <label class="col-sm-2 control-label" for="Academic Year:">Academic Year:</label>
            <div class="col-sm-10">
              <select name='academicyear'>
                <option>2012_2013</option>
                <option>2013_2014</option> 
                <option>2014_2015</option> 
                <option>2015_2016</option>
                <option>2016_2017</option>
                </select>
            </div>
      </div>
             <div class="form-group" align="left">
                <div class="col-sm-offset-2 col-sm-3 col-xs-offset-4 col-xs-3">

                      <input type="submit" name="submit" value="OK">

                </div>
              </div>
              
      </form> 
      <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='admin_activity.php'">Back</button>
        </div> 
</div>
    

    	   
     	      

     	
  



<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/info.js"></script> 
<?php
  //require '../../view/footer.view.php'; 
?>