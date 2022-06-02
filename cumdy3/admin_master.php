<?php
require 'session_user.php';



$msg="";

if(@$_POST['submit']==="Submit"){

$photo=$_POST['photo'];
$name= $_POST['name'];
$studentid= $_POST['studentid'];
$did= $_POST['did'];
$thesisid= $_POST['thesisid'];
$year= $_POST['year'];
$secondauthor1= $_POST['secondauthor1'];
$secondauthor2= $_POST['secondauthor2'];
$rollno= $_POST['rollno'];
$title= $_POST['title'];
$supervisor= $_POST['supervisor'];
$papertitle= $_POST['papertitle'];
$paperid= $_POST['paperid'];
$paperacceptdate= $_POST['paperacceptdate'];
$conference= $_POST['conference'];
$presentationtype= $_POST['presentationtype'];
$field= $_POST['field'];
$email= $_POST['email'];
$seminar1= $_POST['firstseminardate'];
$seminar2= $_POST['secondseminardate'];
$seminar3= $_POST['thirdseminardate'];
$defencedate= $_POST['defencedate'];
$externalexaminername= $_POST['externalexaminername'];
$firstdefencemembername= $_POST['firstdefencemembername'];
$seconddefencemembername= $_POST['seconddefencemembername'];
$thirddefencemembername= $_POST['thirddefencemembername'];
$fourthdefencemembername= $_POST['fourthdefencemembername'];
$resultdate= $_POST['resultdate'];
$paperabstract= $_POST['paperabstract'];
$pdf= $_POST['pdf'];

	//var_dump($_POST);

if(!$db->is_data("select * from thesis where Photo='$photo' and Student_ID='$studentid' and Thesis_ID='$thesisid' and Secondauthor1='$secondauthor1' and Secondauthor2='$secondauthor2' and ThesisBookTitle='$title' and PaperTitle='$papertitle' and Paper_ID='$paperid' and Email='$email' and ExternalName='$externalexaminername' and PapeerAbstract='$paperabstract' and PDF='$pdf'"))
{

  if(empty($photo) || empty($name) || empty($studentid) || empty($did) || empty($thesisid) || empty($year) || empty($secondauthor1) || empty($secondauthor2) || empty($rollno)  || empty($title) || empty($supervisor) || empty($papertitle) || empty($paperid) || empty($paperacceptdate) || empty($conference) || empty($presentationtype) || empty($field) || empty($email) || empty($seminar1) || empty($seminar2) || empty($seminar3) || empty($defencedate) || empty($externalexaminername) || empty($firstdefencemembername) || empty($seconddefencemembername) || empty($thirddefencemembername) || empty($fourthdefencemembername) || empty($resultdate) || empty($paperabstract) || empty($pdf))
     {
	
	      echo '<script type="text/javascript">';
      echo 'alert("Please Fill Above Your Field!")';
      echo '</script>';
     }
      else
      {

      $db->query("insert into masterstudent values('$studentid','$name','$rollno')");

      $db->query("insert into defencemember values('$did','$thesisid','$firstdefencemembername','$seconddefencemembername','$thirddefencemembername','$fourthdefencemembername')");

      $db->query("insert into thesis values('$thesisid','$paperid','$title','$supervisor','$year','$papertitle','$paperacceptdate','$conference','$presentationtype','$field','$email','$pdf','$paperabstract','$studentid','$photo','$externalexaminername','$defencedate','$resultdate','$secondauthor1','$secondauthor2','$seminar1','$seminar2','$seminar3')");

      echo '<script type="text/javascript">';
      echo 'alert("Insert Successful!")';
      echo '</script>';
       }
  }
}

  




require "view/admin_master.view.php";
?>