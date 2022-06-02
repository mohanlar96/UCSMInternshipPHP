<?php
  require 'header.view.php'; 
?>

 <!--<link rel="stylesheet" type="text/css" href="css/std_info.css">
 -->
  <link rel="stylesheet" type="text/css" href="css/teacher_info.css">
  <form method="post" action="user_teacher_timetable.php">
<div>
    <input type="hidden" name="sr_no" value=<?=$Sr?>>
     <table class="table">
     <tr><th colspan="2"><h2 align="center">Teacher Information </h2></th></tr>
     <?=$teacher_nameString?>
 <!--   <h1> Position is <?= $teacher_position?> </h1>
 -->
      <tr><th colspan="2"><h2 align="center"><input type="submit" value ="View Timetable"  name="Search" class="btn btn-success btnSubmit"></h2></th></tr>

    </table>
    
</div>  
      
       
</form>
 <a href="user_teacher.php"><button class="btn btn-info">Go To Back</button></a>      
         
  
   
<script type="text/javascript" src="js/std_info.js"></script> 
<?php
 // require '../../view/footer.view.php'; //
?>