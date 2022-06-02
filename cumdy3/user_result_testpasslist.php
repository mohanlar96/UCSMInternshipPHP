<?php
require 'session_public.php';

$active_nav_student="id='active_nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_result_testpasslist.php" id = "linkStyle">Result</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle"></a>';



@$name=$_GET['name'];//CT//2CS-34
if(isset($name)){
$data="";
$thisYear=date('Y');
$preYear=$thisYear-1;
$nowYear="$preYear-$thisYear";
//var_dump($nowYear);
 

//$id=$_GET['id'];//2
//echo $id."<br>";


// $yearid=$db->query("select Academic_Year_ID from academic_year where Academic_Year='$nowYear'");
// echo "year is ";
// var_dump($yearid);


$yrid="";

if($name=="Year"){
  $id=$_GET['id'];
  //echo "year is".$id;
  //$yrid=$id;

$data1=$db->query("select pass_fail.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from pass_fail,student,studentdetail 
    where  pass_fail.Student_ID=student.Student_ID and
     student.Student_ID=studentdetail.Student_ID and
      pass_fail.Year_ID='$id' and
       student.Academic_Year_ID=pass_fail.Academic_Year_ID and
         pass_fail.Academic_Year_ID='05' and pass_fail.Pass_Fail='Pass' order by pass_fail.Major_ID ASC, New_Roll_No ASC");
// echo "data1 is ";
// var_dump($data1);

}
 
elseif ($name=="CST" || $name=="CS"|| $name=="CT") {
  $id=$_GET['id'];
  $yrid=$db->query("select Year_ID from student where Year_ID='$id'")[0]['Year_ID'];
  //var_dump($yrid);s
  $m=$db->query("select student.Major_ID from student,major where student.Major_ID=major.Major_ID AND major.Major='$name' and student.Year_ID='$yrid'")[0]['Major_ID'];
  //var_dump($m);

  $data1=$db->query("select pass_fail.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from pass_fail,student,studentdetail 
    where  pass_fail.Student_ID=student.Student_ID and
     student.Student_ID=studentdetail.Student_ID and
      pass_fail.Year_ID='$id' and pass_fail.Major_ID='$m' and
       student.Academic_Year_ID=pass_fail.Academic_Year_ID and
         pass_fail.Academic_Year_ID='05' and pass_fail.Pass_Fail='Pass' order by pass_fail.Major_ID ASC, New_Roll_No ASC");
//var_dump($data1);

}

else {
  //var_dump($name."is rollno");

  
   $yrid=$db->query("select Year_ID from student where Roll_No='$name'")[0]['Year_ID'];
   $n=$db->query("select Student_ID from student where Roll_No='$name'")[0]['Student_ID'];

   $data1=$db->query("select pass_fail.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from pass_fail,student,studentdetail 
    where  pass_fail.Student_ID=student.Student_ID and
     student.Student_ID=studentdetail.Student_ID and
       pass_fail.Student_ID='$n' and
       student.Academic_Year_ID=pass_fail.Academic_Year_ID and
         pass_fail.Academic_Year_ID='05' and pass_fail.Pass_Fail='Pass' order by pass_fail.Major_ID ASC, New_Roll_No ASC");
//var_dump($data1);

}///////....for sesarch roll number......




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

 

require "view/user_resultTestPasslist.view.php";
?>