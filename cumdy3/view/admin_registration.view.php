<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Registration Admin</h3>
       <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Accept Student
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                     <?=$displayMenu?>
             </ul>
      </div>


    </div>

    </div>
</div>

<?php
require 'view/footer.view.php';
?>





