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
  <div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" aria-expanded="false"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
          <a class="navbar-brand" href="#">Rent Page</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
       
        <!-- /.navbar-collapse -->
       
      </div>
      <!-- /.container-fluid -->
      
    </nav>
<!-- /.container-fluid -->

        </div>
<br>

<h3 class="text-center text-uppercase"><em><strong>CU(MDY) Library Page</strong></em></h3>

 <div class="col-md-12 col-xs-12">
 <div class="alert alert-info" ><strong> Record Rent Detail Book </strong> </div>
 <form class="form-horizontal" role="form" method="post" action="libraryRent.php">
 <div class="form-group">
      <label class="control-label col-sm-2" for="uid">Member ID:</label>
      <div class="col-sm-10">
              <input type="text" class="form-control" name="mid" id="uid" placeholder="Enter Member ID" required="Member ID">
      </div>
    </div>
 
     <div class="form-group">
      <label class="control-label col-sm-2"  for="book_id">Book ID</label>
      <div class="col-sm-10">          
        <input type="TEXT" class="form-control" name='book_id' id="book_id" placeholder="Enter Book ID" required="book_id">
      </div>
    </div>
        <div class="form-group">
      <label class="control-label col-sm-2" for="rent_date">Rent Date:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  name="r" id="rent_date" placeholder="Enter DAY/MONTH/YEAR for Rent Date" required="">
      </div>
   </div>
    <br>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-2" align="center">
        <button type="submit" name="submit" value="Rent_Book" class="btn btn-success btn-lg">Rent Book</button>
      </div>
        </form>
      <form action="libraryall.php" method="post">
      <div class=" col-sm-2" align="center">
        <button type="submit" name="submit" value="Back" class="btn btn-success btn-lg">Back</button>
      </div>
      </form>
    </div>
</div>
    
    
</div>



  
   
<script type="text/javascript" src="js/library.js"></script> 
<?php
?>