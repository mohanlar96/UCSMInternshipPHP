<?php
require 'session_user.php';
$active_nav_home="";
$active_nav_register="";
$active_nav_courses="";
$active_nav_result="";
$active_nav_Activity="";
$active_nav_about="";


$displayTable="";



{
  
  $displayTable.="<h2 align='center'><i>International Scholarship News<i></h2>";
  $data=$db->query("select * from scholarshippic");
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

   for ($i=1; $i < sizeof($tableTitle) ; $i++) { 
    $title=$tableTitle[$i];
    $field=$value[$title];
    //echo $field." ".$title;
    if($title=="image")
    {
      $displayTable.="<td> <img src='img/scholarship/".$field."' width='300' height='200'> </td>";
    }
    else if($title=="name")
    {
      $displayTable.="<td> <h2 style='color:skyblue;'>".$field ."</h2>";
    }
    else{
    $displayTable.="<br> <h2><a href='".$field."'>".$field ."</a></h2></td>";
  
}
}
  $displayTable.="</tr>";
}

}
	
require "view/internationalscholarship.view.php";
?>