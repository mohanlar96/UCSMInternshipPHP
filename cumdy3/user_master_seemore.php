<?php
require 'session_user.php';

$active_nav_student="id='active-nav'";

  $name="";
  $year="";
  $title="";
  $supervisor="";
  $dataChoose="";
  $displayTable="";

	if(isset($_POST['submit'])){
		$studentname=$_POST['schoice'];
		$year=$_POST['schoice'];
		$title=$_POST['schoice'];
		$supervisor=$_POST['schoice'];
        $dataChoose=$_POST['choose'];
        $schoice=$_POST['schoice'];


		 if(isset($dataChoose)){
            $name=$db->query("select Student_ID,Name,Roll_No from masterstudent where Name='$dataChoose'");
            foreach ($name as $key => $value) {
                $sname=$value['Name'];
                $stdid=$value['Student_ID'];
                $rollno=$value['Roll_No'];
                $displayTable.="<tr> <td> $stdid </td><td> $sname </td><td>$rollno</td><td><a href='user_master_detail.php?id=$stdid' class='btn btn-primary'>More</td> </tr>";
            }

        }if (isset($dataChoose)) {
            $name=$db->query("select masterstudent.Student_ID, masterstudent.Name,masterstudent.Roll_No from masterstudent,thesis where masterstudent.Student_ID=thesis.Student_ID AND thesis.Year='$dataChoose'");
             foreach ($name as $key => $value) {
              $stdid=$value['Student_ID'];
                $sname=$value['Name'];
                $rollno=$value['Roll_No'];
                $displayTable.="<tr> <td> $stdid </td> <td> $sname </td> <td>$rollno</td> <td><a href='user_master_detail.php?id=$stdid' class='btn btn-primary'>More</td> </tr>";
            }


            # code...
        }
       if (isset($dataChoose)) {
            $name=$db->query("select masterstudent.Student_ID, masterstudent.Name,masterstudent.Roll_No from masterstudent,thesis where masterstudent.Student_ID=thesis.Student_ID AND thesis.ThesisBookTitle='$dataChoose'");
             foreach ($name as $key => $value) {
               $stdid=$value['Student_ID'];
                $sname=$value['Name'];
                $rollno=$value['Roll_No'];
                $displayTable.="<tr>  <td> $stdid </td> <td> $sname </td><td>$rollno</td><td><a href='user_master_detail.php?id=$stdid' class='btn btn-primary'>More</td> </tr>";
            }


        if (isset($dataChoose)) {
            $name=$db->query("select masterstudent.Student_ID, masterstudent.Name,masterstudent.Roll_No from masterstudent,thesis where masterstudent.Student_ID=thesis.Student_ID AND thesis.Supervisor='$dataChoose'");
             foreach ($name as $key => $value) {
               $stdid=$value['Student_ID'];
                $sname=$value['Name'];
                $rollno=$value['Roll_No'];
                $displayTable.="<tr>  <td> $stdid </td><td> $sname </td><td>$rollno</td><td><a href='user_master_detail.php?id=$stdid' class='btn btn-primary'>'More'</td> </tr>";
            }
				
	}
}
}

	//var_dump($result);


require "view/user_master_seemore.view.php";
?>