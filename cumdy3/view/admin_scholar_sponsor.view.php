<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php
  ?>


<link rel="stylesheet" type="text/css" href="css/scholar_sponsor.css">
<div class="container-fluid">
  <div align="center"><h1>Welcome Scholarship Page for Administrator</h1></div>
    <div class="row">
     	<div class="col-md-2 col-xs-12 main-nav">
     	  <ul class="catSub">
      
          <li><a href="admin_scholarship.php?id=1">International Scholarship</a></li>
          <li><a href="admin_scholarship.php?id=2">Local Scholarship</a></li>
          <li><a href="admin_award_Admin.php?tableName1=scholarship&tableName2=scholarshipdetail&tableName3=teacher&tableName4=academic_year&id=1">Teacher Award</a> </li>   
          <li><a href="admin_award_Admin.php?tableName1=scholarship&tableName2=scholarshipdetail&tableName3=student&tableName4=studentdetail&tableName5=academic_year&id=2">Student Award</a> </li>  
          <li><a href="admin_award_Admin.php?tableName1=internship&tableName2=internshipdetail&tableName3=student&tableName4=studentdetail&tableName5=academic_year&id=3">Internship Award</a> </li>  
          <li><a href="admin_sponsorship_award.php?tableName1=sponsorshipaward&tableName2=sponsorshipapplicant&tableName3=sponsorshipname&tableName4=academic_year&id=1">Sponsorship Applicant Selection</a> </li>           
          
          <li><a href="admin_sponsorship_award.php?id=3">Sponsorship Award</a></li>
        </ul>    
    	</div>
        <div>
          <img alt=" " class="img-responsive" src="img/scholarship/e.png">
        </div>
  </div>  
</div>  

  
   
<script type="text/javascript" src="js/admin_scholarship.js"></script> 
<?php
require "view/footer.view.php";
?>


