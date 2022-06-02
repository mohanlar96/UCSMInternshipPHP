<?php
require 'session_admin.php';


  $db_data= $db->query(" select * from studentdetail join rentdetail join student where student.Roll_No=rentdetail.Student_ID and student.Student_ID=studentdetail.Student_ID and rentdetail.return_Date IS NULL ");
  $table_output="<table class='table table_hover table-responsive'><tr class='danger'>
  <th><font size=5>Student Roll No</th>
  <th><font size=5>Student Name</th>
  <th><font size=5>Book ID</th>
  </tr>";
   foreach ($db_data as $key => $value) {
  $book_id=$value["book_ID"];
  $rno=$value["Roll_No"];
  $sname=$value["Name_Eng"];
  $table_output.="<tr class='info'>
                     <td>$rno</td>
                     <td>$sname</td>
                     <td>$book_id</td>
  				  </tr>";
}

	$table_output.="</table>";
require "view/libraryDebtorList.view.php";
?>