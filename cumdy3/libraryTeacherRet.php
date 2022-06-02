<?php
require 'session_admin.php';



if(!isset($_POST['submit']))
{

}

elseif($_POST['submit']=='Return')
{
	$bid=$_POST['book_id'];
	$tid=$_POST['tid'];
	$return=$_POST['return_date']; 
	$db_data=$db-> update ("rentdetail","return_Date='$return'","book_ID='$bid' and Teacher_ID='$tid'");

}



require "view/libraryTeacherRe.view.php";
?>