<?php
require 'session_admin.php';



if(!isset($_POST['submit']))
{

}

elseif($_POST['submit']=='Return')
{
	$bid=$_POST['book_id'];
	$mid=$_POST['mid'];
	$return=$_POST['return_date']; 
	$db_data=$db-> update ("rentdetail","return_Date='$return'","book_ID='$bid' and Member_ID='$mid'");

}



require "view/libraryReturn.view.php";
?>