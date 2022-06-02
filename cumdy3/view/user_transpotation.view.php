<?php


  require 'header.view.php'; 


?>


<div class="container-fluid" id="body">   
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10">
      <h3>Transopration Service</h3>

        <div class="btn-group btn-group-justified">
    <a <?=$mdy_active?> href="user_transpotation.php?<?=$getQString?>id=1&name=MANDALAY" class="btn btn-primary">Mandalay</a>
    <a <?=$sk_active?> href="user_transpotation.php?<?=$getQString?>id=2&name=SINTGAING" class="btn btn-primary">Sintgaing</a>
      
    <a <?=$ks_active?> href="user_transpotation.php?<?=$getQString?>id=3&name=KYAUKSE" class="btn btn-primary">Kyaukse</a>
    <a  <?=$mt_active?> href="user_transpotation.php?<?=$getQString?>id=4&name=MYITTHARR" class="btn btn-primary">Myittharr</a>
     <a <?=$sg_active?> href="user_transpotation.php?<?=$getQString?>id=5&name=SAGAING" class="btn btn-primary">Sagaing</a>
     <a <?=$bo_active?> href="ferry_booking.php?<?=$getQString?>" class="btn btn-primary">Booking</a>
  </div>

  <h2><?=$title?></h2>

  <?=$table_output?>

    </div>
  </div>
</div>



<?php
 require 'view/footer.view.php'; 
?>

