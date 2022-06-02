<?php
require 'session_admin.php';


$db_data = $db ->selectStar("library_book");
foreach ($db_data as $key => $value) {
	$book_id=$value["book_ID"];
	$book_name=$value["book_Name"];
	$author_name=$value[""];
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
						<td>$link</td>
						</tr>";
					}
	
	$table_output.="</table>";

require "view/libraryall.view.php";
?>