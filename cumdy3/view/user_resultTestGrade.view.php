
<?php
require 'view/header.view.php';
?>
   
<style>
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
      <h3>Result > Grade Searching </h3>


      <div class="row">



              <div class="dropdown ">
               <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Grade Searching
               <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Study Year <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                          <li><a tabindex="-1" href="user_result_testgrade.php?id=1&name=Year">First Year</a></li>
                          <li><a tabindex="-1" href="user_result_testgrade.php?id=2&name=Year">Second Year</a></li>
                          <li><a tabindex="-1" href="user_result_testgrade.php?id=3&name=Year">Third Year</a></li>
                          <li><a tabindex="-1" href="user_result_testgrade.php?id=4&name=Year">Fourth Year</a></li>
                          <li><a tabindex="-1" href="user_result_testgrade.php?id=5&name=Year">Final Year</a></li>
                      </ul>
                  </li>


                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Specialized Major <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CST<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=1&name=CST">First Year</a></li>
                              </ul>
                              </li>
                         <li class="dropdown-submenu">
                            <a class="test" href="#">CS<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=2&name=CS">Second Year</a></li>
                                <li><a href="user_result_testgrade.php?id=3&name=CS">Third Year</a></li>
                                <li><a href="user_result_testgrade.php?id=4&name=CS">Fourth Year</a></li>
                                <li><a href="user_result_testgrade.php?id=5&name=CS">Final Year</a></li>
                              </ul>
                          </li>
                        <li class="dropdown-submenu">
                          <a class="test" href="#">CT<span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="user_result_testgrade.php?id=2&name=CT">Second Year</a></li>
                             <li><a href="user_result_testgrade.php?id=3&name=CT">Third Year</a></li>
                            <li><a href="user_result_testgrade.php?id=4&name=CT">Fourth Year</a></li>
                            <li><a href="user_result_testgrade.php?id=5&name=CT">Final Year</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>


                  <li class="dropdown-submenu">
                    <a class="test" tabindex="-1" href="#">Subject <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                         <li class="dropdown-submenu">
                            <a class="test" href="#">First Year<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a class="test" href="#">Myanmar<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                      <li><a href="user_result_testgrade.php?id=A&name=Myan">A</a></li>
                                      <li><a href="user_result_testgrade.php?id=B&name=Myan">B</a></li>
                                      <li><a href="user_result_testgrade.php?id=C&name=Myan">C</a></li>
                                      <li><a href="user_result_testgrade.php?id=D&name=Myan">D</a></li>
                                      <li><a href="user_result_testgrade.php?id=E&name=Myan">E</a></li>
                                      
                                    </ul>

                                </li>
                                <li><a class="test" href="#">English<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=Eng">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=Eng">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=Eng">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=Eng">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=Eng">E</a></li>
                                
                              </ul>



                                </li>
                                <li><a class="test" href="#">Physics<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=Phy">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=Phy">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=Phy">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=Phy">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=Phy">E</a></li>
                                
                              </ul>



                                </li>
                                <li><a class="test" href="#">101<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=101">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=101">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=101">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=101">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=101">E</a></li>
                                
                              </ul>



                                </li>
                                <li><a class="test" href="#">102<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=102">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=102">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=102">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=102">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=102">E</a></li>
                                
                              </ul>
                              <li><a class="test" href="#">103<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=103">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=103">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=103">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=103">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=103">E</a></li>
                                
                              </ul>



                                </li>
                                <li><a class="test" href="#">104<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                <li><a href="user_result_testgrade.php?id=A&name=104">A</a></li>
                                <li><a href="user_result_testgrade.php?id=B&name=104">B</a></li>
                                <li><a href="user_result_testgrade.php?id=C&name=104">C</a></li>
                                <li><a href="user_result_testgrade.php?id=D&name=104">D</a></li>
                                <li><a href="user_result_testgrade.php?id=E&name=104">E</a></li>
                                
                              </ul>



                                </li>



                                </li>
                              </ul>
                         
                         </li></ul></li>



                <li class="dropdown-submenu">
                <a class="test" href="#">Roll No<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <form action="user_result_testgrade.php" method="get">
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

<?php
require 'view/footer.view.php';
?>




          

  
<script type="text/javascript" src="js/user_result.js"></script> 
<!-- <?php
 // require 'view/footer.view.php'; 
 ?>  -->