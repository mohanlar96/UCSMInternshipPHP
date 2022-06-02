<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";

if(isset($_POST['delete'])){
	

$studentid= $_POST['studentid'];
$did= $_POST['did'];
$thesisid= $_POST['thesisid'];

$rollno= $_POST['rollno'];

$paperid= $_POST['paperid'];

if(empty($studentid) || empty($did) || empty($thesisid) || empty($rollno) || empty($paperid))
{ 
 $db->query("delete from masterstudent where Student_ID='$studentid' and Roll_No='$rollno'");
 $db->query("delete from defencemember where D_ID='$did' and Thesis_ID='$thesisid'");
 $db->query("delete from thesis where Thesis_ID='$thesisid' or PaperID='$paperid' or Student_ID='$studentid'");
 //var_dump($db);
 if($db){
  echo "<script type='text/javascript'>
      window.alert('Delete Successful!');
      </script>";
    }else{
       echo "<script type='text/javascript'>
      window.alert('Delete Fail!');
      </script>";
    }
  }
}

require "view/admin_master_delete.view.php";
?>