<?PHP
require 'session_admin.php';
$active_nav_university="id='active-nav'";

$teacher_name=$_POST['searchName'];
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a>';


     	$db_data=$db->query("select Sr_No,Teacher_Name,Position,department.Department_Name from teacher join department where teacher.Department_ID=department.Department_ID  and teacher.Teacher_Name='$teacher_name' ");


$Sr="";
$teacher_nameString="";

foreach ($db_data as $key => $value) {
    $Sr=$value['Sr_No'];
	$name=$value['Teacher_Name'];
	$position=$value['Position'];
	$department=$value['Department_Name'];
	$teacher_nameString.="<tr><td>Name</td><td>$name</td>";
	$teacher_nameString.="<tr><td>Position</td><td>$position</td>";
	$teacher_nameString.="<tr><td>Dapartment</td><td>$department</td>";

}





require "view/admin_teacher_infoDisplay.view.php";





?>