<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Student Information </h3>
        <div class="btn-group btn-group-justified">
          <a href="user_activity_type.php" class="btn btn-primary">Activity Type</a>
          <a href="user_activity_calendar.php" class="btn btn-primary">Academic Calendar</a>
            
          <a href="user_activity_info.php" id="active-nav" class="btn btn-primary">Student Information</a>
          
          <a href="user_event_calendar.php" class="btn btn-primary">Activity Calendar</a>
        </div>

<div class="row" style="margin-top:100px;">

      <form class="form-horizontal" role="form" method="GET" action="user_activity_info2.php">
      <div class="form-group">
         <label class="control-label col-sm-2" for="Academic Year:">Academic Year:</label>
         <div class="col-sm-8">
            <select name="year" class="form-control btn-primary">
                    <option>2012_2013</option>
                    <option>2013_2014</option> 
                    <option>2014_2015</option> 
                    <option>2015_2016</option>
                    <option>2016_2017</option>
            </select>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
   </form>

      
 

       <div align="center">
         <button type="button" class="btn btn-primary" onclick="window.location='user_activity.php'">Back</button>
      </div>

    </div>
  </div>
</div> 
</div>   


<script type="text/javascript" src="js/news.js"></script> 
<?php
  //require 'footer.view.php'; 
?>