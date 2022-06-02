<?php
  require 'session_user.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Financial User </h3>
  	

        <div class="row">
          <div class="col-sm-12">
          	     <select class="combo" class="control-form" name="month" id="month">
      <option name="January" value="Janauary">Janauary</option>
      <option value="February">February</option>
      <option value="March">March</option>
      <option value="April">April</option>
      <option value="May">May</option>
      <option value="June">June</option>
      <option value="July">July</option>
      <option value="August">August</option>
      <option value="September">September</option>
      <option value="October">October</option>
      <option value="November">November</option>
      <option value="December">December</option>


     </select>
     <input type="submit" value="view" >



          </div>
        </div>

         <div class="row">
          <div class="col-sm-12">




          </div>
        </div>

  	</div>
  </div>
</div>






