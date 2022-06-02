<?php
  require 'header.view.php'; 
?>
<div class="container-fluid" >      
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
        <h3>Activities > <?=$title ?> </h3>
       
         <div class="row">

           
            
                <a href="img/Activity/<?=$img1?>"><img src="img/Activity/<?=$img1?>" class="img-thumbnail"  width="200" height="150" > </a>
                <a href="img/Activity/<?=$img2?>"><img src="img/Activity/<?=$img2?>" class="img-thumbnail"   width="200" height="150" > </a>
            
                <a href="img/Activity/<?=$img3?>"><img src="img/Activity/<?=$img3?>" class="img-thumbnail"   width="200" height="150" > </a>
                <a href="img/Activity/<?=$img4?>"><img src="img/Activity/<?=$img4?>" class="img-thumbnail"    width="200" height="150"> </a>
                
            
        </div>
        <div class="row">
            <p>
                <?= $detail ?>
            </p>
         </div> 
         

         <div align="center">
            <button type="button" class="btn btn-primary" onclick="window.location='user_activity_type.php'">Back</button>
        </div>  
    </div>

    </div>
</div>
<script type="text/javascript" src="js/activity.js"></script> 


<?php
require 'view/footer.view.php';
?>

