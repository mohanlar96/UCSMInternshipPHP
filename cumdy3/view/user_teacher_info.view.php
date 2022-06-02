<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/teacher_info.css">
<div class="container-fluid">
  
    <div class="row">
    <div class="col-xs-offset-3 col-xs-9 col-sm-offset-5 col-sm-5  myForm ">

    <datalist id="searchList">
<option >Mg </option>
<option > Hla</option>
  
</datalist>

    <form name="teacher_form"  id="searchName" class="form-horizontal register" action="user_teacher_info_name.php" method="post" role="form">


         <div class="form-group">
              
                    
                       <div class="col-sm-offset-9 col-sm-4">
                      <input list="searchList" type="text" class="form-control" name="searchName" id="name" placeholder="Search teacher Name">
                       </div>
               </div>
        
   
    </form>
    </div></div>
    <div class=row1>
    <div class="col-xs-12 col-sm-offset-2 col-sm-6 myForm">
   
<form class="form-horizontal" role="form" name="teacher_form"  id="teacherForm" method="post"  action="user_teacher_infoDisplay.php">


<div class="form-group">
    <label for="Photo" class="control-label col-sm-offset-4 col-sm-3">Select Department</label>
  <div class="col-sm-5">
       <select name="department" class="form-control" id="dep">
        <OPTION value="">
              -- select Department --
              <?= $select_Department ?>
           </OPTION>
      </select>

    </div>
  </div>

 


<div class="form-group">
    <label for="Date" class="control-label col-sm-offset-4 col-sm-3">Select Position</label>
    <div class="col-sm-5">
    	  <select name="position" class="form-control" id="pos">
		    <OPTION value="">
	            -- select Position --
	            <?= $select_Position ?>
	        </OPTION>
	    </select>

    </div>
</div>
</form>
<form class="form-horizontal" role="form" name="teacher_form"  id="teacherForm" method="post"  action="user_teacher_infoDisplay.php">

<div class="form-group">
    <label for="academic_year" class="control-label col-sm-offset-4 col-sm-3">Teacher Name</label>
    <div class="col-sm-5">
    	<select name="teacher" class="form-control" id="teacherSelect">
		   <OPTION value="" >
            -- Select Department or Position  --
        </OPTION>
      </select>

    </div>
</div>


           <div class="form-group" >        
           <div class="col-sm-offset-7 col-sm-3  col-xs-offset-4 col-xs-4 ">
              <input type="submit" value ="Search "  name="Search" class="btn btn-success btnSubmit">
           </div>
           
         </div>


    </form>

</div>
<!-- end for col-sm -->
</div> 
</div>
<!-- end for row -->
<!--
  <?=$searchData?>
  -->

  
<script type="text/javascript" src="js/jquery.min.js"></script>    
<script type="text/javascript" src="js/user_teacher_info.js"></script> 
<script type="text/javascript" src="js/admin.js"></script>
<?php
 // require '../../view/footer.view.php'; //
?>