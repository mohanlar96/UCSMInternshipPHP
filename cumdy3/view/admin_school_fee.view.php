<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>







<div class="container-fluid" id="body">   
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10">
      <h3>School Fee Management Admin</h3>

        <div class="btn-group btn-group-justified">
          <a href="admin_school_fee_addReceipt.php" class="btn btn-primary">Add Receipt</a>
          <a href="admin_school_fee_feeList.php" class="btn btn-primary">Fee List</a>        
          
        </div>

  <div class="row">
    <form role="form" class="form-inline" > 
    
     <div class="form-group">  
      <label id="label" for="myInput">Roll No:</label> 
      <input  type="text"  id="myInput"  onkeyup="choice()" class="form-control" placeholder="Enter roll no">
    </div>
    <div class="form-group">
    <label  for="selYear">Year:</label> 
     <select class="form-control btn-primary" id="selYear" name="selYear" onchange="choice()"  >
        <?php echo $yearlist; ?>
      </select>
    </div>
    <div class="form-group">  
    <label  for="selAcaYear">Academic Year:</label>  
      <select class="form-control btn-primary" id="selAcaYear" name="selAcaYear"  onchange="choice()">
          <?php echo $acayearlist; ?>
                
        </select>
    </div>  
 </form>

 </div>


        <div class="row">
            <table class="table" id="myTable">
           <tr> 
            <th width=20%>Name</th>
            <th width=10%>Roll No</th>
            <th width=10%>Year</th>
            <th width=10%>Academic Year</th>
            <th width=10%>Total</th>
            <th width=10%>Receipt No</th>
            <th width=10%>Book No</th>
            <th width=10%>Date</th>
            <th></th>
          </tr> 
           <?php
             echo $receipt_list;
           ?> 
         </table>
            </div>

        </div>
  </div>
</div>






<script>
 
//function choice(){  
//  var   inputRollNo, inputYear, inputAcaYear, filterRollNo, filterYear, filterAcaYear, table, tr,  i;  
//   

//  inputRollNo = document.getElementById("myInput");  
//  inputYear = document.getElementById("selYear");   
//  inputAcaYear = document.getElementById("selAcaYear"); 
//  filterRollNo = inputRollNo.value.toUpperCase();    
//  filterYear = inputYear.value.toUpperCase();    
//  filterAcaYear = inputAcaYear.value.toUpperCase(); 
//  table = document.getElementById("myTable");
//  tr = table.getElementsByTagName("tr"); 
//  
//  if(filterYear=="All")
//    filterYear = "";
//    
//  if(filterAcaYear=="All") 
//    filterAcaYear = "";
//                          
//       
//  for (i = 0; i < tr.length; i++) {  
//    td = tr[i].getElementsByTagName("td")[1]; 
//    if(td.innerHTML.toUpperCase().indexOf(filterRollNo) > -1 )  {
//         tr[i].style.display = "";
//      }     
//      else {
//        tr[i].style.display = "none";
//      }
//        
//      
//     }//end for   
// } 
function choice() {  
  var  inputRollNo, inputYear, inputAcaYear, filterRollNo, filterYear, filterAcaYear, table,  tr, td, td2, td3, i;  
  inputRollNo = document.getElementById("myInput"); 
  inputYear = document.getElementById("selYear");   
  inputAcaYear = document.getElementById("selAcaYear"); 
  filterRollNo = inputRollNo.value.toUpperCase();    
  filterYear = inputYear.value.toUpperCase();    
  filterAcaYear = inputAcaYear.value.toUpperCase(); 
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  
  if(filterYear=="ALL")
    filterYear = "";
    
  if(filterAcaYear=="ALL") 
    filterAcaYear = "";
                                             
   for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1]; 
    td2 = tr[i].getElementsByTagName("td")[2]; 
    td3 = tr[i].getElementsByTagName("td")[3]; 
    if (td) {
       if (td.innerHTML.toUpperCase().indexOf(filterRollNo) > -1 && td2.innerHTML.toUpperCase().indexOf(filterYear) > -1 
       && td3.innerHTML.toUpperCase().indexOf(filterAcaYear) > -1 )  {
        tr[i].style.display = "";
      } 
       else {
        tr[i].style.display = "none";
      }
    }  
 } 
}
</script>
  <script type="text/javascript" src="js/school_fee_receiptList.js"></script> 
<?php

?>