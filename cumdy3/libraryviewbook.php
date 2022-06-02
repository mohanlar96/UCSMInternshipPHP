<?php
require 'session_admin.php';

$db_data = $db ->selectStar("library_book");
$table_output="<table class='table'> <tr class='danger'><th><font size=5>Boook_ID</th><th><font size=5>Book Name</th><th><font size=5>Author Name</th><th><font size=5>Edition</th><th><font size=5>Donor</th><th><font size=5>Published Year</th><th><font size=5>Category ID</th><th><font size=5>Link</th></tr>";
foreach ($db_data as $key => $value) {
	$book_id=$value["book_ID"];
	$book_name=$value["book_Name"];
	$author_name=$value["author_Name"];
	$edition=$value["edition"];
	$donor=$value["donor"];
	$published_year=$value["published_Year"];
	$category_id=$value["category_ID"];
	$link=$value["link"];
	$table_output.="<tr class='info'><td>$book_id</td>
						<td>$book_name</td>
						<td>$author_name</td>
						<td>$edition</td>
						<td>$donor</td>
						<td>$published_year</td>
						<td>$category_id</td>
						<td><a href='$value[link]''>".$value['link']."</a></td>
						</tr>";
					}
	
	$table_output.="</table>";

require"view/libraryAllBooks.view.php";
?>