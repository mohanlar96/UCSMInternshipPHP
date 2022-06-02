<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>
<div class="container-fluid"> 
   <div class="row">
    <div class="col-sm-10"></div>
    <div class="col-sm-2"> 
        <button  type="button" class="btn btn-primary btn-md" onclick=window.location='admin_school_fee_addFee.php'>Add Fee</button> 
    </div>
  </div>
  <table class='table table-striped' id='myTable'>
    <tr>  
    <th>School Fee</th>  
    <th>Library Fee</th>
    <th>Entrance Fee</th>
    <th>Registration Fee</th>
    <th>Sport Fee</th>
    <th>Lab Fee</th>
    <th>Exam Fee</th>  
    <th>Year</th>
    <th>Academic Year</th>
    <th></th>
  </tr>      
  <?php
      echo $fee_list; 
  ?> 
 </table>
</div>
   
<script>
function myFunction() {  
  var   inputName,   filterName,  tr, td, i;  
  inputName = document.getElementById("myInput"); 
  filterName = inputName.value.toUpperCase();  
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  
   for (i = 0; i < tr.length; i++) {
    td2 = tr[i].getElementsByTagName("td")[0]; 
    if (td2) {
       if (td2.innerHTML.toUpperCase().indexOf(filterName) > -1 )  {
        tr[i].style.display = "";
      } 
       else {
        tr[i].style.display = "none";
      }
    }  
 } 
}
</script>
  <script type="text/javascript" src="js/jquery.min.js"></script> 
  <script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/school_fee_feeList.js"></script> 
<?php
  // require '../../view/footer.view.php'; 
?>