<?php
require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>
<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
         <h3>Classroom Management System</h3>
     
        <form action="user_class_detail.php" method="post" class="form-inline">
        
        
        <div class="form-group col-sm-4 col-xs-12">
         <label for="yearid" >Year ID</label> 
           <select name="year" class="form-control btn-primary">
            <option value="1">First Year</option>
            <option value="2">Second Year</option>
            <option value="3">Third Year</option>
            <option value="4">Fourth Year </option>
            <option value="5">Final Year</option>
            <option value="6">Master Year</option>
           </select>
        </div>
          

        <div class="form-group col-sm-4 col-xs-12"> 
          <label for="yearid">Major ID</label>
           <select name="major" class="form-control btn-primary">
            <option value="1">CST</option>
            <option value="2">CS</option>
            <option value="3">CT</option>
           
           </select>
        </div>     
      
        <div class="form-group col-sm-4 col-xs-12" >
          <label for="yearid" >Section Name</label> 
            <select name="section" class="form-control btn-primary">
              <option value="Section(A)">Section(A)</option>
              <option value="Section(B)">Section(B)</option>
              <option value="Section(C)">Section(C)</option>
              <option value="Section(D)">Section(D)</option>
              <option value="Section(E)">Section(E)</option>
              <option value="Section(F)">Section(F)</option>
              <option value="Section(G)">Section(G)</option>
            </select>
        </div>

        <div class="form-group col-sm-offset-4 col-sm-4"  style="margin-top: 20px;">
           <button type="submit" name="submit"  value="Submit" class="btn btn-primary ">Search</button>
        </div>  
          </form>
        

    </div>
  </div>
</div>


      
        

		<script type="text/javascript" src="js/courses.js"></script> 
 <?php 
 require 'footer.view.php';  
?> 