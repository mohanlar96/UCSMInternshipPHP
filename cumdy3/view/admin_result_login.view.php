<!-- <?php
  //require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php
?> -->

<html>
<head>
  <title>Computer University (Mandalay)</title>
      <meta charset="utf-8">
    
    <link rel="stylesheet" href="css/bootstrap.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
       <link rel="stylesheet" href="css/header.css">
      <link rel="stylesheet" type="text/css" href="css/result.css">
 
</head>

<body>



      <div class="container-fluid">
      <div class="row logo-box" >
      <div class="col-sm-12 logo">
           <figure id="logo"><img src="img/user_result/welcome.jpg" align="left" width="100%"></figure>
      </div>
      </div>
      </div>









<link rel="stylesheet" type="text/css" href="css/login.css">

<div class="container-fluid" >
    <div class="row" style="margin-bottom: 150px;">

      <div class=" col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4 ">
        <?=@$alert?>
        <form class="form-horizontal register" action="login.php" method="post" role="form" >
          <p style="text-align: center;font-size: 23px;font-weight: bold; font-style: italic; border-bottom: 1px solid #f1f1f1;color: white;">
          Please Login
          </p>
     
        <div class="form-group">
          <label class="control-label col-sm-3 login_label" for="username" >Username:</label>
          <div class="col-sm-9">
            <input type="text" value="<?=@$usernameVal?>" class="form-control" name="username" id="name" placeholder="Enter UserID">
          </div>
       </div>

          <div class="form-group">
            <label class="control-label col-sm-3 login_label" for="pwd">Password:</label>
            <div class="col-sm-9">          
              <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter password">
            </div>
          </div>

                    
          <div class="form-group" >        
            <div class="col-sm-offset-3 col-sm-3  col-xs-offset-2 col-xs-4 ">
              <input type="reset" class="btn btn-default btnSubmit">
            </div>
            <div class="col-sm-offset-3 col-sm-3 col-xs-offset-2 col-xs-4 ">
              <input type="submit" name="login" value="Login" class="btn btn-default btnSubmit" style="float:right;">
            </div>
          </div>


          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10" style="color:red;">
                <?= $msg ?>
            </div>
          </div>
          
        </form>
        </div>
        </div><!-- end for div.row -->
 



  
   
<script type="text/javascript" src="js/login.js"></script> 
<?php
  require 'footer.view.php'; 
?>