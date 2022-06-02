<?php
  require 'view/header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>
<div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Attandance Inforamtion For </h3>
  		  
              	<table class="table table-responsive ">
		<tr> <th> Month</th> <th> Code</th> <th> Student_ID </th> <th> Name </th> <th> Attendance Time</th> <th> Attendance Percent </th><th> Remark </th> </tr>
		<?= $displayTable ?>
	</table>

     </div>


        
        </div>

  	</div>










<?php
require 'view/footer.view.php';
?>