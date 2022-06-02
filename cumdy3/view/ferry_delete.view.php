<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/ferry.css">

<div class="container-fluid">
   
    

  <div class="row" > 

    <div class="col-md-1 ">
        <a href="admin.php" class="previous">&laquo; Back</a>
    </div>
    
    
  
    <div class="col-md-10 main">

    <form id="searchName" class="form-horizontal" action="ferry_delete_search.php" method="post" role="form">
    <div class="form-group">
    <label class="control-label col-sm-2 login_label" for="username">Search</label>
    <div class="col-sm-10">
    <input list="searchlist" type="text" class="form-control" name="searchName" id="name" Placeholder="search by car..">
    </div>
    </div>
    </form>
        <?php echo $table_output;?>
    </div>
  
    <div class="col-md-1 aside">
       
    </div>

    
  
</div> 
</div>
 

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ferry_delete.js"></script> 
 
