<?php
  require 'view/header.view.php';                                        
?>
 <link rel="stylesheet" type="text/css" href="css/school_fee.css">  
  
<div class="container">
 <form role="form" class="form-horizontal" action="admin_school_fee_addFee.php" method="post" > 
   <div class="form-group">
    <label class="control-label col-sm-2" for="schoolfee">School Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="schoolfee" name="schoolfee" placeholder="Enter School Fee">
    </div>
    <div class="error col-sm-4"><?php echo $schoolfeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="libraryfee">Library Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="libraryfee" name="libraryfee" placeholder="Enter Library Fee">
    </div>
    <div class="error col-sm-4"><?php echo $libraryfeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="entrancefee">Entrance Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="entrancefee" name="entrancefee" placeholder="Enter Entrance Fee">
    </div>
    <div class="error col-sm-4"><?php echo $entrancefeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="nrcfee">NRC Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="nrcfee" name="nrcfee" placeholder="Enter NRC Fee">
    </div>
    <div class="error col-sm-4"><?php echo $nrcfeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="sportfee">Sport Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="sportfee" name="sportfee" placeholder="Enter Sport Fee">
    </div>
    <div class="error col-sm-4"><?php echo $sportfeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="labfee">Lab Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="labfee" name="labfee" placeholder="Enter Lab Fee">
    </div>
    <div class="error col-sm-4"><?php echo $labfeeErr;?></div> 
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="examfee">Exam Fee:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="examfee" name="examfee" placeholder="Enter Exam Fee">
    </div>
    <div class="error col-sm-4"><?php echo $examfeeErr;?></div> 
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