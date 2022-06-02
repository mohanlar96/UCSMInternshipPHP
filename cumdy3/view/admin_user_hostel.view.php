<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php

?>

 <link rel="stylesheet" type="text/css" href="css/hostel.css">

<div class="container-fluid" id="body">   
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10">
      <h3>Title</h3>

        <div class="btn-group btn-group-justified">
            <a href="ferry_show_mdy.php" class="btn btn-primary">Add Recepit</a>            
             <a href="ferry_show_sg.php" class="btn btn-primary">Fee List</a>
        </div>

        <form role="form" action="hostel.php" method="post" >
  <div class="form-group">  
   <div class="row">
    <div class="col-sm-1"> </div>  
    <div class="col-sm-1"> </div>
    <div class="col-sm-1"> </div>
    <div class="col-sm-2">
     <select class="form-control  btn-primary" id="selPrice" onchange="myFunction(this)">
        <option>Price</option>
        <option value="15000">15000</option>
        <option value="20000">20000</option>
        <option>25000</option>
        <option>30000</option>
        <option>35000</option>
        <option>40000</option>
        <option>50000</option>
        <option>55000</option>
        <option>60000</option>
        <option>65000</option>
        <option>80000</option>
      </select>
     </div>
     <div class="col-sm-2">  
      <select class="form-control btn-primary" id="selRoomType" onchange="myFunction(this)">
      <option>Room Type</option>
        <option>Single Room</option>
        <option>Double Room</option>
        <option>Triple Room</option>
        <option>Quadruple Room</option>
        <option>Hall Room</option>
      </select>
     </div>
     <div class="col-sm-2">  
       <select class="form-control btn-primary" id="selGender" onchange="myFunction(this)">
        <option>Boy/Girl</option>
        <option>Boy</option>
        <option>Girl</option>
        </select>
     </div>
     <div class="col-sm-2">  
      <select class="form-control btn-primary" id="selCity" onchange="myFunction(this)">
      <option>City</option>
        <option>Mandalay</option>
        <option>Singaing</option>
        <option>Kyaukse</option>
        </select>   
     </div>
    </div>
   </form>

   <table class="table" id="myTable">
   <?php
     echo $hostel_list;
 ?> 
 </table>

    </div>
  </div>
</div>


        
 
   
 <script>
 function hostelDelete() { 
     var id=$(button).data('hostelid');  
    var data="hostelid="+id;  
    var btn=$(this); 
    window.alert(data);
                $.post("action/hostel_hostelDelete.php",data,function(data){ //reply with json xml
 
                    btn.parent().parent().remove(); //for ui menualy remove

                });
 }
function myFunction(sel){
  var  choice, inputPrice, inputRoomType, inputGender, inputCity, filterPrice, filterRoomType, filterGender, filterCity, table, tr, selId, i;  
   
  selId = sel.id; 
  inputPrice = document.getElementById("selPrice");  
  inputRoomType = document.getElementById("selRoomType");   
  inputGender = document.getElementById("selGender");   
  inputCity = document.getElementById("selCity");   
  filterPrice = inputPrice.value.toUpperCase();    
  filterRoomType = inputRoomType.value.toUpperCase();    
  filterGender = inputGender.value.toUpperCase();   
  filterCity = inputCity.value.toUpperCase(); 
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr"); 
  
  if(filterPrice=="PRICE")
    filterPrice = "";
    
  if(filterRoomType=="ROOM TYPE") 
    filterRoomType = "";
    
  if(filterGender=="BOY/GIRL")
    filterGender = "";
    
  if(filterCity=="CITY") 
    filterCity = "";
       
  for (i = 0; i < tr.length; i++) {  
    td = tr[i].getElementsByTagName("td")[0]; 
    if(td.innerHTML.toUpperCase().indexOf(filterPrice) > -1 && td.innerHTML.toUpperCase().indexOf(filterRoomType) > -1 &&
     td.innerHTML.toUpperCase().indexOf(filterGender) > -1 &&  td.innerHTML.toUpperCase().indexOf(filterCity) > -1)  {
         tr[i].style.display = "";
      }     
      else {
        tr[i].style.display = "none";
      }
        
      
     }//end for   
 } 

  </script>
 
   
 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/hostel.js"></script>
<?php
  // require 'footer.view.php'; 
?>