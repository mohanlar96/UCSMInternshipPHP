<?php
require 'session_admin.php';

  $db_data= $db->query(" select * from teacher join rentdetail where teacher.Teacher_ID=rentdetail.Teacher_ID and rentdetail.return_Date IS NULL ");
  $table_output="<table class='table table_hover table-responsive'><tr class='danger'><td><font size=5>Teacher ID</td><td><font size='5'>Teacher Name</td><td><font size=5>Book Name</td></tr>";
   foreach ($db_data as $key => $value) {
  $teacher_id=$value["Teacher_ID"];
  $book_id=$value["book_ID"];
  $tname=$value["Teacher_Name"];
  $table_output.="<tr class='info'><td>$teacher_id</td>
                     <td>$tname</td>
                     <td>$book_id</td>

  				  </tr>";
}

	$table_output.="</table>";
require "view/libraryTeacherDebtorList.view.php";
?>