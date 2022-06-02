<?php
require 'session_user.php';	
$active_nav_home="id='active-nav'";
$you_are_here='<a herf = "index.php" id = "linkStyle">User Page</a> <span class = "animate">  > </span><a herf = "user_financial.php" id = "linkStyle">Financial</a>';

$month="Janauary";
$year="2016";

if(isset($_REQUEST['month']))
$month=$_REQUEST['month'];
if(isset($_REQUEST['year']))
$year=$_REQUEST['year'];

if(isset($_REQUEST['userId']))
$userid=$_REQUEST['userId'];

$data=$db->query("select *  from teacher join paymenthistory join department join leavetype join leavedetail join attendance where teacher.Teacher_ID=leavedetail.Teacher_ID and paymenthistory.Teacher_ID=teacher.Teacher_ID and teacher.Department_ID=department.Department_ID and leavedetail.Leave_ID=leavetype.Leave_ID and attendance.Month=leavedetail.Month AND attendance.Teacher_ID=teacher.Teacher_ID AND teacher.Teacher_ID='$userId' AND paymenthistory.Year=attendance.Year AND attendance.Year='$year' AND attendance.Month='$month'")[0];

$noOfAttendance=$data['AttendancePeriod'];

$montharray=array('Janauary'=>1,'February'=>2,'March'=>3,'April'=>4,'May'=>5,'June'=>6,'July'=>7,'August'=>8,'September'=>9,'October'=>10,'November'=>11,'December'=>12);
$mymonth=$montharray[$month];

$totaldays = cal_days_in_month(CAL_GREGORIAN, $mymonth , $year);
$leavedays=$totaldays-$noOfAttendance;
$data['No_Of_Leave_Days']=$leavedays;

$salary=$data[$month];
//print_r($data);
$actualsalary=($salary*12/360)*$noOfAttendance;
$data['ActualSalary']=$salary;
 $noOfAttendance=$db->query("select AttendancePeriod,attendance.Teacher_ID from teacher join attendance where teacher.Teacher_ID=attendance.Teacher_ID");
 $systemDate=$db->query("select CURDATE()");
 //print_r($noOfAttendance) ;
 //print_r($systemDate);
 //echo date('t');


$number = cal_days_in_month(CAL_GREGORIAN, 8, 2003);
//echo " <br> Days in Months $number";

/* $noOfLeave=$systemDate-$noOfAttendance;
  var_dump($data);
  var_dump($noOfLeave); */


require 'view/user_financial.view.php';
?>