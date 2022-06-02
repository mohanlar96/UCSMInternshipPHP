<!DOCTYPE html>
<html>
<head>
  <title>Computer University (Mandalay)</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="library/font/font.css">
    <link rel="stylesheet" type="text/css" href="library/font/fortin-font.css">  
      <link rel="stylesheet" type="text/css" href="library/font/font-awesome/css/font-awesome.min.css">
      <link rel="icon" href="img/home/logo.png">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
    
      <?php
      @$them=$_SESSION["them"];

        if(isset($them)){
          echo "<link rel='stylesheet' id='myThemCSS' type='text/css' href='$them'>
            <script>
            var isThemSet='true';
            </script>
           ";

        }else{
          echo "<link rel='stylesheet' id='myThemCSS' type='text/css' href='css/blue_thems.css'>
          <script>
            var isThemSet='false';
            </script>
             ";

        }
      ?>
      <link rel="stylesheet" href="css/header.css">
      <script type="text/javascript" src="js/jquery.min.js"></script>
      <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
  <body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" >
  <div class="container-fluid">


    <div class="row " id="header" style="padding-bottom: 8px; ">
          <div id="logo-header" class="col-lg-offset-2 col-lg-6 col-md-offset-2 col-md-6 col-sm-offset-1 col-sm-6 col-xs-offset-1 col-xs-11" style="margin-top:10px;">
             <img src="img/home/header-logo.png" class="logo-img img-responsive"  id="logo"  alt="Computer University Mandalay"  >            
          </div> 
        
          <div class="col-lg-2 col-md-2 col-sm-4   col-xs-12 " style="margin-top: 20px;" >
          <form id="searchForms" action="https://www.google.com" name="searchForm" >
            <input name="search" type="text" class="form-control" id="inputSuccess" placeholder="Search.." style="margin-left: 2px; margin-right: 2px;"> </input>
            <button onclick="function(){
            document.getElementById('searchForms').setAttribute('action','www.google.com?q='+document.forms.searchForm.search.value);
              document.forms.searchForm.submit();
            }"
            class="fa btn-primary fa-search form-control-feedback" style="margin-right: 10px; color: white; "></button>  
            </form>      
          </div>     

    </div>


                                             <!-- Modal -->
                                        <div id="myModal" class="modal fade " role="dialog" >
                                          <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                          <div class="modal-header login_bg">
                                            <button type="button" class="close" data-dismiss="modal" style="font-size: 33px;font-weight: bold;color: rgb(255, 255, 255);text-shadow: 1px 1px 9px black;">&times;</button>
                                            <h4 class="modal-title">Please Login</h4>
                                          </div>
                                          <div class="modal-body ">
                                           <form class="form-horizontal" id="login" action="#" method="post" role="form">
                                              
                                         
                                            <div class="form-group">
                                              <label class="control-label col-sm-2" for="username">Username:</label>
                                              <div class="col-sm-10">
                                                <input type="text" class="form-control" name="username" id="name" placeholder="Enter Username">
                                              </div>
                                           </div>

                                              <div class="form-group">
                                                <label class="control-label col-sm-2" for="pwd">Password:</label>
                                                <div class="col-sm-10">          
                                                  <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter password">
                                                </div>
                                              </div>

                                                        
                                              <div class="form-group">        
                                                <div class="col-xs-offset-2 col-xs-3">
                                                  <button type="Reset" class="btn btn-primary

                                                   btnSubmit">Reset</button>
                                                </div>
                                                <div class="col-xs-offset-2 col-xs-3" style="float:right;">
                                                  <button type="submit" name="login" value="Login" class="btn btn-primary Submit">Login</button>
                                                </div>
                                              </div>
                                              <div class="form-group">
                                                <div  id="loginMsg" class="col-sm-offset-2 col-sm-10" style="color:red;">
                                              
                                                   </div>
                                                
                                                
                                              </div>
                                              
                                            </form>
                                          </div>
                                         
                                        </div>

                                      </div>
                                    </div>

                                    <!-- end modal -->

