<?php
require 'session_admin.php';
$activie_nav_information="id='active_nav'";

$displayTable="";
	$id=$_GET["id"];
	if($id==1)
	{
		$displayTable.="<h1 align='center'>Selection of the Sponsorship Apply</h1>";
		$data=$db->query("SELECT Roll_No,Name,Fstatus,Mstatus,TotalIncome,NoOfSibling,Acedamic_Year,Rec_T_name FROM sponsorshipapplicant ORDER BY App_ID ASC");
		
		foreach ($data as $key => $value) {
			$i=0;
			foreach ($value as $title => $field){
				$displayTable.= "<td id='j'> $title</td>";
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value) {
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="Roll_No")
	 			{
	 				$idmanage=$field;
	 			}
 				$displayTable.="<td> $field</td>";
			}
			$btnconfirm="<button class='btn btn-info' data-idmanage='$idmanage' data-action='Confirm'>Confirm</button>";
			$btndel="<button class='btn btn-info' data-idmanage='$idmanage' data-action='Delete'>Delete</button>";
			$displayTable.="<td>$btnconfirm</td><td> $btndel</td></tr>";
		}
	}
	/*if($id==2)
	{
		$table1="sponsorshipaward";
		$table2="sponsorshipapplicant";
		$table3="sponsorshipname";
		$displayTable.="<h1 align='center'>Local Sponsorship Award</h1>";
		$data=$db->query("SELECT $table2.Roll_No,$table2.Name,$table3.Sp_Name,$table2.Acedamic_Year FROM $table1 join $table2 join $table3 WHERE $table1.App_ID=$table2.App_ID and $table1.Sp_ID=$table3.Sp_ID");

		foreach ($data as $key => $value) {
			$i=0;
			foreach ($value as $title => $field){
				$displayTable.= "<td id='j'> $title</td>";
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value) {
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="Roll_No")
	 			{
	 				$rollno=$field;
	 			}
 				$displayTable.="<td> $field</td>";
			}
			
			$btndel="<button class='btn btn-info' data-rollno='$rollno' data-action='Delete'>Delete</button>";
			$displayTable.="<td> $btndel</td></tr>";
		}
	}*/
	if($id==3)
	{
		$table1="sponsorshipaward";
		$table2="sponsorshipname";
		$table3="student";
		$table4="studentdetail";
		$table5="academic_year";
		$displayTable.="<h1 align='center'>Sponsorship Award</h1>";
		$data=$db->query("SELECT $table1.Award_ID,$table3.Roll_No,$table4.Name_Eng,$table2.Sp_Name,$table5.Academic_Year FROM $table1 join $table3 join $table4 join $table2 join $table5 WHERE  
			$table1.Student_ID=$table3.Student_ID and $table1.Student_ID=$table4.Student_ID and $table1.Sp_ID=$table2.Sp_ID and $table1.Acedamic_Year_ID=$table5.Academic_Year_ID ORDER BY Award_ID ASC");

		foreach ($data as $key => $value) {
			$i=0;
			foreach ($value as $title => $field){
				if($title!='Award_ID'){
				$displayTable.= "<td id='j'> $title</td>";}
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value) {
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="Award_ID")
	 			{
	 				$awardid=$field;
	 			}
	 			else
 				$displayTable.="<td> $field</td>";
			}
			
			$btndel="<button class='btn btn-info' data-awardid='$awardid' data-action='Delete'>Delete</button>";
			$displayTable.="<td> $btndel</td></tr>";
		}
	}



require "view/admin_sponsorship_award.view.php";
?>