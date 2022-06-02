<?php  
require 'db_connection.php';
                            
$id=$_POST['studentid'];
$receiptid = $db->get("receipt","Student_ID='$id'")[0]["ReceiptID"];
if($db->delete("receipt","Student_ID='$id'")){
    echo "true";
}
if($db->delete("receiptdetail","ReceiptID=$receiptid")){
    echo "true";
}




 
?>