<script type="text/javascript" src="js/login.js"></script>



                                            <!-- Modal -->
                                        <div id="mySetting" class="modal fade " role="dialog" >
                                          <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                          <div class="modal-header  login_bg">
                                            <button type="button" class="close" data-dismiss="modal" style="font-size: 33px;font-weight: bold;color: rgb(255, 255, 255);text-shadow: 1px 1px 9px black;">&times;</button>
                                            <h4 class="modal-title">Changing Password </h4>
                                          </div>
                                          <div class="modal-body ">
                                           <form class="form-horizontal register" action="#" method="post" role="form" >
                                                  
                                              <div class="form-group">
                                                <label class="control-label col-xs-3 login_label" for="password" >Old Password:</label>
                                                <div class="col-xs-9">
                                                  <input type="password"  class="form-control" name="password" id="password" placeholder="Enter Old Password">
                                                </div>
                                             </div>

                                                <div class="form-group">
                                                  <label class="control-label col-xs-3 login_label" for="pwd">New Password:</label>
                                                  <div class="col-xs-9">          
                                                    <input data-id=<?=$userId?> type="password" name="nPassword" class="form-control" id="new_password" placeholder="Enter password">
                                                  </div>
                                                </div>

                                                 <div class="form-group">
                                                  <label class="control-label col-xs-3 login_label" for="Rpwd">Retype-Password:</label>
                                                  <div class="col-xs-9">          
                                                    <input type="password" name="rPassword" class="form-control" 
                                                    id="re_password" placeholder="Enter password">
                                                  </div>
                                                </div>

                                                <div class="form-group">
                                                  <div class="col-xs-offset-2 col-xs-10" id="msg" style="color:red;">
                                                      
                                                  </div>
                                                </div>

                                                          
                                                <div class="form-group" >        
                                                  <div class="col-xs-offset-3 col-xs-3 col-xs-offset-2 col-xs-4 ">
                                                    <input id="submit" type="submit" name="login" value="Change" class="btn btn-primary btnSubmit" style="float:right; color: #fff;">
                                                  </div>
                                                </div>
                                            </form>
                                            </div>
                                         
                                        </div>

                                      </div>
                                    </div>

                                    <!-- end modal -->






                            <script type="text/javascript" src="js/change_password.js"></script> 




                                         <!-- Modal -->
                                        <div id="myCreate" class="modal fade " role="dialog">
                                          <div class="modal-dialog">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                          <div class="modal-header login_bg">
                                            <button type="button" class="close" data-dismiss="modal" style="font-size: 33px;font-weight: bold;color: rgb(255, 255, 255);text-shadow: 1px 1px 9px black;">&times;</button>
                                            <h4 class="modal-title">Create An Account </h4>
                                          </div>
                                          <div class="modal-body ">
                                              <form class="form-horizontal register" id="createAcc" role="form" method="post" action="#">   <div class="form-group">
                                                <label class="control-label col-xs-4 signup_label" for="UserID">Admintion No:</label>
                                                <div class="col-xs-6">
                                                  <input type="text" required  class="form-control" name="id" name="userID" id="userID" placeholder="Enter UserID">
                                                 </div>
                                            </div>
                                            <div class="form-group">
                                              <label class="control-label col-xs-4 signup_label" for="email">Email:</label>
                                              <div class="col-xs-6">
                                                <input type="email"   required class="form-control" name="email" id="email" placeholder="Enter email">
                                              </div>
                                            </div>
                                           <div class="form-group">
                                              <label class="control-label col-xs-4 signup_label" for="username">Username:</label>
                                              <div class="col-xs-6">
                                                <input type="text" required class="form-control"  name="username" id="username" placeholder="Enter Name">
                                              </div>
                                            </div>
                                            <div class="form-group">
                                              <label class="control-label col-xs-4 signup_label" for="pwd">Password:</label>
                                              <div class="col-xs-6">          
                                                <input type="password" required  class="form-control" name="password" id="pwd" placeholder="Enter password">
                                              </div>
                                            </div>

                                        <div class="form-group">
                                              <label class="control-label col-xs-4 signup_label" for="RePwd">Confirm Password:</label>
                                              <div class="col-xs-6">          
                                                <input type="password" required  class="form-control" name="Repassword" id="RePwd" placeholder="Retype password">
                                              </div>
                                            </div>
                                           <div class="form-group">
                                                  <div class="col-xs-offset-2 col-xs-10" id="msgCreate" style="color:red;">
                                                      
                                                  </div>
                                                </div>
 

                                            <div class="form-group">        
                                              <div class="col-xs-offset-4 col-xs-6 " >
                                                <button type="submit"  style="color:#fff;" name="submit" value="Upload" class="btn btn-primary btnSubmit">Submit</button>
                                              </div>
                                            </div>
                                          </form>
                                          </div>
                                         
                                        </div>

                                      </div>
                                    </div>
                                        

                                    <!-- end modal -->
                                <script type="text/javascript" src="js/create_an_account.js"></script> 



  </div> 
    <!-- end container-fluid -->


