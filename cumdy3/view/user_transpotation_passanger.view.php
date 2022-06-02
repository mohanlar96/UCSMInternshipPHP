<?php


  require 'header.view.php'; 


?>
<div class="container-fluid" id="body">		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10">
  		<h3> <?=$title?> > PASSANGER</h3>

   <div class="btn-group btn-group-justified">
    <a href="user_transpotation.php?id=<?=$id?>&name=<?=$title?>" class="btn btn-primary">Back</a>
    
  </div>


  	<?=$output?>
  	</div>
  </div>
</div>

<?php
 require 'view/footer.view.php'; 
?>
