<?PHP
require 'session_user.php';



$active_nav_university="id='active-nav'";

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_transporation.php" id = "linkStyle">Transporation</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


$sr_no=$_POST['sr_no'];



  
     	$db_data=$db->query("select Teacher_Name, tt.* from teacher ta left join Teacher_Timetable tt on ta.Sr_No=tt.Sr_No where tt.Sr_No='$sr_no'");

echo $sr_no;

$teacher_timeString="";
$name="";

foreach ($db_data as $key => $value) {

	$name=$value['Teacher_Name'];
	$day=$value['Day'];
	$t1=$value['Time1'];
	$t2=$value['Time2'];
	$t3=$value['Time3'];
	$t4=$value['Time4'];
	$t5=$value['Time5'];
	$t6=$value['Time6'];
	$t7=$value['Time7'];
	$teacher_timeString.="<tr><td>$day</td><td>$t1</td><td>$t2</td><td>$t3</td><td>$t4</td><td>$t5</td><td>$t6</td><td>$t7</td>";
	//$teacher_nameString.="<tr><td>Position</td><td>$position</td>";
	//$teacher_nameString.="<tr><td>Dapartment</td><td>$department</td>";

}





require "view/user_teacher_timetable.view.php";





?>