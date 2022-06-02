<?php
require 'session_user.php';

$active_nav_student="id='active-nav'";

   $tid="";
   $tpaperid="";
   $tbooktitle="";
    $sup="";
    $year="";
    $ptitle="";
    $pacceptdate="";
    $conference="";
    $ptype="";
    $field="";
    $email="";
    $pdf="";
     $pabstract="";
     $sid="";
     $photo="";
     $exname="";
     $defdate="";
     $rdate="";
     $sauthor1="";
    $sauthor2="";


	
 
		// $studentname=$_POST['studentname'];
		// $year=$_POST['year'];
		// $title=$_POST['title'];
		// $supervisor=$_POST['sname'];
		$id=$_GET['id'];

		$result=$db->query("select * from thesis,masterstudent where thesis.Student_ID=masterstudent.Student_ID and masterstudent.Student_ID='$id'");

		// 	var_dump($result);
		// echo "Hello World";
	foreach ($result as $key => $value) {
		$sid=$value['Student_ID'];
		$name=$db->get("masterstudent","Student_ID='$id'")[0]["Name"];
	    $tid=$value['Thesis_ID'];
	    $tpaperid=$value['PaperID'];
	    $tbooktitle=$value['ThesisBookTitle'];
	    $sup=$value['Supervisor'];
	    $year=$value['Year'];
	    $ptitle=$value['PaperTitle'];
	    $pacceptdate=$value['PaperAcceptDate'];
	    $conference=$value['Conference'];
	    $ptype=$value['PresentationType'];
	    $field=$value['Field'];
	    $email=$value['Email'];
	    $pdf=$value['PaperPDF'];
	    $pabstract=$value['PaperAbstract'];
	    $photo= $value['Photo'];
	    $exname=$value['ExternalName'];
	    $defdate=$value['DefenceDate'];
	    $rdate=$value['ResultDate'];
	    $sauthor1=$value['SecondAuthor1'];
	    $sauthor2=$value['SecondAuthor2'];
	    $seminar1=$value['Seminar1'];
	    $seminar2=$value['Seminar2'];
	    $seminar3=$value['Seminar3'];

    
	}


	//var_dump($result);



require "view/user_master_detail.view.php";
?>