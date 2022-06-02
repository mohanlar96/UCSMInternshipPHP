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

    
  <script src="jQueryAssets/jquery-1.11.1.min.js"></script>
  </head>
  <body style="padding-top: 70px">
  <div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#"><font color="darkred">CU(MDY) Library Page</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="topFixedNavbar1">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <ul class="nav navbar-nav navbar-right">
          
                  </ul>
        <!-- /.navbar-collapse -->
       
      <!-- /.container-fluid -->
    </nav>
<div class="container-login" >
    <div class="row" style="margin-bottom: 150px;">

      <div class=" col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4 ">
        <form class="form-horizontal register" action="libraryAdminLogin.php" method="post" role="form" >
          <p style="text-align: center;font-size: 23px;font-weight: bold; font-style: italic; border-bottom: 1px solid #f1f1f1;color: white;">
          Please Login
          </p>
     
        <div class="form-group">
          <label class="control-label col-sm-4 login_label" for="username" >Name:</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="username" id="name" placeholder="Enter UserID">
          </div>
       </div>

          <div class="form-group">
            <label class="control-label col-sm-4 login_label" for="pwd">Password:</label>
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
 