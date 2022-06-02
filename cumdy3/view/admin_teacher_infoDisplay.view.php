<?php
  require 'header.view.php'; 
?>

 <!--<link rel="stylesheet" type="text/css" href="css/std_info.css">
 -->
  <link rel="stylesheet" type="text/css" href="css/teacher_info.css">
  <form method="post" action="admin_teacher_timetable.php">
<div>
    <input type="hidden" name="sr_no" value=<?=$Sr?>>
     <table class="table">
     <tr><th colspan="2"><h2 align="center">Teacher Information </h2></th></tr>
     <?=$teacher_nameString?>
 <!--   <h1> Position is <?= $teacher_position?> </h1>
 -->
      

    </table>
    
</div>  
      
              
         
</form>

  
 

   
<script type="text/javascript" src="js/std_info.js"></script> 
<?php
//  require '../../view/footer.view.php'; //
?>