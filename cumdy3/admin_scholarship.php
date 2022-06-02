<?php
require 'session_admin.php';
$activie_nav_information="id='active_nav'";


$id=$_GET["id"];
$displayTable="<tr>";
if($id==1)
{
    $displayTable.="<h2 align='center'><i>International Scholarship News<i></h2>";
    $data=$db->query("select * from scholarshippic");
    foreach ($data as $key => $value) {
      $i=0;
        foreach ($value as $title => $field) {
            $tableTitle[$i]=$title;
            $i=$i+1;  
        }
        $displayTable.="<td><a href='admin_addInterScholar.php' class='btn btn-info'>Add New International Scholarship </td>";
        break;
    }
    $displayTable.="</tr>";
    foreach ($data as $key => $value) {
        $displayTable.="<tr>";
        for($i=1; $i < sizeof($tableTitle) ; $i++) { 
            $title=$tableTitle[$i];
            $field=$value[$title];
            if($title=="image")
            {
                $newsid=$field;
                $displayTable.="<td> <img src='img/scholarship/".$field."' width='300' height='200'> </td>";
            }
            else if($title=="name")
            {
                $displayTable.="<td> <h3 style='color:skyblue;'>".$field ."</h3>";
            }
            else
            {
                $displayTable.="<h3><a href='".$field."'>".$field ."</a></h3></td>";
            }
            $btndel="<button class='btn btn-info' id='Delete' data-newsid='$newsid' data-action='Delete'>Delete</button>";
        }
        $displayTable.="<td>$btndel</td></tr>";
    }
    
}
if($id==2)
{
      $displayTable.="<h1 align='center'>Local Scholarship News</h1>";
      $data=$db->query("select * from localscholarimage");
      foreach ($data as $key => $value) {
      $i=0;
          foreach ($value as $title => $field) {
              $displayTable.= "<td> $title</td>";
              $tableTitle[$i]=$title;
              $i=$i+1;  
          }
          $displayTable.="<td><a href='admin_addLocalScholar.php' class='btn btn-info'>Add New Local Scholarship </td>";
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
                $localid=$field;
                $displayTable.="<td> <img src='img/scholarship/".$field."' width='80' height='40'> </td>";
              }
              else{
                  $displayTable.="<td> $field </td>";
              }
          }
        $btndel="<button class='btn btn-info' data-localid='$localid' data-action='Delete'>Delete</button>";
        $displayTable.="<td>$btndel</td></tr>";
      }
}
if($id==5)
{
	$displayTable.="<h1 align='center'>Uploaded Successfully!!!</h1>";
}
	

  	




	require "view/admin_scholarship.view.php";
?>