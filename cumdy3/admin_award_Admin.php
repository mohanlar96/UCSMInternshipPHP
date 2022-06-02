<?php 
require 'session_admin.php';
$activie_nav_information="id='active_nav'";



$displayTable="<tr>";

	$id=$_GET["id"];
	

	if($id==1)
	{
	$table1=$_GET["tableName1"];
	$table2=$_GET["tableName2"];
	$table3=$_GET["tableName3"];
	$table4=$_GET["tableName4"];
		$displayTable.="<h1 align='center'>Teacher Scholarship Award</h1>";
		$data=$db->query("SELECT $table1.Scholar_ID,$table3.Teacher_Name,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table4.Academic_Year from $table1 join $table2 join $table3 join $table4 where $table1.Scholar_ID=$table2.Scholar_ID and $table1.Teacher_ID=$table3.Teacher_ID and $table4.Academic_Year_ID=$table2.Acedamic_Year_ID ORDER BY Scholar_ID ASC");
		foreach ($data as $key => $value) {
		$i=0;
			foreach($value as $title => $field) {
				$displayTable.= "<td> $title</td>";
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			
			$displayTable.="<td><a href='admin_addTScholar.php' class='btn btn-info'>Add New Scholarship </td>";
		break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value){
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++){ 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="Scholar_ID")
	 			{
	 			$tscholar=$field;
	 			}
 				$displayTable.="<td>$field</td>";
	 		}
			$btndel="<button class='btn btn-info' data-tscholar='$tscholar' data-action='Delete'>Delete</button>";
			$displayTable.="<td>$btndel</td></tr>";
		}
	}
	if($id==2)
	{
	$table1=$_GET["tableName1"];
	$table2=$_GET["tableName2"];
	$table3=$_GET["tableName3"];
	$table4=$_GET["tableName4"];
	$table5=$_GET["tableName5"];
		$displayTable.="<h1 align='center'>Student Scholarship Award</h1>";
		$data=$db->query("SELECT $table1.Scholar_ID,$table4.Name_Eng,$table2.City,$table2.Country,$table2.University,$table2.Degree,$table2.Duration,$table5.Academic_Year from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.Scholar_ID=$table2.Scholar_ID and $table3.Student_ID=$table4.Student_ID and $table1.Student_ID=$table3.Student_ID and $table2.Acedamic_Year_ID=$table5.Academic_Year_ID ORDER BY Scholar_ID ASC");
		foreach ($data as $key => $value) {
		$i=0;
			foreach ($value as $title => $field) {
				$displayTable.= "<td> $title</td>";
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			$displayTable.="<td><a href='admin_addSScholar.php' class='btn btn-info'>Add New Scholarship </td>";
			break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value) {
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="Scholar_ID")
	 			{
	 				$sscholar=$field;
	 			}
 				$displayTable.="<td>$field</td>";
	 		}
			$btndel="<button class='btn btn-info' data-sscholar='$sscholar' data-action='Delete'>Delete</button>";
	 		$displayTable.="<td> $btndel</td></tr>";
		}
	}
	
	if($id==3)
	{
	$table1=$_GET["tableName1"];
	$table2=$_GET["tableName2"];
	$table3=$_GET["tableName3"];
	$table4=$_GET["tableName4"];
	$table5=$_GET["tableName5"];
		$displayTable.="<h1 align='center'>Internship Award</h1>";
		$data=$db->query("SELECT $table1.I_ID,$table3.Roll_No,$table4.Name_Eng,$table2.Company_Name,$table2.City,$table2.Address,$table1.Duration,$table5.Academic_Year from $table1 join $table2 join $table3 join $table4 join $table5 where $table1.C_ID=$table2.C_ID and $table1.Student_ID=$table3.Student_ID and $table3.Student_ID=$table4.Student_ID and $table1.Acedamic_Year_ID=$table5.Academic_Year_ID ORDER BY I_ID ASC");
		foreach ($data as $key => $value) {
		$i=0;
			foreach ($value as $title => $field) {
				$displayTable.= "<td id='j'> $title</td>";
				$tableTitle[$i]=$title;
				$i=$i+1;
			}
			$displayTable.="<td><a href='admin_addInternship.php' class='btn btn-info'>Add New Internship</td>";
			break;
		}
		$displayTable.="</tr>";
		foreach ($data as $key => $value) {
			$displayTable.="<tr>";
			for ($i=0; $i < sizeof($tableTitle) ; $i++) { 
	 			$title=$tableTitle[$i];
	 			$field=$value[$title];
	 			if($title=="I_ID")
	 			{
	 				$idintern=$field;
	 			}
 				$displayTable.="<td>$field</td>";
	 		}
	 		
			$btndel="<button class='btn btn-info' data-idintern='$idintern' data-action='Delete'>Delete</button>";
	 		$displayTable.="<td> $btndel</td></tr>";
		}
	}
	/*if($id==4)
	{
		$displayTable.="<h1 align='center'>Management of the Sponsorship Apply</h1>";
		$data=$db->query("SELECT Roll_No,Name,Fstatus,Mstatus,TotalIncome,NoOfSibling,Academic_Year,Rec_T_name FROM sponsorshipapplicant");
		
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
	}*/
	





require "view/admin_award_Admin.view.php";
?>