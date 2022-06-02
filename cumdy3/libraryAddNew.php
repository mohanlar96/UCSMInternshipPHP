<?php
require 'session_admin.php';


if(!isset($_POST['submit']))
{

}
 elseif($_POST['submit']=='ADD'){
	$book_id=$_POST['book_id'];
	$book_name=$_POST['bname'];
	$aname=$_POST['aname'];
	$edition=$_POST['edi'];
	$donor=$_POST['donor'];
	$published_year=$_POST['year'];
	$category_id=$_POST['cid'];
	$link=$_POST['link'];
	 $data= $db -> query("insert into library_book(book_ID,book_Name,edition,published_Year,donor,author_Name,category_ID,link) values('$book_id','$book_name','$edition','$published_year','$donor','$aname','$category_id','$link')");
}




require "view/libraryAddNew.view.php";
?>