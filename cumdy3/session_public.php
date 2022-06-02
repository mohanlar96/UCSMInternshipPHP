<?php session_start();
@$is_login=$_SESSION['isLogin'];
$correctPage="true";
$is_sessioin_login="false";
if(@$is_login=="true" AND $_SESSION["accessLevel"]=="user" AND $correctPage="true"){
  $is_sessioin_login="true";

}
session_commit();
if($is_sessioin_login=="true"){   
  require 'session_user.php';
}else{
  require 'session.php';

}
$active_nav_information="id='active-nav'";
?>