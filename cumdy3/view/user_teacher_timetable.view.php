<?php
  require 'header.view.php'; 
?>

 <!--<link rel="stylesheet" type="text/css" href="css/std_info.css">
 -->
  <link rel="stylesheet" type="text/css" href="css/teacher_info.css">
  
<div>
   
     <table class="table">
     <tr><th colspan="8"><h2 align="center"><?=$name?></h2></th></tr>
     <tr><td>Day</td><td>9:00AM - 9:45AM</td><td>9:50AM - 10:35AM</td><td>10:40AM - 11:25AM</td><td>11:30AM - 12:15PM</td><td>1:10PM - 2:00PM</td><td>2:05PM - 2:50PM</td><td>2:55PM - 3:40PM</td>
    <?=$teacher_timeString?>
 <!--   <h1> Position is <?= $teacher_position?> </h1>
 -->
  

    </table>
    
    
</div>  
      
              
<a href="user_teacher.php"><button class="btn btn-info">Go To Back</button></a>  
  
   
<script type="text/javascript" src="js/std_info.js"></script> 
<?php
//  require '../../view/footer.view.php'; //
?>