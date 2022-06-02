<?php
  require 'header.view.php'; 
?>

<link rel="stylesheet" type="text/css" href="css/teacher_info.css">
<div class="container-fluid">
  <div class="row">
    <div class="col-md-2 main-nav">
      <ul class="catSub">
        <li><a href="admin_teacher_manage_dept.php">Manage Department</li></a>
         <li><a href="admin_teacher_detail_all.php">Manage Teachers</li></a>
         
       </ul>    
    </div>
    <div class="col-sm-10 col-xs-12">
        <table class="table table-hover table-responsive">
          <tr class="success"><td>Sr_No</td><td> <?=$data['Sr_No']?></td> </tr>
           <tr><td>Teacher_Name</td><td> <?=$data['Teacher_Name']?></td> </tr>
            <tr><td>Teacher_ID</td><td> <?=$data['Teacher_ID']?></td> </tr>
             <tr><td>Position</td><td> <?=$data['Position']?></td> </tr>
              <tr><td>Department_Name</td><td> <?=$data['Department_Name']?></td> </tr>
               <tr><td>Department_ID</td><td> <?=$data['Department_ID']?></td> </tr>
                <tr><td>Salary</td><td> <?=$data['Salary']?></td> </tr>
                 <tr><td>Qualification</td><td> <?=$data['Qualification']?></td> </tr>
                  <tr><td>DOB</td><td> <?=$data['DOB']?></td> </tr>
                   <tr><td>Nationality</td><td> <?=$data['Nationality']?></td> </tr>
                    <tr><td>Religion</td><td> <?=$data['Religion']?></td> </tr>
                     <tr><td>Birthplace</td><td> <?=$data['Birthplace']?></td> </tr>
                     <tr><td>NRC</td><td> <?=$data['NRC']?></td> </tr>
                      <tr><td>Father_Name</td><td> <?=$data['Father_Name']?></td> </tr>
                      <tr><td>Father_Job</td><td> <?=$data['Father_Job']?></td> </tr>
                      <tr><td>Marrital_Status</td><td> <?=$data['Marrital_Status']?></td> </tr>
                      <tr><td>Password</td><td> <?=$data['Password']?></td> </tr>
                      <tr><td>User_Level</td><td> <?=$data['User_Level']?></td> </tr>
                      <tr><td>St_D_Job</td><td> <?=$data['St_D_Job']?></td> </tr>
                      <tr><td>St_D_Pos</td><td> <?=$data['St_D_Pos']?></td> </tr>
                      <tr><td>St_D_Uni</td><td> <?=$data['St_D_Uni']?></td> </tr>
                      <tr><td>Contract</td><td> <?=$data['Contract']?></td> </tr>
                      <tr><td>Foreign_Exp</td><td> <?=$data['Foreign_Exp']?></td> </tr>
                      <tr><td>Dep_Action</td><td> <?=$data['Dep_Action']?></td> </tr>
                      <tr><td>Job_Training</td><td> <?=$data['Job_Training']?></td> </tr>
                      <tr><td>Past_Posting</td><td> <?=$data['Past_Posting']?></td> </tr>
                      <tr><td>Per_Address</td><td> <?=$data['Per_Address']?></td> </tr>
                      <tr><td>Email_Address</td><td> <?=$data['Email_Address']?></td> </tr>














          
        </table>
    </div>

  </div>

    

  
<script type="text/javascript" src="js/admin_teacher_info.js"></script> 
<?php
 // require '../../view/footer.view.php'; //
?>