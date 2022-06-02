<?php
  require 'view/header.view.php';                                        
?>


<link rel="stylesheet" type="text/css" href="css/lms_admin.css">
 <link rel="stylesheet" type="text/css" href="css/lms.css">


<div class="row">
  <div class="col-sm-offset-2 col-sm-10 col-xs-12">
    <div class="alert alert-success" style="margin-top:20px;">
      <?=$bar1?>
    </div>
        
        <form action="admin_lms_edit.php?<?=$qString?>"
        role="form"  method="post" 
        enctype="multipart/form-data" class="form-horizontal"
        style="margin-top: 20px;">


         <div class="form-group">
          <label class="control-label col-sm-2" for="rno"
           style="text-align: left;">
          Roll Number</label>
          <div class="col-sm-3">          
            <input type="text" class="form-control" name="roll_no"
             >
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-sm-2" for="mark"
           style="text-align: left;">Mark</label>
          <div class="col-sm-3">          
            <input type="text" class="form-control" name="mark">
          </div>
          </div>

        <div class="form-group">        
          <div class="col-sm-offset-2 col-sm-10">
            <a href="admin_lms_edit.php?<?=$qString?>">
          <input type='submit' value='Update' class='btn btn-success'
           name='update' id='update'></a>

      </div>
    </div>

  </form>
</div>
</div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<?php
 require 'footer.view.php'; 
?>