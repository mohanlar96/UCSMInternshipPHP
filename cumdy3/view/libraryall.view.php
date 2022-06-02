<!DOCTYPE html>
<html>
<head>
  <title>Library System</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="login/admin/file/font.css">
    <link rel="stylesheet" href="css/bootstrap.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/header.css">
      
          
</head>
<body>
  <div class="container-fluid">
    <div class="row logo-box" >
      <div class="col-sm-12 logo">
          <img alt="University Of Computer Studies (Mandalay) " class="img-responsive" src="img/logo.png">
        </div>
    </div>
  </div>
<div class="row">
    <nav class="col-sm-3" id="myScrollspy">

    </div>
      <!-- /.container-fluid -->
      
    </nav>

<font color="blue"><h3>Book view</h3>
</font>
<br>
<div class="row">
<div class="col-sm-2" align="center">
<form action="libraryMember.php" method="post">
<input type="submit" name="submit"  value ="Back" class="btn btn-info btn-lg">
</form>
</div>
<div class="col-sm-4">
<form action="libraryissue.php" method="post">
  <input type="submit" name="submit"  value ="Rent Books" class="btn btn-info btn-lg">

</form>
</div></div>
<br/>
<?php
echo "<table class='table table_hover table-responsive'>$table_output";
?>