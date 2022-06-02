<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/activity.css">
<div class="container-fluid">
   <div class="row"> 
 <!--left side-->
      <div class="col-xs-12 col-md-10">

    	<div class="alert alert-success"> <strong> <?=$title ?></strong></div>
    	
    
    			<a href="img/news/<?=$img1?>"><img src="img/news/<?=$img1?>" class="img-thumbnail"  width="200" height="150" > </a>
    			<a href="img/news/<?=$img2?>"><img src="img/news/<?=$img2?>" class="img-thumbnail"   width="200" height="150" > </a>
    		
    			<a href="img/news/<?=$img3?>"><img src="img/news/<?=$img3?>" class="img-thumbnail"   width="200" height="150" > </a>
    			<a href="img/news/<?=$img4?>"><img src="img/news/<?=$img4?>" class="img-thumbnail"    width="200" height="150"> </a>
    			
    		
    	</div>
    </div>

    	<div class="row">
    		<p>
    			<?= $detail ?>
    		</p>

    	</div>

        <div align="center">
     <button type="button" class="btn btn-primary" onclick="window.location='admin_activity_type.php'">Back</button>
     </div>
      
    </div>

  
    


   


  
   
<script type="text/javascript" src="js/activity.js"></script> 
<?php
  //require '../../view/footer.view.php';  
?>