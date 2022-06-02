<?php
  require 'header.view.php'; 
  // if session is login then  we will  use login/user/header.view.php
?>

<style type="text/css">
table {
    width:199px;
    border:3px solid #888;    
    border-collapse:collapse;
}
 
td {
    width:27px;
    font-family: Arial, sans-serif;
    
    
    text-align:center;
}
</style>


<?php
echo "<h1> Activity Calendar </h1>";
  function draw_calendar($month,$year,$month_day){
    $calendar = '<table border=1 width=294 class="calendar">';
    $headings = array('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
    $calendar.= '<tr class="calendar-row" colspan=7> <td class="calendar-day-head" width=42>'.implode('</td><td class="calendar-day-head" width=42>',$headings).'</td></tr>';
    $running_day = date('w',mktime(0,0,0,$month,1,$year));
    $days_in_month = date('t',mktime(0,0,0,$month,1,$year));
    $days_in_this_week = 1;
    $day_counter = 0;
    $dates_array = array();
    $calendar.= '<tr class="calendar-row">';
    for($x = 0; $x < $running_day; $x++):
        $calendar.= '<td class="calendar-day-np" width=42> </td>';
        $days_in_this_week++;
    endfor;
    for($list_day = 1; $list_day <= $days_in_month; $list_day++):
    
        $calendar.= '<td class="calendar-day" width=42>';

    
     // $calendar.= '<div class="day-number">'.$list_day.'</div>';
    
$day="false";
$month_bool="false";
$color="false";

    foreach ($month_day as $key => $value) { //key month  value is array day

     
            foreach ($value as $k => $day) {
             if($day==$list_day){
                  $day="true";
                   if($key==$month){
                     $month_bool="true";
                    }
                     break;
                }
                

            }

           
            if ($day=="true" AND $month_bool=="true") {
                $color="true";
                break;
            }
        
        

       
    }

if($color=="true"){
         $calendar.= '<div style="background:red;" class="day-number">'.$list_day.'</div>';
            $color="true";
}
    else{
     $calendar.= '<div class="day-number">'.$list_day.'</div>';
    }
        
  
 /** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
            $calendar.= str_repeat('<p> </p>',2);
             $calendar.= '</td>';
        if($running_day == 6):
            $calendar.= '</tr>';
            if(($day_counter+1) != $days_in_month):
                $calendar.= '<tr class="calendar-row">';
            endif;
            $running_day = -1;
            $days_in_this_week = 0;
        endif;
        $days_in_this_week++; $running_day++; $day_counter++;
    endfor;
    if($days_in_this_week < 8):
        for($x = 1; $x <= (8 - $days_in_this_week); $x++):
            $calendar.= '<td class="calendar-day-np"  width=42> </td>';
        endfor;
    endif;
    $calendar.= '</tr>';
    $calendar.= '</table>';
    return $calendar;
}


$m=array( "January","February","March","April","May","June","July","August","September","October","November","December");

$month_day= array('1' =>  array('15' ),
                   '2'=> array('2','20' ),
                   '3'  => array('11' ),
                   '5'=> array('13' ,'28' ),
                   '6'=> array ('26'),
                   '7'=> array ('8','21'),
                   '8'=> array('14','26')
                 );

$mon_day=   array('1' =>  array('18' ),
                   '2'=> array('10','24' ),
                   '3'  => array('7' ),
                   '5'=> array('17' ,'25' ),
                   '6'=> array ('23'),
                   '7'=> array ('12','28'),
                   '8'=> array ('10','25')
                 );
$m_day  =     array('1' =>  array('12' ),
                   '2'=> array('1','19' ),
                   '3'  => array('1' ),
                   '5'=> array('15' ,'30' ),
                   '6'=> array ('30'),
                   '7'=> array ('11','14'),
                   '8'=> array ('16','21')
                 );
$year=$_GET["year"];

   
if($year==2015){
     $j=1;
     $value=0;
    echo"<table class='table'>";
       do{  

               echo"<tr colspan='3'>";
               for($col=1;$col<=4;$col++){
                     echo"<td  class='td' colspan='4'>";
                     echo $m[$value]." ".$year;
                        
                     echo draw_calendar($j,$year,$month_day);
                     echo"</td>";
                     $value++;
                     $j++;
                                     }
                echo"</tr>";  
          }while($value<12);
  echo"<table>";
 
echo"<table class='table'>";
echo"<tr colspan='3'>";
  echo"<td  class='td' colspan='3'>";
        echo"Fresher Welcome <br/> 15.1.2015<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";      
        echo"  Football<br/> 2.2.2015<br/> From 9:30AM to 11:00AM <br/>and From 2:00PM to 3:00PM <br/>
           Graduation Ceremony<br/> 20.2.2015<br/> From 9:30AM to 4:00PM  </td>";   
    echo"<td  class='td' colspan='3'>";    
        echo"Programming<br/> 11.3.2015<br/> From 9:30AM to 12:00PM </td> >";
  echo"</tr>"; 

echo"<tr colspan='3'>";
 echo"<td  class='td' colspan='3'>";
  echo" Basketball <br/> 13.5.2015<br/> From 9:30AM to 4:00PM  <br/>
       Debate<br/> 28.5.2015<br/> From 9:30AM to 4:00PM  </td>";
   echo"<td  class='td' colspan='3'>";
  echo" Table Tennis<br/> 26.6.2015<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";
 echo"Warso <br/> 8.7.2015<br/> From 9:30AM to 4:00PM  <br/>
     E_speaking <br/> 21.7.2015<br/> From 9:30AM to 4:00PM  </td>";
 echo"</tr>";

echo"<tr colspan='3'>";
   echo"<td  class='td' colspan='3'>";
   echo" Arsaria Puzaw Pwae <br/> 14.8.2015<br/> From 9:30AM to 4:00PM  <br/>
      Fareware<br/> 26.8.2015<br/> From 9:30AM to 4:00PM  </td>";
  echo"</tr>";
   echo"<table>";
}
if($year==2016){
  $j=1;
     $value=0;
    echo"<table class='table'>";
       do{  

               echo"<tr colspan='3'>";
               for($col=1;$col<=4;$col++){
                     echo"<td  class='td' colspan='4'>";
                     echo $m[$value]." ".$year;
                        
                     echo draw_calendar($j,$year,$mon_day);
                     echo"</td>";
                     $value++;
                     $j++;
                                     }
                echo"</tr>";  
          }while($value<12);
  echo"<table>";
 
echo"<table class='table'>";
echo"<tr colspan='3'>";
  echo"<td  class='td' colspan='3'>";
        echo"Fresher Welcome <br/> 18.1.2016<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";      
        echo"  Football<br/> 10.2.2016<br/> From 9:30AM to 11:00AM <br/>and From 2:00PM to 3:00PM <br/>
           Graduation Ceremony<br/> 24.2.2016<br/> From 9:30AM to 4:00PM  </td>";   
    echo"<td  class='td' colspan='3'>";    
        echo"Programming<br/> 7.3.2016<br/> From 9:30AM to 12:00PM </td> >";
  echo"</tr>"; 

echo"<tr colspan='3'>";
 echo"<td  class='td' colspan='3'>";
  echo" Basketball <br/> 17.5.2016<br/> From 9:30AM to 4:00PM  <br/>
       Debate<br/> 25.5.2016<br/> From 9:30AM to 4:00PM  </td>";
   echo"<td  class='td' colspan='3'>";
  echo" Table Tennis<br/> 23.6.2016<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";
 echo"Warso <br/> 12.7.2016<br/> From 9:30AM to 4:00PM  <br/>
     E_speaking <br/> 28.7.2016<br/> From 9:30AM to 4:00PM  </td>";
 echo"</tr>";

echo"<tr colspan='3'>";
   echo"<td  class='td' colspan='3'>";
   echo" Arsaria Puzaw Pwae <br/> 10.8.2016<br/> From 9:30AM to 4:00PM  <br/>
      Fareware<br/> 25.8.2016<br/> From 9:30AM to 4:00PM  </td>";
  echo"</tr>";
   echo"<table>";
}
else if($year==2017){

  $j=1;
     $value=0;
    echo"<table class='table'>";
       do{  

               echo"<tr colspan='3'>";
               for($col=1;$col<=4;$col++){
                     echo"<td  class='td' colspan='4'>";
                     echo $m[$value]." ".$year;
                        
                     echo draw_calendar($j,$year,$m_day);
                     echo"</td>";
                     $value++;
                     $j++;
                                     }
                echo"</tr>";  
          }while($value<12);
  echo"<table>";
 
echo"<table class='table'>";
echo"<tr colspan='3'>";
  echo"<td  class='td' colspan='3'>";
        echo"Fresher Welcome <br/> 12.1.2017<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";      
        echo"  Football<br/> 1.2.2017<br/> From 9:30AM to 11:00AM <br/>and From 2:00PM to 3:00PM <br/>
           Graduation Ceremony<br/> 19.2.2017<br/> From 9:30AM to 4:00PM  </td>";   
    echo"<td  class='td' colspan='3'>";    
        echo"Programming<br/> 1.3.2017<br/> From 9:30AM to 12:00PM </td> >";
  echo"</tr>"; 

echo"<tr colspan='3'>";
 echo"<td  class='td' colspan='3'>";
  echo" Basketball <br/> 15.5.2017<br/> From 9:30AM to 4:00PM  <br/>
       Debate<br/> 30.5.2017<br/> From 9:30AM to 4:00PM  </td>";
   echo"<td  class='td' colspan='3'>";
  echo" Table Tennis<br/> 30.6.2017<br/> From 9:00AM to 4:00PM </td>";
  echo"<td  class='td' colspan='3'>";
 echo"Warso <br/> 11.7.2017<br/> From 9:30AM to 4:00PM  <br/>
     E_speaking <br/> 14.7.2017<br/> From 9:30AM to 4:00PM  </td>";
 echo"</tr>";

echo"<tr colspan='3'>";
   echo"<td  class='td' colspan='3'>";
   echo" Arsaria Puzaw Pwae <br/> 16.8.2017<br/> From 9:30AM to 4:00PM  <br/>
      Fareware<br/> 21.8.2017<br/> From 9:30AM to 4:00PM  </td>";
  echo"</tr>";
   echo"<table>";
}
?>
<div align="center">
     <button type="button" class="btn btn-primary" onclick="window.location='user_event_calendar.php'">Back</button>
    </div>




<script type="text/javascript" src="js/activity.js"></script> 
<?php
  //require 'footer.view.php'; 
?>