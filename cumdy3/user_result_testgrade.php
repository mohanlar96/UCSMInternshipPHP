<?php
require 'session_public.php';
// $active_nav_home="";
// $active_nav_register="";
// $active_nav_courses="";
// $active_nav_result="id='active-nav'";
// $active_nav_Activity="";
// $active_nav_about="";
// $active_nav_signup="";
// $active_nav_login="";

$active_nav_student="id='active-nav'";

$you_are_here='<a herf = "user.php" id = "linkStyle">User</a> <span class = "animate">  > </span> <a herf = "user_result_testgrade.php" id = "linkStyle">Grade</a> <span class = "animate">  > </span> <a herf = "#" id = "linkStyle">'.$title.'</a>';




set_time_limit(300);

 @$name=$_GET['name'];//CT,CS,CST

 if (isset($name)) {
   # code...
 
 $yrid="";
 $c=0;
 $table_output="";

 if($name=="Year"){
   $id=$_GET['id'];
   $yrid=$id;

  // $count=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'");
  // $c=count($count);
   //var_dump($c);
  // echo "$yrid";;
 //........for search Year.......

 $data=$db->query("select DISTINCT grade.Student_ID,studentdetail.Name_Eng,student.Roll_No
     from grade,student,studentdetail where grade.Student_ID=student.Student_ID 
    and student.Student_ID=studentdetail.Student_ID and student.Year_ID='$yrid' and student.Academic_Year_ID='05' order by student.Roll_No ASC");
 //var_dump($data);



 }
 
 elseif ($name=="CST" || $name=="CS"|| $name=="CT") {
   $id=$_GET['id'];
   $yrid=$db->query("select Year_ID from student where Year_ID='$id'")[0]['Year_ID'];
   //var_dump($yrid);
   //$count=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'");
   //$c=count($count);
   //var_dump($c);
   $m=$db->query("select student.Major_ID from student,major where student.Major_ID=major.Major_ID AND major.Major='$name' and student.Year_ID='$yrid'")[0]['Major_ID'];
   //var_dump($m);

   $data=$db->query("select DISTINCT grade.Student_ID,studentdetail.Name_Eng,student.Roll_No
      from grade,student,studentdetail where grade.Student_ID=student.Student_ID 
      and student.Student_ID=studentdetail.Student_ID and student.Year_ID='$yrid' and student.Major_ID='$m' and student.Academic_Year_ID='05' ");
 //var_dump($data);
  

 }


 else {
    @$yrid=$db->query("select Year_ID from student where Roll_No='$name'")[0]['Year_ID'];
    //$count=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'");
    //$c=count($count);
    //var_dump($c);
   @$n=$db->query("select Student_ID from student where Roll_No='$name'")[0]['Student_ID'];
    //var_dump($n);
    $data=$db->query("select DISTINCT grade.Student_ID,studentdetail.Name_Eng,student.Roll_No
     from grade,student,studentdetail where grade.Student_ID=student.Student_ID 
    and student.Student_ID=studentdetail.Student_ID and student.Year_ID='$yrid' and grade.Student_ID='$n' and student.Academic_Year_ID='05'");
 //var_dump($data);
   //var_dump($yrid);

   
}///////....for sesarch roll number......



 @$sub1=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[0]['SubCode'];
 @$sub2=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[1]['SubCode'];
 @$sub3=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[2]['SubCode'];
 @$sub4=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[3]['SubCode'];
 @$sub5=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[4]['SubCode'];
 @$sub6=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[5]['SubCode'];
 @$sub7=$db->query("select SubCode from subjectinformation where Year_ID='$yrid'")[6]['SubCode'];

 $table_output="<table class='table table-responsive table-hover' ><tr> <th>No</th><th>Roll No</th><th>Name</th><th>$sub1</th>
              <th>$sub2</th><th>$sub3</th><th>$sub4</th><th>$sub5</th><th>$sub6</th><th>$sub7</th></tr>  ";


              
 $no=1;
   foreach ($data as $key => $value) {

     $rollno=$value['Roll_No'];
     //echo $rollno."<br>";
     $nameMyan=$value['Name_Eng'];
     //echo $nameMyan."<br>";

     $table_output.="<tr><td>$no</td><td>$rollno</td><td>$nameMyan</td>";
     $stdid=$value['Student_ID'];
     $distinctsub=$db->query("select DISTINCT SubCode from subjectinformation where Year_ID='$yrid'");
     $subc=count($distinctsub);
     //echo $subc."<br>";
     for ($i=0; $i <=$subc ; $i++) { 
       @$grade=$db->query("select Grade from grade where Student_ID='$stdid'")[$i]['Grade'];
       //var_dump($grade);
       $table_output.="<td>$grade</td>";
       }
       $table_output.="</tr>";
       $no+=1;
      }
      $table_output.="</table>";
        
      //09977286844 aung ko htet
 




 if ($name=="Myan"|| $name=="Eng" || $name=="Phy" || $name=="101" || $name=="102" || $name=="103" || $name=="104" ) {
   $id=$_GET['id'];
   //echo $id." id<br>";
   $yrid=$db->query("select Year_ID from subjectinformation WHERE SubCode='Myan'")[0]['Year_ID'];
   
   @$n=$db->query("select Student_ID from student where Roll_No='$name'")[0]['Student_ID'];
    //var_dump($n);
   $data1=$db->query("select DISTINCT grade.Student_ID,studentdetail.Name_Eng,student.Roll_No
    from grade,student,studentdetail where grade.Student_ID=student.Student_ID
    and student.Student_ID=studentdetail.Student_ID and grade.Grade='$id' and grade.SubCode='$name' and student.Year_ID='$yrid' and student.Academic_Year_ID='05'");
   //var_dump($data1);
   //echo " individual grade<br>";


$table_output="<table class='table table-responsive table-hover' ><tr> <th>No</th><th>Roll No</th><th>Name</th><th>$name</th></tr>  ";

$no=1;
  foreach ($data1 as $key => $value) {

     $rollno=$value['Roll_No'];
     //echo $rollno."<br>";
     $nameMyan=$value['Name_Eng'];
     //echo $nameMyan."<br>";

     $table_output.="<tr><td>$no</td><td>$rollno</td><td>$nameMyan</td>";
     $stdid=$value['Student_ID'];
    // $distinctsub=$db->query("select Year_ID from subjectinformation where SubCode='$name'");
     //echo "dissub=".$distinctsub."<br>";
     //$onesub=$distinctsub[0];
     //echo "0 sub is=".$onesub."<br>";
     //$subc=count($distinctsub);
     //echo $subc."<br>";
     //for ($i=0; $i <=$subc ; $i++) { 
      //$onesub=$distinctsub[$i];
      //echo "one sub-".$onesub."<br>";
     //  $grade=$db->query("select Grade from grade where Student_ID='$stdid' and SubCode='$onesub'")[$i]['Grade'];
       //var_dump($grade);
       $table_output.="<td>$id</td>";
      // }
       $table_output.="</tr>";
       $no+=1;
      }
      $table_output.="</table>";
 }



set_time_limit(30);

}
 require "view/user_resultTestGrade.view.php";
 ?>