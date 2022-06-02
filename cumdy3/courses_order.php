<?php
require 'session_admin.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="id='active-nav'";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";

  
$displayTable="";
$userId =$_SESSION["cumdyUserId"];
//echo$userId." hh";
$data=$db->query("SELECT orders.User_ID,book.BookName,book.Price  FROM ((orderdetails inner join orders on orders.Order_ID=orderdetails.Order_ID)inner join book ON book.Sub_ID=orderdetails.Sub_ID)");

foreach ($data as $key => $value) {
 	//$name=$value['BookName']; // pyin
 	//$id=$value['User_ID'];
 $i=0;

  foreach ($value as $title => $field) {
    
    $displayTable.= "<td><b> $title </b></td>";
  
    $tableTitle[$i]=$title;
    $i=$i+1;  
  }
  break;
}
$displayTable.="</tr>";

foreach ($data as $key => $value) {
   $displayTable.="<tr>";

   for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
    $title=$tableTitle[$i];
    $field=$value[$title];
    //echo $field;
    
      $displayTable.="<td> ".$field."</td>";
    
   }
    $displayTable.="</tr>";

}

	require "view/courses_order.view.php";
?>