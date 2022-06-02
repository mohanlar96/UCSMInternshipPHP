<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";

$displayTable="";

	$displayTable.="<h1 align='center'>View Detail Local Scholarship News</h1>";
	
    $data=$db->query("select * from localscholarimage");
  foreach ($data as $key => $value) {
  $i=0;

  foreach ($value as $title => $field) {
    
    //$displayTable.= "<td> $title</td>";
  
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
    if($title=="imageName")
    {
      $displayTable.="<td> <img src='img/scholarship/".$field."' width='950' height='450'> </td>";
    }
  }

  $displayTable.="</tr>";
}

require "view/viewdetail.view.php";
?>