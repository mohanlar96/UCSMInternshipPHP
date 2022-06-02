<?php 
require 'session_public.php';
$active_nav_information="id='active-nav'";


if(isset($_GET['submit'])){

$subj=$_GET['subcode'];
$maj=$_GET['major'];

$term=$_GET['term'];
$bname=$_GET['bname'];



$tableoutput="<table class='table table-responsive'><tr>
		<th>SubjectCode</th>
		<th>Subject Name</th>
		<th>book name</th>
		<th>Major</th>
		<th>Term</th>
		<th>Chapter</th>
		<th>Page</th>
		<th>Perod</th>
		<th>DetailLecture</th>
		<th>Reference book</th></tr>";
$plan=$db->query("select * from lectureplan where 
	SubCode='$subj' AND BookName='$bname' AND Major='$maj' AND Term='$term'");
//var_dump($plan);
foreach ($plan as $key => $value) {
	$no=$value['No'];
	$book=$value['SubCode'];
	$subj=$value['SubName'];
	$bname=$value['BookName'];
	$major=$value['Major'];
	$term=$value['Term'];
	$chapter=$value['Chapter'];
	$page=$value['Page'];
	$period=$value['Period'];
	$detaillect=$value['DetailLecturePlan'];
	$refbook=$value['ReferenceBook'];



$tableoutput.="<tr class='active'><td>$book</td>
								  <td>$subj</td>
								  <td>$bname</td>
								  <td>$major</td>
								  <td>$term</td>
								  <td>$chapter</td>
								  <td>$page</td>
								  <td>$period</td>
								 
								  <td>$detaillect</td>
								  <td>$refbook</td></tr>";

$tableoutput.="</table>";
}

}

//$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_courses_lecture.php" id = "linkStyle">Courses</a>';











require 'view/user_courses_lecture.view.php';
?>
































