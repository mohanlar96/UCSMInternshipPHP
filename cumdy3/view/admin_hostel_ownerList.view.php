<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>
 

 <div class="container-fluid" >   
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Managing Owner List</h3>
          <div class="btn-group btn-group-justified" style="margin-bottom: 50px;">
             <a   href="admin_hostel.php" class="btn btn-primary">Manage Hostel List </a >
             <a  id="active-nav" href="admin_hostel_ownerList.php" class="btn btn-primary">Manage Owner List </a >
             <a  href="admin_hostel_ownerCreate.php" class="btn btn-primary">Add Owner </a>
              <a  href="admin_hostel_hostelInsert.php" class="btn btn-primary">Add Hostel </a>

        </div>


        <div class="row">
          <table class="table table-striped" id="myTable">
   <tr>  
    <th>Userame</th>  
    <th>Password</th>
    <th>Hostel</th>
    <th></th>
  </tr>
  <?php
    echo $owner_list;
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
    td2 = tr[i].getElementsByTagName("td")[2]; 
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
<script type="text/javascript" src="js/hostel_ownerList.js"></script> 
 <script src="js/bootstrap.min.js"></script>

 



        </div>

      
    </div>
  </div>
</div>
  
<script type="text/javascript" src="js/hostel_ownerList.js"></script> 


 

   

<?php
 // require '../../view/footer.view.php'; 
?>










