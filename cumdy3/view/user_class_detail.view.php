<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/Activity.css">
<div class="container-fluid">
  <div class="row" style="overflow-x: scroll;">
   <table class="table table-hover" style="border:1px solid black;margin-top: 30px;">
    <thead>
      <tr>
        <th>No</th>
        <th>Name</th>
        <th>Roll No</th>
      </tr>
    </thead>
    <tbody>
      
       <?= $displayTable ?>
        
       
      
    </tbody>
  </table>
  </div>
   


  
   
<script type="text/javascript" src="js/class_room.js"></script> 
