<?php
require 'session_public.php';
$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">Information Page</a> <span class = "animate"> 
 > </span><a herf = "user_libiary.php" id = "linkStyle">library</a>';



$cid=$_GET['cid'];

  
$db_data=$db->get("library_book", "category_ID='$cid'");
$table_output="<table class='table table_hover table-responsive'><tr class='danger'><th><font size=5>Book_ID</th><th><font size=5>Book Name</th><th><font size=5>Author Name</th><th><font size=5>Edition</th><th><font size=5>Link</th></tr>";
foreach ($db_data as $key => $value) {
	$book_id=$value["book_ID"];
	$book_name=$value["book_Name"];
	$author_name=$value["author_Name"];
	$link=$value['link'];
	$edi=$value['edition'];
	$table_output.="<tr class='info'><td><font size=3>$book_id</td>
						<td><font size=3>$book_name</td>
						<td>$author_name</td>
						<td>$edi</td>
						<td><a href='$value[link]''>".$value['link']."</a></td>
						</tr>";
					
	         }



	         
	$table_output.="</table>";
//}
	require "view/libraryBook.view.php";


 ?>