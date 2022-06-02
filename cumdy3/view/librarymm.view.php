<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
    <link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <script src="jQueryAssets/jquery-1.11.1.min.js"></script>
  </head>
  <body style="padding-top: 70px">
  <div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" aria-expanded="false"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
          <a class="navbar-brand" href="#"><font color="blue">CU(MDY) Library Page</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="topFixedNavbar1">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="libraryMC.php"><font color="blue" size="4">Member Register</a></li></font>
          
          
          <li><a href="library.php"><font color="blue" size="4">Home</a></li></font>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
       
      </div>
      <!-- /.container-fluid -->
      
    </nav>
<div class="container-login">
    <div class="row" style="margin-bottom: 150px;">

      <div class=" col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4 ">
        <form class="form-horizontal register" action="librarymm.php" method="post" role="form" >
          <p style="text-align: center;font-size: 23px;font-weight: bold; font-style: italic; border-bottom: 1px solid #f1f1f1;color: white;">
          Please Login
          </p>
     
        <div class="form-group">
          <label class="control-label col-sm-4 login_label" for="username" >Member Name:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="username" id="name" placeholder="Enter Member ID">
          </div>
       </div>

          <div class="form-group">
            <label class="control-label col-sm-4 login_label" for="pwd">Member ID:</label>
            <div class="col-sm-8">          
              <input type="password" name="id" class="form-control" id="pwd" placeholder="Enter password">
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

        </form>
        </div>
        </div><!-- end for div.row -->
 