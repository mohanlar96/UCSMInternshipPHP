<html>
<head>
  <title>Computer University (Mandalay)</title>
      <meta charset="utf-8">
    
    <link rel="stylesheet" href="css/bootstrap.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/header.css">
      <link rel="stylesheet" type="text/css" href="css/result.css">

<style type="text/css">
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
</style>
</head>

<body>
      <div class="container-fluid">
      <div class="row logo-box" >
      <div class="col-sm-12 logo">
           <figure id="logo"><img src="img/user_result/welcome.jpg" align="left" width="100%"></figure>
      </div>
      </div>
      </div>
   
<div class="container-fluid">
  <div class="row"> 
    <div class="col-md-2 main-nav">
      <div class="dropdown">
               <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Pass Fail
               <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  


                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Pass <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CST<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="admin_result_passfailcheck.php?id=1&name=CST&pfid=Pass">First Year</a></li>
                              </ul>
                              </li>
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CS<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="admin_result_passfailcheck.php?id=2&name=CS&pfid=Pass">Second Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=3&name=CS&pfid=Pass">Third Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=4&name=CS&pfid=Pass">Fourth Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=5&name=CS&pfid=Pass">Final Year</a></li>
                              </ul>
                          </li>
                        <li class="dropdown-submenu">
                          <a class="test" href="#">CT<span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="admin_result_passfailcheck.php?id=2&name=CT&pfid=Pass">Second Year</a></li>
                             <li><a href="admin_result_passfailcheck.php?id=3&name=CT&pfid=Pass">Third Year</a></li>
                            <li><a href="admin_result_passfailcheck.php?id=4&name=CT&pfid=Pass">Fourth Year</a></li>
                            <li><a href="admin_result_passfailcheck.php?id=5&name=CT&pfid=Pass">Final Year</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>


                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Fail <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CST<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="admin_result_passfailcheck.php?id=1&name=CST&pfid=Fail">First Year</a></li>
                              </ul>
                              </li>
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CS<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="admin_result_passfailcheck.php?id=2&name=CS&pfid=Fail">Second Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=3&name=CS&pfid=Fail">Third Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=4&name=CS&pfid=Fail">Fourth Year</a></li>
                                <li><a href="admin_result_passfailcheck.php?id=5&name=CS&pfid=Fail">Final Year</a></li>
                              </ul>
                          </li>
                        <li class="dropdown-submenu">
                          <a class="test" href="#">CT<span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="admin_result_passfailcheck.php?id=2&name=CT&pfid=Fail">Second Year</a></li>
                             <li><a href="admin_result_passfailcheck.php?id=3&name=CT&pfid=Fail">Third Year</a></li>
                            <li><a href="admin_result_passfailcheck.php?id=4&name=CT&pfid=Fail">Fourth Year</a></li>
                            <li><a href="admin_result_passfailcheck.php?id=5&name=CT&pfid=Fail">Final Year</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>


               <!--  <li class="dropdown-submenu">
                <a class="test" href="#">Roll No<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <form action="result_testpasslist.php" method="get">
                      <div class="">
                        <input type="text" name="name" class="form-control" id="rollNo" placeholder="eg:1CST-10"></div>
                        <div class="">
                        <button type="submit" name="submit" class="btn btn-default btn-sm">Search</button>
             
                       </div>
                  </form>              
                </ul>
                </li> -->
              </ul>
            </li>
          </ul>
        </div>


              <ul class="pager">
              <li><a href=# onclick="window.history.go(-1)">Previous</a></li>
              <li><a href="admin_result.php" >Cancel</a></li>
              </ul>

      </div>

             <div class="col-md-10 main">
                  <div class="jumbotron"  >
                  <from method="post" action="#" styl="display:none;"> 
                 
                    <?=@$table_output?>
                  </form>                   
                  </div> 
            </div>


                  </div>
               
          



</body>
</html>




  
   
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>   
<script type="text/javascript" src="js/admin_result.js"></script> 
<!-- //<?php
//   require 'footer.view.php'; 
// ?> -->