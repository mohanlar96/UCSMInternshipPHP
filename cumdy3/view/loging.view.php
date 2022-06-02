<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/library.css">
<div class="container-fluid" style="margin-top: 100px;">
  	<div class="row">
  		<div class="col-sm-offset-4 col-sm-4 col-xs-offset-2">
  		<form method="post" action="loging.php?id=<?=$id?>" >
  			 <button  style="margin-top:30px; margin-bottom:30px; color: #fff;" type="submit"  name="admin" value="true" class="btn btn-primary btn-lg btn-block">Go To Admin Session</button>


  			  <button style="margin-bottom:30px; color: #fff;" type="submit" name="user"  value="true" class="btn btn-primary btn-lg btn-block">Go To User Session </button>
  		</form>
  		</div>
  	</div>
</div>  
 
   
