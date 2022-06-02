<?php
  require 'view/header.view.php';
?>
<style >
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
</style>



<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Resutl > Result Searching </h3>

      <div class="row">
        
      <div class="dropdown">
               <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Result Searching
               <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Study Year <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                          <li><a tabindex="-1" href="user_result_testpasslist.php?id=1&name=Year">First Year</a></li>
                          <li><a tabindex="-1" href="user_result_testpasslist.php?id=2&name=Year">Second Year</a></li>
                          <li><a tabindex="-1" href="user_result_testpasslist.php?id=3&name=Year">Third Year</a></li>
                          <li><a tabindex="-1" href="user_result_testpasslist.php?id=4&name=Year">Fourth Year</a></li>
                          <li><a tabindex="-1" href="user_result_testpasslist.php?id=5&name=Year">Final Year</a></li>
                      </ul>
                  </li>


                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Specialized Major <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CST<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="user_result_testpasslist.php?id=1&name=CST">First Year</a></li>
                              </ul>
                              </li>
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CS<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="user_result_testpasslist.php?id=2&name=CS">Second Year</a></li>
                                <li><a href="user_result_testpasslist.php?id=3&name=CS">Third Year</a></li>
                                <li><a href="user_result_testpasslist.php?id=4&name=CS">Fourth Year</a></li>
                                <li><a href="user_result_testpasslist.php?id=5&name=CS">Final Year</a></li>
                              </ul>
                          </li>
                        <li class="dropdown-submenu">
                          <a class="test" href="#">CT<span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="user_result_testpasslist.php?id=2&name=CT">Second Year</a></li>
                             <li><a href="user_result_testpasslist.php?id=3&name=CT">Third Year</a></li>
                            <li><a href="user_result_testpasslist.php?id=4&name=CT">Fourth Year</a></li>
                            <li><a href="user_result_testpasslist.php?id=5&name=CT">Final Year</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>


                <li class="dropdown-submenu">
                <a class="test" href="#">Roll No<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <form action="user_result_testpasslist.php" method="get">
                      <div class="">
                        <input type="text" name="name" class="form-control" id="rollNo" placeholder="eg:1CST-10"></div>
                        <div class="">
                        <button type="submit" name="submit" class="btn btn-default btn-sm">Search</button>
             
                       </div>
                  </form>              
                </ul>
                </li>
              </ul>
            </li>
          </ul>



      </div>


      <div class="row">
        <ul class="pager">
              <li><a href=# onclick="window.history.go(-1)">Previous</a></li>
              <li><a href="user_result.php" >Cancel</a></li>
       </ul>
      </div>

      <div class="row">
        
           <from method="post" action="#" styl="display:none;"> 
                 
                    <?=@$table_output?>
                  </form>       

      </div>
  


    </div>

    </div>
</div>
<script type="text/javascript" src="js/user_result.js"></script> 


<?php
require 'view/footer.view.php';
?>







