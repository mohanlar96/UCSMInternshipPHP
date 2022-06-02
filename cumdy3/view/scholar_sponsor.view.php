<?php
  require 'header.view.php'; 
?>
<link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<div class="container-fluid">
  <div class="row">
    
    <div class="col-md-2 col-xs-12 main-nav">
      <ul class="catSub">
        <li><a href="sponsorship.php?tableName1=sponsorshipapplicant">SponsorShip Applicant Form</a></li>
        <li><a href="scholarship.php?id=1">International Scholarship</a></li>
        <li><a href="scholarship.php?id=2">Local Scholarship</a></li>
        <li><a href="awardteacher.php?tableName1=scholarship&tableName2=scholarshipdetail&tableName3=teacher&tableName4=acedamic_year">Teacher Award</a></li>   
        <li><a href="awardstudent.php?tableName1=scholarship&tableName2=scholarshipdetail&tableName3=student&tableName4=student_detail&tableName5=acedamic_year">Student Award</a></li>  
        <li><a href="awardinternship.php?tableName1=internship&tableName2=internshipdetail&tableName3=student&tableName4=student_detail&tableName5=acedamic_year">Internship Award</a> </li> 
         <li><a href="awardsponsorlist.php?tableName1=sponsorshipaward&tableName2=sponsorshipapplicant&tableName3=sponsorshipname&tableName4=acedamic_year"> Sponsorship Award List</a> </li>  
        <li><a href="awardinternal.php?tableName1=sponsorshipapplicant">Apply Sponsorship Student List</a> </li>              
      </ul>
    </div>
    <div class="col-md-10 col-xs-10 main-nav">
    <img src="img/scholarship/people.jpg" width="100%" height="100%"> 
    </div><!--col-->   
     <!-- <form class="form-horizontal" role="form" method="GET" action="awardinfo.php">

    <div class="form-group">
        <input type="text" class="form-control col-sm-12" id="name" name="name" placeholder="Enter name or rollno">
    </div>
      <div class="col-sm-3">
         <input type="submit" name="submit" value="search" class="btn btn-default">
      </div>
    </form> -->
</div><!--row-->
    </div>
</div>
  
  
  
 
   
 


  
  

<script type="text/javascript" src="js/scholarship.js"></script> 
<?php
  require '../../view/footer.view.php'; 
?>

