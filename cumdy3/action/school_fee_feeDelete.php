<?php  
require 'db_connection.php';
                            
$yearid=$_POST['yearid'];
$acayearid=$_POST['acayearid'];
if($db->delete("feecategory","Year_ID='$yearid'","Academic_Year_ID='$acayearid'")){
    echo "true";

}




 
?>
