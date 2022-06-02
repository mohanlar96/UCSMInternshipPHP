<?php
require 'session_public.php';

if(isset($_POST['submit']))
 {  
 	$type=$_POST['search'];
 
$db_data=$db->query("select * from library_book where book_Name LIKE '%$type%' or book_ID='$type' or author_Name='$type' or category_ID='$type'"); 

$table_output="<table class='table'><tr class='danger'><td>Book Name </td><td>Author Name</td><td>Link</td></tr>";
    foreach ($db_data as $key => $value) {
	$book_name=$value["book_Name"];
	$author_name=$value["author_Name"];
	$link=$value["link"];
	$table_output.="<tr class='info'><td>$book_name</td>
						<td>$author_name</td>
						<td><a href='$value[link]''>".$value['link']."</a></td>
						</tr>";
					}
	
	$table_output.="</table>";

}

	require "view/libraryBook.view.php";
?>