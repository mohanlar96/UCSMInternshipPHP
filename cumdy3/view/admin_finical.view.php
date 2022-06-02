<div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Finical Management Admin</h3>
  		  

        <div class="row">
          <div class="col-sm-12">
             <form class="form-horizontal" role="form" method="GET" action="about.php">
    <h2 align="center" style="color:blue;">Financial Admin Login Page</h2>
 
    <div class="form-group">
      <label class="control-label col-sm-2" for="major"">Year:</label>
     <div class="col-sm-3">
     <input type="hidden" name="userId" value="<?php echo $_REQUEST['userId'] ?>">
     <select class="combo" name="year">

      <option value="2016">2016</option>
     
      
      </select>
     </div>
     <div class="form-group">
     <label class="control-label col-sm-2" for="major"">Month:</label>
     <div class="col-sm-3">
     <select class="combo" class="control-form" name="month" id="month">
      <option name="January" value="Janauary">Janauary</option>
      <option value="February">February</option>
      <option value="March">March</option>
      <option value="April">April</option>
      <option value="May">May</option>
      <option value="June">June</option>
      <option value="July">July</option>
      <option value="August">August</option>
      <option value="September">September</option>
      <option value="October">October</option>
      <option value="November">November</option>
      <option value="December">December</option>


     </select>
     <input type="submit" value="view" >
     </div>
    </div>
    </div>
    </form>
    </div>
    </div>



          </div>
        </div>

         <div class="row">
          <div class="col-sm-12">

              
  <table class="table table-responsive table-hover" style="background-color: lightblue;" method="GET" action="about.php">   
      <tr rowspan="2">
      <th>Teacher_Id</th>
      <th>Teacher_Name</th>
      <th>Position</th>
      <th>Department</th>
      <th>CurrentSalary</th>
      <th>Type of Leave</th>
      <th>No: of Leave </th>
      <th>Actual Salary</th></tr>
      <!-- <tr> <td><?=$displayTable['Teacher_Id']?></td> <td><?= $displayTable['Teacher_Name']?> </td> <td> <?=$displayTable['Position']?></td> <td><?=$displayTable['Department_Name']?></td> <td><?=$displayTable['CurrentSalary']?></td> <td><?=$displayTable['Leave Name']?></td> <td><?=$displayTable['No_Of_Leave_Days']?></td> <td><?=$displayTable['ActualSalary']?></td></tr>-->
      
        <?$displayTable?>
       
   </table>


          </div>
        </div>

  	</div>
  </div>
</div>