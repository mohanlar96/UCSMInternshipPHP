<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

<div class="container-fluid">
  <div class="row" style="overflow-x: scroll;">
   <table class="table table-hover" style="border:1px solid black;margin-top: 30px;">
    <thead>
      <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Roll_No</th>
        <th>Detail</th>
      </tr>
    </thead>
    <tbody>
      
       <?= $displayTable ?>
        
       
      
    </tbody>
  </table>
  </div>
   