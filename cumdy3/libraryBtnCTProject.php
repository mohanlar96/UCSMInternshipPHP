<?php

require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";


$active_nav_admin="";
$active_nav_student="";
$active_nav_teacher="";


//if($_POST['submit']=='B.C.Sc.Project')
//{   
$db_data=$db->get("library_book", "category_ID='c03'");
$table_output="<table class='table table_hover table-responsive'><tr class='danger'><th><font size=5>Book_ID</th><th><font size=5>Book Name</th><th><font size=5>Author Name</th><th><font size=5>Link</th></tr>";
foreach ($db_data as $key => $value) {
	$book_id=$value["book_ID"];
	$book_name=$value["book_Name"];
	$author_name=$value["author_Name"];
	$link=$value['link'];
	//$table_output="<table>";
	$table_output.="<tr class='info'><td><font size=5>$book_id</td>
						<td><font size=3>$book_name</td>
						<td>$author_name</td><td><a href='$value[link]''>".$value['link']."</a></td>
						<td><input type='submit' name='submit' value='Rent'></td>
						</tr>";
					
	         }



	         
	$table_output.="</table>";
//}
	require "view/libraryBook.view.php";


 ?>