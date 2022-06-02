<?php
require 'session_admin.php';

$active_nav_student="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> 
<span class = "animate">  > </span> <a herf = "admin_lms_upload1.php" 
id = "linkStyle"></a> <span class = "animate">  > </span> 
<a herf = "#" id = "linkStyle">'.$title.'</a>';
$bar="";



if (isset($_POST['upload'])) 
	{	
		$teacher_id=$userId;
		$yearId    =$_GET['yearId'];
		$section_id=$_GET['sectionId'];
		$subname   =$_GET['subName'];
		$doc_name  =trim($_POST['name']);
		$name      =trim($_FILES['file']['name']);
		$tmp_name  =trim($_FILES['file']['tmp_name']);
		$date      =trim($_POST['due']);
		$ter       =trim($_POST['term']);

	    $backQString="";
		
		foreach ($_GET as $key => $value) {
			$backQString.="$key=$value&";
		}



		/*$allowedExts = array(
  "pdf", 
  "doc", 
  "docx",
 // "pptx"
); 

$allowedMimeTypes = array( 
  'application/msword',
  'text/pdf',
  //'application/mspowerpoint',
  'image/gif',
  'image/jpeg',
  'image/png'
);

$extension = end(explode(".", $_FILES["file"]["name"]));*/



/*if ( in_array( $_FILES["file"]["type"], $allowedMimeTypes ) ) 
{      
 move_uploaded_file($_FILES["file"]["tmp_name"], "upload/" . $_FILES["file"]["name"]); 
}*/

//||in_array( $_FILES["file"]["type"], $allowedMimeTypes)
	if ($name && $doc_name && $date )
	{

		$location="file/admin_file_upload_teacher/$name";
		move_uploaded_file($tmp_name,$location);
		$extension=end(explode('.', $name));
		chdir("file/admin_file_upload_teacher/");
		$newname=end($db->selectStar("file_download_teacher"))["Tfile_ID"] 
		.".".$extension;

		rename($name, $newname);

		$location = "file/admin_file_upload_teacher/$newname";
		 $db->query("INSERT INTO file_download_teacher(Term_ID,Teacher_ID,Year_ID,
		 	Section_ID,SubCode,Date,Upload_File_Name,Path)
		 	 VALUES ('$ter','$teacher_id','$yearId','$section_id',
		 	 	'$subname','$date','$doc_name','$location')");	

		header("Location:admin_lms_viewAnswer_teacher.php?$backQString");	

	}

		/*elseif ( 20000 < $_FILES["file"]["size"]  ) {
		  die( 'Please provide a smaller file [E/1].' );
		}

		elseif ( ! ( in_array($extension, $allowedExts ) ) ) {
		  die('Please provide another file type [E/2].');
		}*/
}

?>
	