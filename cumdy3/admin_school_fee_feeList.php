<?php
require 'session_admin.php';  
$active_nav_information="id='active-nav'";



$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';
 
  
$fee_list ="";
 $db_data=$db->query("select * from feecategory"  );
     $arrSize = count($db_data);  
    for($c = 0; $c <$arrSize; $c+=7){
        $one=$c;
        $two= $c+1;
        $three = $c+2;
        $four = $c+3;
        $five = $c+4;
        $six = $c+5; 
        $seven = $c+6;
        $schoolfee = $db_data[$one]["Fee"]; 
        $libraryfee = $db_data[$two]["Fee"]; 
        $entrancefee = $db_data[$three]["Fee"]; 
        $nrcfee = $db_data[$four]["Fee"]; 
        $sportfee = $db_data[$five]["Fee"]; 
        $labfee = $db_data[$six]["Fee"]; 
        $examfee = $db_data[$seven]["Fee"]; 
        $yearid = $db_data[$c]["Year_ID"];
        $acayearid = $db_data[$c]["Academic_Year_ID"];
        $db_year = $db->get("year","Year_ID='$yearid'");
           $year = $db_year[0]["Year"];
           $db_acayear = $db->get("academic_year","Academic_Year_ID='$acayearid'");
           $acayear = $db_acayear[0]["Academic_Year"];
         $fee_list.=
          "<tr>
           <td> $schoolfee</td> 
           <td> $libraryfee </td>
           <td> $entrancefee</td> 
           <td> $nrcfee</td> 
           <td> $sportfee</td> 
           <td> $labfee</td> 
           <td> $examfee</td> 
           <td> $year</td> 
           <td> $acayear</td> 
           <td><button class='btn btn-primary' data-yearid='$yearid' data-acayearid='$acayearid' >Delete</button></td> 
  </tr>";
      } 
 
require "view/admin_school_fee_feeList.view.php";
?>

