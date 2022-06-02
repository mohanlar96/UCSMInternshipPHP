<?php
  require 'header.view.php'; 

  // if session is login then  we will  use login/user/header.view.php

?>



<div class="container">
 <div class="row">
 <div class="col-md-offset-1 col-md-10 col-xs-12  std-info-form" style="background: rgba(6,6,6,0.1); border: 1px solid black; border-radius: 5px;">
   <form class="form" role="form" method="post" action="user_master_seemore.php">
   <h2 align="center" style="background: #2A7FFF;padding-bottom: 20px;height: 50px;color: white;padding-top: 10px;">Master Information</h2>

    <div class="form-group">
      <label class="col-sm-offset-2 col-sm-4 col-xs-4" for="Photo">Photo</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="photo"><img src="<?= $photo ?>" height="100px" width="100px"> </label>
    </div>

     <div class="form-group">
      <label class="col-sm-offset-2 col-sm-4 col-xs-4" for="Name">Name</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="name"> <?= $name ?> </label>
    </div>

   
     <div class="form-group">
      <label class="col-sm-offset-2 col-sm-4 col-xs-4" for="Thesisid">Thesis_ID</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="thesisid"> <?= $tid ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Paperid">Paper_ID</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="paperid"> <?= $tpaperid ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="ThesisBookTitle">Thesis Book Title</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="thesisbooktitle"> <?= $tbooktitle ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Supervisor">Supervisor</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="supervisor"> <?= $sup ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Year">Year</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="year"> <?= $year ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Papertitle">Papertitle</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="papertitle"><?= $ptitle ?></label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Paperacceptdate">Paper Accept Date</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="paperacceptdate"> <?= $pacceptdate ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Conference">Conference</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="conference"> <?= $conference ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Presentationtype">Presentation Type</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="presentationtype"> <?= $ptype ?> </label>
       <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Field">Field</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="field"> <?= $field ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Email">Email</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="email"> <?= $email ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="PaperPdf">Paper PDF</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="paperpdf">  <a href="<?=$pdf?>"> <?= $pdf ?> </a> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="PaperAbstract">Paper Abstract</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="paperabstract"> <?= $pabstract ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="StudentId">Student_ID</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="studentid"> <?= $sid ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Externalname">External Name</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4  " for="external"> <?= $exname ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Defencedate">Defence Date</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4  " for="defencedate"> <?= $defdate ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Resultdate">Result Date</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4" for="resultdate"> <?= $rdate ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Secondauthor1">Second Author1</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="secondauthor1"> <?= $sauthor1 ?> </label>
    </div>
     <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Secondauthor2">Second Author2</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="secondauthor2"> <?= $sauthor2 ?> </label>
    </div>

      <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Secondauthor2">Seminar1</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="secondauthor2"> <?= $seminar1 ?> </label>
    </div>

      <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Secondauthor2">Seminar2</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="secondauthor2"> <?= $seminar2 ?> </label>
    </div>

      <div class="form-group">
      <label class=" col-sm-offset-2 col-sm-4 col-xs-4" for="Secondauthor2">Seminar3</label>
    </div>

     <div class="form-group">
      <label class="col-sm-4 col-xs-4 " for="secondauthor2"> <?= $seminar3?> </label>
    </div>
  


    <!-- <div class="form-group">
     <div class="col-md-offset-4 col-sm-10">
    <button type="submit" name="submit" value="Submit" class="btn btn-default" style="background: #2A7FFF;color: white;width: 90px;margin-bottom:20px;">GO</button>
    </div>
    </div> -->
</form>
</div>
</div>
</div>

  
   
