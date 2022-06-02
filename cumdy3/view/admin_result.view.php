<?php
  require 'header.view.php'; 

   // if session is login then  we will  use login/user/header.view.php

?>

<link rel="stylesheet" type="text/css" href="css/result.css">
 


<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Title</h3>
        <div class="btn-group btn-group-justified">
          <a href="admin_result_gradecheck.php" class="btn btn-primary">Calculate Grade</a>
          <a href="admin_result_passlistcheck.php" class="btn btn-primary">Calculate Result</a>
            
          <a href="admin_result_passfailcheck.php" class="btn btn-primary">Pass Fail Checking</a>
          
        </div>

        <h2>        </h2>
        

    </div>
  </div>
</div>

 <div class="col-md-offset-2 col-md-8 col-xs-12">
 		<table class="table table-responsive table-hover"><tr><th>Subject Name</th><th> Subject Division<th> Major</th><th>First Term Percent </th><th>Second Term Percent</th><th>Update</th></tr>
 			<?=$displayTable?>
 		</table>
 	</div>
 </div>
    
    



  

    <script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>   
<script type="text/javascript" src="js/admin_result.js"></script> 
<?php

  // require '../../view/footer.view.php'; 
?>

  
   
