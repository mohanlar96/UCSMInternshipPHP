<?php
  require 'header.view.php'; 
?>
<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Participiant</h3>
        
        <table class="table table-hover table-responsive">
           <tr> <td> Roll No </td> <td> Name </td> <td> No of Session </td> <td> Date </td> <td> Time </td> </tr>
           <?=$participantTable?>
        </table>  
          <div align="center" style="margin-bottom: 20px;">
           <button type="button" class="btn btn-primary" onclick="window.location='user_activity_type.php'">Back</button>
         </div>

    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>


