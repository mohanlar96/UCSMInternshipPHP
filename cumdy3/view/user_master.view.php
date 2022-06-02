<?php
  require 'header.view.php'; 
?>


<div class="container-fluid">
 <div class="row">
 <div class="col-md-offset-1 col-md-10 col-xs-12  std-info-form" style="background: rgba(6,6,6,0.1); border: 1px solid black; border-radius: 5px;">
 <form class="form-horizontal" role="form" method="post" action="user_master_seemore.php">
    <h2 align="center" style="padding-bottom: 30px;padding-top: 20px;background:#2A7FFF;color: white;">Master Information</h2>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-4" for="studentname">
    <select name="schoice" size="1">
      <option value="studentname">Student Name</option>
      <option value="year">Year</option>
      <option value="title">Thesis Book Thesis</option>
      <option value="supervisor">Supervisor Name</option>
    </select>
    </div>
    <div class="col-sm-4">
     <input type="text" class="form-control" id="choose" name="choose" placeholder="">
    </div>
  </div>

 
   

 <div class="form-group">
    <div class="col-sm-offset-2 col-sm-2 col-sm-6">
      <button type="submit" name="submit"  value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;margin-bottom: 30px;">Search</button>
    </div>
  </div>
  
   </form>
  </div>
  </div>
  </div>

<!-- <div class="row" style="overflow-x: scroll;">
   <table class="table table-hover" style="border:1px solid black;margin-top: 30px;">
    <thead>
      <tr style="border:1px solid black;">
        <th style="border:1px solid black;">Thesis_ID</th>
        <th style="border:1px solid black;">Paper ID</th>
        <th style="border:1px solid black;">Thesis Book Title</th>
         <th style="border:1px solid black;">Supervisor</th>
        <th style="border:1px solid black;">Year</th>
         <th style="border:1px solid black;">PaperTitle</th>
        <th style="border:1px solid black;">Paper Accept Date</th>
         <th style="border:1px solid black;">Conference</th>
        <th style="border:1px solid black;">Presentation Type</th>
         <th style="border:1px solid black;">Field</th>
        <th style="border:1px solid black;">Email</th>
         <th style="border:1px solid black;">Paper PDF</th>
        <th style="border:1px solid black;">Paper Abstract</th>
         <th style="border:1px solid black;">Student_ID</th>
        <th style="border:1px solid black;">Photo</th>
         <th style="border:1px solid black;">External Name</th>
        <th style="border:1px solid black;">Defence Date</th>
         <th style="border:1px solid black;">Result Date</th>
        <th style="border:1px solid black;">Second Author1</th>
         <th style="border:1px solid black;">Second Author2</th>
      </tr>
    </thead>
    <tbody>
      <tr style="border:1px solid black;">
        <td style="border:1px solid black;"><?= $tid ?></td>
        <td style="border:1px solid black;"><?= $tpaperid ?></td>
        <td style="border:1px solid black;"><?= $tbooktitle ?></td>
         <td style="border:1px solid black;"><?= $sup ?></td>
        <td style="border:1px solid black;"><?= $year ?></td>
        <td style="border:1px solid black;"><?= $ptitle ?></td>
         <td style="border:1px solid black;"><?= $pacceptdate ?></td>
        <td style="border:1px solid black;"><?= $conference ?></td>
        <td style="border:1px solid black;"><?= $ptype ?></td>
         <td style="border:1px solid black;"><?= $field ?></td>
        <td style="border:1px solid black;"><?= $email ?></td>
        <td style="border:1px solid black;"><?= $pdf ?></td>
         <td style="border:1px solid black;"><?= $pabstract ?></td>
        <td style="border:1px solid black;"><?= $sid ?></td>
        <td style="border:1px solid black;"><?= $photo ?></td>
         <td style="border:1px solid black;"><?= $exname ?></td>
        <td style="border:1px solid black;"><?= $defdate ?></td>
        <td style="border:1px solid black;"><?= $rdate ?></td>
         <td style="border:1px solid black;"><?= $sauthor1 ?></td>
        <td style="border:1px solid black;"><?= $sauthor2 ?></td>
      </tr>
    </tbody>
  </table>
  </div> -->

   
<script type="text/javascript" src="js/std_info.js"></script> 
<?php 
 require 'footer.view.php';  
?> 