<?php
  require 'view/header.view.php';                                        
?>
 <link rel="stylesheet" type="text/css" href="css/school_fee.css">  
  
<div class="container">
 <form role="form" class="form-horizontal" action="admin_school_fee_addReceipt.php" method="post" > 
   <!-- <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
    </div>
    <div class="error col-sm-4"><?php //echo $nameErr;?></div> 
  </div> -->
  <div class="form-group">
    <label class="control-label col-sm-2" for="rollno">Roll No:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rollno" name="rollno" placeholder="Enter roll no">
    </div>
    <div class="error col-sm-4"><?php echo $rollnoErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="year">Year:</label>
    <div class="col-sm-4"> 
    <select class="form-control" id="year" name="year">
        <?php echo $yearlist; ?>
      </select> 
    </div>  
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="acayear">Academic Year:</label>
    <div class="col-sm-4">
    <select class="form-control" id="acayear" name="acayear">
            <?php echo $acayearlist; ?>
        </select>                
    </div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="receiptno">Receipt No:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="receiptno" name="receiptno" placeholder="Enter receipt no">
    </div>
    <div class="error col-sm-4"><?php echo $receiptnoErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="bookno">Book No:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="bookno" name="bookno" placeholder="Enter book no">
    </div>
    <div class="error col-sm-4"><?php echo $booknoErr;?></div> 
  </div>  
  <div class="form-group">
    <label class="control-label col-sm-2" for="date">Date:</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" id="date" name="date" placeholder="2017/07/22">
    </div>
    <div class="error col-sm-4"><?php echo $dateErr;?></div> 
  </div>  
   <div class="form-group" align="center"> 
  <div class="col-sm-8">  
    <button type="submit" name="submit" class="btn btn-primary btn-md" >Add</button>
  </div>
 </div>
  
     
  </form>
</div>
 <script>
 function add_receipt(){
    
   
}
</script>
  <script type="text/javascript" src="js/jquery.min.js"></script> 
  <script src="js/bootstrap.min.js"></script>
<?php
  // require  '../../view/footer.view.php';
?>