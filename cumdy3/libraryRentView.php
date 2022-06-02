<?php
require 'session_admin.php';

$db_data = $db ->selectStar("rentdetail");
foreach ($db_data as $key => $value) {
	$rentdetail=$value['rent_ID'];
	$tid=$value['Teacher_ID'];
	$bookid=$value['book_ID'];
	$rentdate=$value['rent_Date'];
	$return=$value['return_Date'];
	$fine=$value['fine'];
	$sid=$value['Student_ID'];
	$table_output.="<tr class='info'>
						<td>$rentdetail</td>
						<td>$tid</td>
						<td>$sid</td>
						<td>$bookid</td>
						<td>$rentdate</td>
						<td>$return</td>
						<td>$fine</td>
						</tr>";

}
$table_output.="</table>";
require "view/libraryRentbook.view.php";
?>