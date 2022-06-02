<?php
  require 'header.view.php'; 
?>

 <link rel="stylesheet" type="text/css" href="css/std_info.css">
<div class="container-fluid">
   
   <div class="row">


   <div class="col-md-offset-1 col-md-10 col-xs-12  std-info-form" style="background: rgba(6,6,6,0.1); border: 1px solid black; border-radius: 5px;">
    
  
    
   <form class="form-horizontal" role="form" method="post" action="admin_master.php">
    <h2 align="center" style="padding-bottom: 30px;padding-top: 20px;background:#2A7FFF;color: white;">Master Information</h2>
   

 <div class="form-group ">
    <label class="control-label col-sm-2" for="photo">Photo:</label>
    <div class="col-sm-3">
      <input type="file"  class="form-control" id="photo" name="photo" placeholder="Choose File" required >
    </div>

     <div class="form-group">
    <label class="control-label col-sm-2" for="pdf">PDF:</label>
    <div class="col-sm-3">
      <input type="file" class="form-control" id="pdf" name="pdf" placeholder="PDF" required>
    </div>
  </div>

  </div>
  <div class="form-group ">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-10">
      <input type="text"  class="form-control" id="name" name="name" placeholder="Enter Name" required>
    </div>

  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="studentid">Student ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="studentid" name="studentid" placeholder="Enter Student ID"  required>
    </div>
  </div>

  

  

  <div class="form-group">
    <label class="control-label col-sm-2" for="thesisid">Thesis ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="thesisid" name="thesisid" placeholder="Enter Thesis ID" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="rollno">Roll No:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="rollno" name="rollno" placeholder="Enter Roll No" required>
    </div>
  </div>

    

  <div class="form-group">
    <label class="control-label col-sm-2" for="title">Title:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" required>
    </div>
  </div>

    <div class="form-group">
    <label class="control-label col-sm-2" for="supervisor">Supervisor Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="supervisor" name="supervisor" placeholder="Enter Supervisor Name" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="year">Year:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="year" name="year" placeholder="Enter Year" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="papertitle">Paper Title:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="papertitle" name="papertitle" placeholder="Enter Paper Title" required>
    </div>
  </div>
  
    <div class="form-group">
    <label class="control-label col-sm-2" for="paperid">Paper ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="paperid" name="paperid" placeholder="Enter Paper ID" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="paperacceptdate">Paper Accept Date:</label>
    <div class="col-sm-10">
      <input type="dates" class="form-control" id="paperacceptdate" name="paperacceptdate" placeholder="Enter Paper Accept Date" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="paperabstract">Paper Abstract:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="paperabstract" name="paperabstract" placeholder="Enter Paper Abstract" required>
    </div>
  </div>

 

  <div class="form-group">
    <label class="control-label col-sm-2" for="secondauthor1">Second Author1:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="secondauthor1" name="secondauthor1" placeholder="Enter Second Author1" required >
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="secondauthor2">Second Author2:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="secondauthor2" name="secondauthor2" placeholder="EnterSecond Author2" required >
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="firstseminardate">First Seminar Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="firstseminardate" name="firstseminardate" placeholder="Enter First Seminar Date" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="secondseminardate">Second Seminar Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="secondseminardate" name="secondseminardate" placeholder="Enter Second Seminar Date" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="thirdseminardate">Third Seminar Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="thirdseminardate" name="thirdseminardate" placeholder="Enter Third Seminar Date" required>
    </div>
  </div>

    <div class="form-group">
    <label class="control-label col-sm-2" for="defencedate">Defence Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="defencedate" name="defencedate" placeholder="Enter Defence Date" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="externalexaminername">External Examiner Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="externalexaminername" name="externalexaminername" placeholder="Enter External Examiner Name" required>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="did">Defence ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="did" name="did" placeholder="Enter Defence ID" required>
    </div>
  </div>

    <div class="form-group">
       <label class="control-label col-sm-2" for="firstdefencemembername">Defence Member Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="firstdefencemembername" name="firstdefencemembername" placeholder="Enter First Defence Member Name" required>
    </div>
  </div>

   <div class="form-group">
      
    <div class="col-sm-offset-2 col-sm-10 ">
      <input type="text" class="form-control" id="seconddefencemembername" name="seconddefencemembername" placeholder="Enter Second Defence Member Name" required>
    </div>
  </div>

   <div class="form-group">
   
    <div class="col-sm-offset-2 col-sm-10">
      <input type="text" class="form-control" id="thirddefencemembername" name="thirddefencemembername" placeholder="Enter Third Defence Member Name" required>
    </div>
  </div>
   <div class="form-group">
   
    <div class=" col-sm-offset-2 col-sm-10">
      <input type="text" class="form-control" id="fourthdefencemembername" name="fourthdefencemembername" placeholder="Enter Fourth Defence Member Name" required>
    </div>
  </div>

   <div class="form-group">
    <label class="control-label col-sm-2" for="resultdate">Result Date:</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="resultdate" name="resultdate" placeholder="Enter Result Date" required>
    </div>
  </div>


  <div class="form-group">
   <label class="control-label col-sm-2" for="conference">Conference:</label>
   <div class="col-sm-10">
     <select class="form-control" name="conference" required>
         <option>Yangon</option>
         <option>Mandalay</option>
        
     </select>
     </div>
  </div>


  <div class="form-group">
   <label class="control-label col-sm-2" for="conference">Presentation Type:</label>
   <div class="col-sm-10">
     <select class="form-control" name="presentationtype" required>
         <option>Oral</option>
         <option></option>
         <option></option>
         <option></option>
         <option></option>
     </select>
     </div>
  </div>


 

  <div class="form-group">
   <label class="control-label col-sm-2" for="conference">Field:</label>
   <div class="col-sm-10">
     <select class="form-control" name="field" required>
         <option>AI</option>
         <option>Data Mining</option>
         <option>Database</option>
         <option>Cloud Computating</option>
         <option>Control System</option>
         <option>Cryptography</option>
         <option>Data Warehousing</option>
         <option>Database System</option>
         <option>Decision Support Systems</option>
         <option>Image Prcessing</option>
         <option>Information Systems</option>
         <option>Information Extraction/Retrieval</option>
         <option>Natural Language Processing</option>
         <option>Networking and Security</option>
         <option>Parallel and Distributed Computing</option>
         <option>Simulation and Modeling</option>
         <option> Software Engineering</option>
         <option>Virtualiztion</option>
         <option>Web Engineering</option>
     </select>
     </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-3">
      <button type="submit" name="submit"  value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;">Add</button>
    </div>

     <div class="col-sm-3">
      <button type="submit" name="delete"  value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;"><a href="std_info_delete.php"> Delete</a></button>
    </div>

     

  </div>

   
 
</form>


   </div> 

 </div>
    


  
   
<script type="text/javascript" src="js/std_info.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>