<?php

// if session is login then  we will  use login/user/header.view.php

  require 'header.view.php'; 
?>

<link rel="stylesheet" type="text/css" href="css/courses.css">
<div class="container-fluid">
<div class="row">
	<div class="main">
  <table class="table table-responsive">
   <tr> <th>Subject Code</th>  <th>Book Name </th> <th> Year </th> <th> Major </th> <th>Term</th> <th> Author </th> <th> Publisher </th> <th> Publication Date</th> <th>Edition</th> <th>Department</th> <th>Profile</th>  <th>Price</th></tr>
   <?= $displayTable ?>
  </table>
  </div>
  </div>
  		

</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
 <script type="text/javascript" src="js/courses.js"></script>
 <?php
  require '../../view/footer.view.php'; 
?>

  


  
   
