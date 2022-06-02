<?php
require 'session_admin.php';
// $active_nav_home="";
// $active_nav_register="";
// $active_nav_courses="";
// $active_nav_result="id='active-nav'";
// $active_nav_Activity="";
// $active_nav_about="";
// $active_nav_signup="";
// $active_nav_login="";
$active_nav_student="id='active_nav'";

//$active_nav_information="id='active-nav'";
$you_are_here='<a herf = "admin.php" id = "linkStyle">Admin</a> <span class = "animate">  > </span> <a herf = "admin_result_passfailcheck.php" id = "linkStyle">Pass Fail Checking</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';





@$name=$_GET['name'];//CT//2CS-34
//echo "name ".$name;
if(isset($name)){
$data="";
$thisYear=date('Y');
$preYear=$thisYear-1;
$nowYear="$preYear-$thisYear";



if ($name=="CST" || $name=="CS"|| $name=="CT") {
	@$passfail=$_GET['pfid'];
//echo "pass fail= ".$passfail;
  $id=$_GET['id'];
  $yrid=$db->query("select Year_ID from student where Year_ID='$id'")[0]['Year_ID'];
  //var_dump($yrid);s
  $m=$db->query("select student.Major_ID from student,major where student.Major_ID=major.Major_ID AND major.Major='$name' and student.Year_ID='$yrid'")[0]['Major_ID'];
  var_dump($m);
  if ($passfail=="Pass") {
  	$data1=$db->query("select pass_fail.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from pass_fail,student,studentdetail 
    where  pass_fail.Student_ID=student.Student_ID and
     student.Student_ID=studentdetail.Student_ID and
      pass_fail.Year_ID='$id' and pass_fail.Major_ID='$m' and
       student.Academic_Year_ID=pass_fail.Academic_Year_ID and
         pass_fail.Academic_Year_ID='05' and pass_fail.Pass_Fail='$passfail' order by pass_fail.Major_ID ASC, New_Roll_No ASC");
//var_dump($data1);
  }
  else{
  	$data1=$db->query("select pass_fail.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from pass_fail,student,studentdetail 
    where  pass_fail.Student_ID=student.Student_ID and
     student.Student_ID=studentdetail.Student_ID and
      pass_fail.Year_ID='$id' and pass_fail.Major_ID='$m' and
       student.Academic_Year_ID=pass_fail.Academic_Year_ID and
         pass_fail.Academic_Year_ID='05' and pass_fail.Pass_Fail='$passfail' order by pass_fail.Major_ID ASC, New_Roll_No ASC");
  }

  

}

$table_output="<table class='table table-responsive table-hover'><tr> <th>No</th><th>Roll No</th><th>Name</th><th colspan=7>Distinction Subjects</th><th>Remark</th></tr>  ";


              //$no=1;
  foreach ($data1 as $key => $value) {
    $stdid=$value['Student_ID'];
    //echo $stdid."<br>";

$newrollno=$db->query("select New_Roll_No from pass_fail where Student_ID='$stdid' and Academic_Year_ID='05' ")[0]['New_Roll_No'];
   //var_dump($newrollno);
   //echo "<br>";
    $rollno=$value['Roll_No'];
   // echo $rollno."<br>";
    $nameMyan=$value['Name_Eng'];
    //echo $nameMyan."<br>";

    $table_output.="<tr><td>$newrollno</td><td>$rollno</td><td>$nameMyan</td>";
    

        for ($i=0; $i <=6 ; $i++) { 
       @$dist=$db->query("select result.Distinction from result where 
        result.Student_ID='$stdid' and result.Academic_Year_ID='05'")[$i]['Distinction'];
      // var_dump($dist);//True
       //echo "<br>";
     

@$serialno=$db->query("select result.Serial_No from result where 
        result.Student_ID='$stdid' and result.Academic_Year_ID='05'")[$i]['Serial_No'];
       //var_dump($serialno);//12
//echo "<br>";

        if($dist=="D"){
           $subcode=$db->query("select subjectinformation.SubCode from subjectinformation,result,pass_fail where result.Serial_No=subjectinformation.Serial_No and result.Serial_No='$serialno' and result.Student_ID='$stdid' and result.Academic_Year_ID='05'")[0]['SubCode'];
  //          var_dump($subcode);
            $table_output.="<td>$subcode</td>";
        }else{
            $table_output.="<td> </td>";
        }
  
    }

$remark=$db->query("select Credit from pass_fail where pass_fail.Student_ID='$stdid' and pass_fail.Academic_Year_ID='05'")[0]['Credit'];
//var_dump($remark);
if($remark=="Credit"){
  $table_output.="<td>$remark</td></tr>";

}else{
  $table_output.="<td> </td></tr>";
}
 
   }
  $table_output.="</table>";
    
}
















require "view/admin_resultPassFail.view.php";
?>