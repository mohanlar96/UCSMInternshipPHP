<?php
require 'session_admin.php';

$activie_nav_information="id='active_nav'";
//$active_nav_home="";
//$active_nav_Activity="";
//$active_nav_about="";
//$active_nav_signup="id='active-nav'";
//$active_nav_login="";

$typeId=$_GET["typeId"];

$data=$db->get("event", " Type_ID='$typeId' ")[0];
// var_dump($data);

$detail=$data['Detail'];
$title=$data['Title'];
$imgs= explode("/",$data['Photo']);
$img1=$imgs[0];
$img2=$imgs[1];
$img3=$imgs[2];
$img4=$imgs[3];




$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  >
  </span> <a herf = "admin_activity_detail.php" id = "linkStyle">Activity Type</a>'; 

require "view/admin_activity_detail.view.php";
?>