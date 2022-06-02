<?php

// if session is login then  we will  use login/user/header.view.php

  require 'header.view.php'; 


?>
<link rel="stylesheet" type="text/css" href="css/home.css">
<div class="container-fluid" id="body-container">  

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
           <div class="item active">
              <img src="img/home/cumdy1.jpg" alt="Natural Sight of University" >
              <div class="carousel-caption">
                <h3>Natural Sight of University </h3>
                <p>Welcome To Computer University (CUMDY) Site</p>
              </div>
            </div>

            <div class="item">
              <img src="img/home/cumdy2.jpg" alt="Over View of University" >
              <div class="carousel-caption">
                <h3>Sky View of University</h3>
                <p>Welcome To Computer University (CUMDY) Site</p>
              </div>
            </div>
          
            <div class="item">
              <img src="img/home/cumdy3.jpg" alt="Back Side View of University" >
              <div class="carousel-caption">
                <h3>Natural  Side View of University</h3>
                <p>Welcome To Computer University (CUMDY) Site</p>
              </div>
            </div>

            <div class="item">
              <img src="img/home/cumdy4.jpg" alt="Front View of University" >
              <div class="carousel-caption">
                <h3>Sky View of University</h3>
                <p>Welcome To Computer University (CUMDY) Site</p>
              </div>
            </div>


          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
     </div>
  

       <div class="row" >
        	<div class="col-sm-offset-1 col-sm-10" style="border-bottom:1px solid #c2c2c2;">
        		<div class="row">
        			<ul id="icon-link" style="width: 100%;">
              
        				<li><a href="user_course.php"><img src="img/home/course.png"> </a> <h4> Courses </h4>  </li>
        				<li><a href="user_transpotation.php"><img src="img/home/transporation.png">  </a> <h4> Transpotation </h4> </li>
        				<li><a href="user_scholarship.php"><img src="img/home/scholoar.png">  </a> <h4> Internship </h4> </li>
        				<li><a href="user_hostel.php"><img src="img/home/hostel.png"> </a>  <h4>Hostel </h4>  </li>
        				<li><a href="user_activity.php"><img src="img/home/activity.png">  </a>  <h4>Activity</h4> </li>
        				<li><a href="user_registration.php"><img src="img/home/register.png">  </a>  <h4>Registration</h4> </li>
        				<li><a data-target="#myCreate" data-toggle="modal" href="#"><img src="img/home/course.png">  </a> <h4>SignUp</h4> </li>
        				<li><a data-target="#myModal" data-toggle="modal" href="#myPage"><img src="img/home/login.png">  </a>  <h4>Login</h4> </li>       				
        				
        			</ul>
        		</div>
        			
        	</div>

       </div> 


        
       <div class="row" >

        	<div class="col-sm-offset-1 col-sm-10" style=" border-bottom: 1px solid #c2c2c2;" >
              <h3 class="header-color" style="text-align: center; font-weight: bold;">Some Activities </h3>

        		<div class="row" >
            			<div class="col-sm-4">

                      <h4 class="nav-color" style="font-weight: bold">FOOT BALL</h4>
                      <div class="activity">
                        <img src="img/home/football.jpg" class="img  img-shadow img-responsive" width="100%" height="150px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                         Our university is committed to giving players very chance to university showcase their talents and make it to the highest level of football.They work closely to produce student athletes with the opportunities and information they need to succeed on the field and remain eligible  as they work toward goal. 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>
        				
        				
        			     <div class="col-sm-4">
        			     
                    <h4 class="nav-color" style="font-weight: bold">TABLE TENNIS</h4>
                      <div class="activity">
                        <img src="img/home/tennis.jpg" class="img img-responsive img-shadow " width="100%" height="250px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                         This program aims to introduce the sport to young people through a progressive range of fun and innovative table tennis related lessons and activites.
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>
                  <div class="col-sm-4">

                      <h4 class="nav-color" style="font-weight: bold">WATER FESTIAL</h4>
                      <div class="activity">
                        <img src="img/home/water.jpg" class="img  img-shadow img-responsive" width="100%" height="150px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                        Water Festival, which means is the Burmese New Year Festival and usually falls around mid April.Water Festival is a community partnership between university student .University student get thogether to dance, and pour water on others can help remove bad luck and bring out happiness. 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>

            </div>

                <div class="row">
                 <div class="col-sm-4">
                   
                    <h4 class="nav-color" style="font-weight: bold">EXCURSION</h4>
                      <div class="activity">
                        <img src="img/home/Excution.jpg" class="img img-responsive img-shadow " width="100%" height="250px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          The importantance of education trips include giving students the chance to build closer bonds with their classmates. The purpose of the trip is usually observation for education.
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>
                  
                
                
                   <div class="col-sm-4">
                   
                    <h4 class="nav-color" style="font-weight: bold">KNOWLAGE SHARING</h4>
                      <div class="activity">
                        <img src="img/home/knowledge.jpg" class="img img-responsive img-shadow " width="100%" height="250px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          The purpose of this topic is to contribute to the limited previous research on knowledge sharing is universities, by profiling the attitudes of and intenitons towards  knowledge
                          sharing of Our University academics, and by profiling their views of some of the factors that might be expected to impact on knowledge sharing activities. 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>
                   <div class="col-sm-4">
                   
                    <h4 class="nav-color" style="font-weight: bold">
                       WARSO THIN KAN
                    </h4>
                      <div class="activity">
                        <img src="img/home/WARSO.jpg" class="img img-responsive img-shadow " width="100%" height="250px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          In our university as boodness hold WAR SO THIN KAN merit. In this day, at the morning all teachers and students are presumed paritta Suttas of monasteries.
                          In this evening, we are regaled all teachers and students with KYARZAN HIN KAR. 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span> Read More..
                        </p>
                      </div>  


                  </div>

            </div>
        		
        </div>
   </div>     



        <!-- end row -->



         <div class="row"  style="margin-left:5px; margin-right:5px;  ">

        <div class="col-sm-offset-1 col-sm-10" style=" padding-bottom:50px; border-bottom:1px solid #c2c2c2;">
           <h3 class="text header-color" style="text-align :center;  font-weight:bold;" >
             History
           </h3>
           <p style="text-indent:2.5em; text-align: justify;" >
             Computer University (Mandalay) was first established as Government Computer College(Mandalay) on February 1, 2002. It was a upgraded to University level on January 20, 2007. The University is located about 2.6 miles east of Yangon-Mandalay Express Road near Naung Pin Gyi Village between Palate Town and Sint Kaing Town in Sint Kaing Township of Kyauk Se Distinct.
           </p>
           <ul id="home-info">

           <h4 class="text-info">The main purposes of the university are:</h4>
              <li>To train Information Technology (IT) professionals, leaders and entrepreneurs for Myanmar and to advance research and development in both the academic and professional disciplines.</li>
              <li>To offer both undergraduate and post graduate degrees for advanced computer education in Myanmar.</li>
              <li>To prepare our students for successful careers in the computing professions and research through knowledge creation, and innovation.</li>
           </ul>

         </div>  

        </div> 
                                   

      <!-- end histroy row -->
         
         <a name="local_result"></a>
       
       <div class="col-sm-offset-1 col-sm-10">
              <h3 class="header-color" style="text-align: center; font-weight: bold;">Some Pages </h3>               
            <div class="row">
                  <div class="col-sm-4">


                      <h4 class="nav-color" style="font-weight: bold">RESULT</h4>
                      <div class="activity">

                        <img src="img/home/some page/result.jpg" class="img  img-shadow img-responsive" width="100%" height="150px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a  data-target="#myModal" data-page="user_result.php" data-toggle="modal" href="#">See Result...</a>
                        </p>
                      </div>  

                     
                  </div>

                   <a name="local_school"></a>

                  <div class="col-sm-4" >
                  

                      <h4 class="nav-color" style="font-weight: bold">SCHOOL FEE</h4>
                      <div class="activity">
                        <img src="img/home/some page/school_fee.jpg" class="img  img-shadow img-responsive" width="100%" height="150px">
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_school.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>  


                  </div>

                   
                
               <a name="local_time"></a> 
              <div class="col-sm-4">
                   
                     <h4 class="nav-color" style="font-weight: bold">TIME TABLE</h4>
                      <div class="activity">
                        <img src="img/home/some page/time_table.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_timetable" data-toggle="modal" href="#myPage"> Login to Read More..</a>
                        </p>
                      </div>


                  </div>

                  </div>
            
        </div>

                                   

        <!-- end row -->


       <div class="row">
             
          <div class="col-sm-offset-1 col-sm-10" >
             <a name="local_book"></a>

            <div class="row">

                  <div class="col-sm-4">
                           
                        <h4 class="nav-color" style="font-weight: bold">BOOK ORDER</h4>
                      <div class="activity">
                        <img src="img/home/some page/book_order.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>

                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_book.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>


                  </div>

                  <a name="local_classroom"></a> 

                  <div class="col-sm-4">

                      <h4 class="nav-color" style="font-weight: bold">CLASSROOM MANAGEMENT</h4>
                      <div class="activity">
                        <img src="img/home/some page/classroom.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_class.php" data-toggle="modal" href="#myPage"> Login to Read More..</a>
                        </p>
                      </div>  


                  </div>

                  <a name="local_financial"></a> 
                
                
              <div class="col-sm-4">
                   
                      <h4 class="nav-color" style="font-weight: bold">FINALCIAL MANAGEMENT</h4>
                      <div class="activity">
                        <img src="img/home/some page/financial.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_finical.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>


                  </div>

                  </div>


                  <a name="local_attendence"></a> 

            <div class="row">
                  <div class="col-sm-4">

                        <h4 class="nav-color" style="font-weight: bold">ATTENDENCE INFORMATION</h4>
                      <div class="activity">
                        <img src="img/home/some page/attendence_info.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_attendance.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>


                  </div>
                
                 <a name="local_teacher"></a> 

              <div class="col-sm-4">
                   
                    <h4 class="nav-color" style="font-weight: bold">TEACHER INFORMATION</h4>
                      <div class="activity">
                        <img src="img/home/some page/teacher_info.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_teacher.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>  


                  </div>

                   <a name="local_student"></a> 

                   <div class="col-sm-4">

                      <h4 class="nav-color" style="font-weight: bold">STUDENT&MASTER INFORMATION</h4>
                      <div class="activity">
                        <img src="img/home/some page/student_info.jpg" class="img img-responsive img-shadow " width="100%" >
                        <p class="text" style="margin-top:7px;margin-left:3px;">
                          hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text hi this is some text 
                        </p>
                        <p class="read-more">
                          <span class="fa fa-plus"></span><a data-target="#myModal" data-page="user_student.php" data-toggle="modal" href="#myPage">Login to Read More..</a>
                        </p>
                      </div>  


                  </div>

                  </div>


            
        </div>
   </div>  

</div>


<!-- end body container-fluid -->
<?php 
require 'view/footer.view.php';
?>



  
   
