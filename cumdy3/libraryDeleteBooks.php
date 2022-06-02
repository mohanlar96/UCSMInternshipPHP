<?php
require 'session_admin.php';

if(!isset($_POST['submit'])){

}
 elseif($_POST['submit']=='Delete'){
	$book_id=$_POST['book_id'];
	$db->delete("library_book","   book_ID='$book_id'     ");
}




require "view/libraryDeleteBook.view.php";
?>