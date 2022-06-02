<?php
require 'session_user.php';
$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_lms_upload2.php" id = "linkStyle">
	Upload file</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';

$userName =$db->get("lmsinsert","Student_ID='$userId'")[0]['Name_Eng'];
$showTable="";
$bar="";
$backQString="";

if (isset($_POST['upload'])) 
	{	

		$student_id=$userId;
		$yearId   =$_GET['yearId'];
		$section_id=$_GET['sectionId'];
		$subname  =$_GET['subName1'];
		$doc_name =trim($_POST['name']);
		$name     =trim($_FILES['file']['name']);
		$tmp_name =trim($_FILES['file']['tmp_name']);
		$date     =trim($_POST['due']);
		$ter      =trim($_POST['term']);

	
		foreach ($_GET as $key => $value) {
			$backQString.="$key=$value&";
		}


	if ($name && $doc_name && $date)
	{
		$location="user_file_upload_student/$name";
		move_uploaded_file($tmp_name,$location);
		$extension=end(explode('.', $name));
		chdir("user_file_upload_student/");
		$newname=end($db->selectStar("file_download_student"))["Sfile_ID"]
		 .".".$extension;
	
		rename($name, $newname);

		$location = "user_file_upload_student/$name";
		 $db->query("INSERT INTO file_download_student(Term_ID,
		 	Student_ID,Year_ID,
		 	Section_ID,SubCode,Date,Upload_File_Name,Path)
		 	 VALUES ('$ter','$student_id','$yearId','$section_id',
		 	 	'$subname','$date','$doc_name','$location')");	

		header("Location:user_lms_upload_student.php?$backQString");	
	}
	die("<br>Please select a file name");

}

?>


