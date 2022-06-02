<?php
require 'session_admin.php';

$active_nav_student="id='active_nav'";

$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_result.php" id = "linkStyle">Exam Result</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';


    $displayTable="";
 $data=$db->query("select * from subject_percent join subjectinformation where subject_percent.Serial_No=subjectinformation.Serial_No");
 

foreach ($data as $key => $value) {
		$division ="<span class='text-danger'> No division</span> ";	
	
	$subName=$value['SubCode'];
	
	$P_ID=$value['Percent_ID'];
	$serialNo=$value['Serial_No'];

	$majorID=$value['Major_ID'];
	//echo $subName." major id=".$majorID."<br>";

	$percent1=$value['First_Term_Percent'];
	$percent2=$value['Second_Term_Percent'];
	$major=$db->get("major","Major_ID='$majorID'")[0]['Major'];
	if(! isset($percent2)){
		$percent2="<span class='text-danger'> No Subject</span> ";


	}
	$btnUpdate="<button class='btn btn-info' data-id='$P_ID' data-serialNo='$serialNo' data-majorID='$majorID' id='Update'>Update </button>";
	$SD_ID=$value['Subject_Division_ID'];
	//echo "sub div=".$SD_ID."<br>";


	if(isset($SD_ID)){
			//$data=$db->get("subject_division","Subject_Division_ID='$SD_ID'");
			// var_dump($data);
		$data=$db->query("select subject_division.* from subject_percent,subject_division 
			where subject_percent.Subject_Division_ID=subject_division.Subject_Division_ID
			and subject_percent.Serial_No='$serialNo'
			and subject_percent.Major_ID=subject_division.Major_ID
			and subject_division.Major_ID='$majorID'
			and subject_division.Subject_Division_ID='$SD_ID'");
	//	echo "data=";
	//	var_dump($data);


	//		echo "<br>";

			foreach ($data as $key1 => $value1) {
				@$division=$value1['Elastic_Name'];
				$percent1=$value1["First_Term_Percent"];
				$percent2=$value1["Second_Term_Percent"];
				$Div_ID=$value1["ID"];
				$P_ID=$Div_ID;


			$btnUpdate="<button class='btn btn-info' data-id='$P_ID' data-serialNo='$serialNo' data-majorID='$majorID' id='Update'>Update </button>";

		$displayTable.="<tr> <td> $subName</td> <td> $division</td> <td> $major </td> <td>  $percent1 </td> <td> $percent2 </td> <td> $btnUpdate </td> </tr>";


			}

				$division ="<span class='text-danger'>Set division</span> ";


	}



	$displayTable.="<tr> <td> $subName</td> <td> $division</td> <td> $major </td> <td>  $percent1 </td> <td> $percent2 </td> <td> $btnUpdate </td> </tr>";




}

 
// 400450299
// tin maung yen 
// swe swe win


require "view/admin_result.view.php";
?>