<nav class="navbar navbar-inverse borderTopThem" data-spy="affix" data-offset-top="50">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!-- <a class="navbar-brand" href="#myPage">Logo</a> -->
      <!-- HIDDEN LOGO HERE -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">

      <div class="row">
        <div class="col-lg-offset-2 col-lg-7 col-md-offset-2 col-md-9 col-sm-offset-1 col-sm-11">
            <ul class="nav navbar-nav disBlock">
              <li <?=$active_nav_home?> ><a href="index.php"  > <?=$now_nav_session?></a></li>
               <li <?=$active_nav_information?> class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">INFORMATION
                <span class="caret"></span></a>
                <ul class="dropdown-menu my-drop-down" >
                  <?=$information_nav_menu?>
                </ul>
              </li>
               <li <?=$active_nav_register?>  class="dropdown">
                <a class="dropdown-toggle" data-nav="tooltip" data-placement="left" title="Only For Login User"  data-toggle="dropdown" href="#" >REGISTER
                <span class="caret"></span></a>
                <ul class="dropdown-menu  my-drop-down " >

                 <?= $register_nav_menu ?>

                </ul>
              </li>
               <li <?=$active_nav_university?> class="dropdown">
                <a class="dropdown-toggle" data-nav="tooltip" data-placement="left" title="Only For Login User" data-toggle="dropdown" href="#">UNIVERSITY
                <span class="caret"></span></a>
                <ul class="dropdown-menu    my-drop-down"  >
                  <?=$university_nav_menu?>
                </ul>
              </li>
              <li class="dropdown">
                <a  <?=$active_nav_student?> class="dropdown-toggle" data-nav="tooltip" data-placement="left" title="Only For Login User" data-toggle="dropdown" href="#"> STUDENTS
                <span class="caret"></span></a>
                <ul class="dropdown-menu my-drop-down  ">
                    <?=$student_nav_menu?>
               


                </ul>
              </li>
                <?=$nav_login?>
            </ul>
             
        </div>
        </div>

          
      
     

    </div>
  </div>
</nav>
<script>
  if(isThemSet=="false"){

      var loc = document.getElementById('myThemCSS');

      var date = new Date();
      var time = date.getHours();

      if(time >=1 && time <=12) 
      {
        //blue
        loc.setAttribute('href',"css/blue_thems.css");
          $("span.themeValue").text('Blue');

      }
      else if(time >=12 && time <= 16){
        //magneta
        loc.setAttribute('href',"css/magenta_thems.css");
            $("span.themeValue").text('Magneta');

      }
      else if(time >= 16 && time <= 19){
        //purple
        loc.setAttribute('href',"css/purple_thems.css");
            $("span.themeValue").text('Purple');

      }
      else{
        //dark
        loc.setAttribute('href',"css/dark_thems.css");
            $("span.themeValue").text('Dark');

      }
}
  
</script>


<!-- end navication --> 


      




      
















