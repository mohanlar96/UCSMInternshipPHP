<?php
 
  require 'header.view.php'; 

  // if session is  login then  we will  use login/user/header.view.php

?>
<style>
div#body{
  font-family: "Myanmar3";

}
</style>

<div class="container-fluid" >    
  <div class="row">
    <div class="col-sm-offset-1 col-sm-10" id="body">
      <h3>Registration</h3>
    
      <div class="row">
     
        
      <center>  <h4> ကျောင်းသားများပညာသင်ခွင့်လျှောက်လွှာ</h4>
      <h4> ကွန်ပျူတာတက္ကသိုလ်(မန္တလေး)</h4></center>
     
<form  class="form-horizontal" enctype ="multipart/form-data" role="form" method="post" action="register.php" accept="img/*.jpg">

  <div class="form-group">
    
  

<div class="form-group ">
    <label for="Photo" class="control-label col-sm-2">ဓာတ်ပုံ</label>
    <input type="file" accept="image/*"  name="Photo">
</div>

<div class="form-group ">
    <label for="NRC_Copy" class="control-label col-sm-2">ကျောင်းသားမှတ်ပုံတင်မိတ္တူ</label>
  <input type="file" accept="image/*"  name="NRC_Copy">
  </div>

  <div class="form-group ">
    <label for="Police_Recommendation" class="control-label col-sm-2">ရဲစခန်းထောက်ခံစာ</label>
  <input type="file" accept="image/*"  name="Police_Recommendation">
  </div>

  <div class="form-group ">
    <label for="Address_Recommendation" class="control-label col-sm-2">ရပ်ကွက်ထောက်ခံစာ</label>
  <input type="file" accept="image/*" name="Address_Recommendation">
  </div>

<div class="form-group  ">
    <label for="Date" class="control-label col-sm-2">နေ့စွဲ</label>
    <div class="col-sm-10">
      <input  type="Date" disabled="disable" name="Date" class="form-control"  id="Date" value="<?=$dateOption?>" placeholder="yy/mm/dd">
    
      </div>
</div>

<div class="form-group">
    <label for="Academic_Year " class="control-label col-sm-2">သင်တန်းနှစ်</label>
    <div class="col-sm-10" >
     <input type="text" class="form-control " name="Academic_Year" id="Academic_Year" value="<?=$Academic_Year[0]?>" placeholder="သင်တန်းနှစ်">
    </div>
</div>

<div class="form-group">
    <label for="Major_ID" class="control-label col-sm-2">အထူးပြုဘာသာ </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="major" id="Major_ID" value="<?=$Major_ID[0]?>" placeholder="အထူးပြုဘာသာ ">
</div>
</div>

<div class="form-group ">
   <label for="Roll_No" class="control-label col-sm-2">ခုံအမှတ်</label>
   <div class="col-sm-10">
       <input type="text"  name="Roll_No" class="form-control" id="Roll_No" value="<?=$Roll_No[0]?>"  placeholder="ခုံအမှတ်">
  </div>
</div>

<div class="form-group ">
    <label for="Student_ID" class="control-label col-sm-2">တက္ကသိုလ်မှတ်ပုံတင်အမှတ်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" name="Student_ID" class="form-control" id="Student_ID" value="<?=$Student_ID[0]?>"  placeholder="တက္ကသိုလ်မှတ်ပုံတင်အမှတ်">
    </div>
</div>

<div class="form-group  ">
    <label for="Admission_Year" class="control-label col-sm-2">တက္ကသိုလ်ဝင်ရောက်သည့်နှစ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" disabled="disable" id="Admission_Year" name="Admission_Year" value=" <?=$Admission_Year[0]?>" placeholder="တက္ကသိုလ်ဝင်ရောက်သည့်နှစ်">
    </div>
</div>
    
<div class="form-group ">
   <label for="Name_Myan" class="control-label col-sm-2">အမည်(မြန်မာစာဖြင့်)</label>
   <div class="col-sm-10">
    <input type="text"  disabled="disable" class="form-control" name="Name_Myan" id="Name_Myan" value="<?=$Name_Myan[0]?>" placeholder="အမည်(မြန်မာစာဖြင့်)">
  </div>
</div>

<div class="form-group ">
    <label for="Name_Eng" class="control-label col-sm-2">အမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
     <input type="text" disabled="disable" class="form-control" name="Name_Eng" id="Name_Eng" value="<?=$Name_Eng[0]?>" placeholder="အမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

<div class="form-group ">
  <label for="Nationality" class="control-label col-sm-2">လူမျိုး</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="Nationality" id="Nationality" value="<?=$Nationality[0]?>" placeholder="လူမျိုး">
    </div>
</div>

<div class="form-group " >
    <label for="Religion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="Religion" id="Religion" value="<?=$Religion[0]?>" placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
</div>

<div class="form-group " >
    <label for="Native_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ </label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="Native_Town" id="Native_Town" value="<?=$Native_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
</div>

<div class="form-group ">
    <label for="Township" class="control-label col-sm-2"> မြို့နယ်၊ ပြည်နယ်၊ တိုင်း</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="Township" id="Township" value="<?=$Township[0]?>"  placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း">
    </div>
</div>

<div class="form-group " >
    <label for="NRC" class="control-label col-sm-2">မှတ်ပုံတင်အမှတ် </label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="NRC" id="NRC" value="<?=$NRC[0]?>" placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="Date_Of_Birth" class="control-label col-sm-2"> မွေးသက္ကရာဇ်</label>
     <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="Date_Of_Birth" id="Date_Of_Birth" value="<?=$Date_Of_Birth[0]?>"  placeholder="YYY-MM-DD">
    </div>
</div>

<div class="form-group ">
     <label for="MRoll_No" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                          အောင်မြင်သည့်ခုံအမှတ်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="MRoll_No" id="MRoll_No" value="<?=$MRoll_No[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်ခုံအမှတ်">
    </div>
</div>

<div class="form-group <?=$TotalMark[1]?>">
     <label for="TotalMark" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                          အောင်မြင်သည့်ရမှတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" disabled="disable" name="TotalMark" id="TotalMark" value="<?=$TotalMark[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲ အောင်မြင်သည့်ရမှတ်">
    </div>
</div>

<div class="form-group">
     <label for="M_Year" class="control-label col-sm-2"> တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                         အောင်မြင်သည့်ခုနှစ်</label>
     <div class="col-sm-10">
      <input type="text" name="M_Year"  disabled="disable" class="form-control" id="M_Year" value="<?=$M_Year[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်ခုနှစ်">
    </div>
</div>

<div class="form-group">
   <label for="Dept_Of_Transistor" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                                  အောင်မြင်သည့်စာစစ်ဌာန</label>
   <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="Dept_Of_Transistor" id="Dept_Of_Transistor" value="<?=$Dept_Of_Transistor[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်စာစစ်ဌာန">
    </div>
</div>

<div class="form-group ">
    <label for="Permanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
    <div class="col-sm-10">
      <textarea class="form_control" disabled="disable" placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" name="Permanent_Address" id="Permanent_Address" rows="5" cols="50"><?=$Permanent_Address[0]?></textarea>
    </div>
</div>

<div class="form-group">
   <label for="Contact_Address" class="control-label col-sm-2">ယခုနေထိုင်သည့်လိပ်စာ</label>
   <div class="col-sm-10">
      <textarea class="form_control" disabled="disable" placeholder="ယခုနေထိုင်သည့်ရန်လိပ်စာ" name="Contact_Address" id="Contact_Address" rows="5" cols="50"><?=$Contact_Address[0]?></textarea>
  </div>
</div>

<div class="form-group  ">
    <label for="Phone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
    <input type="text" disabled="disable" class="form-control" name="Phone_Num" id="Phone_Num" value="<?=$Phone_Num[0]?>" placeholder="09-*********">
    </div>
</div>

<div class="form-group">
    <label for="Email_Address" class="control-label col-sm-2">အီးမေးလ်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="Email_Address" id="Email_Address" value="<?=$Email_Address[0]?>" placeholder="example@example.com">
    </div>
</div>

<div class="form-group">
   <label for="FName_Myan" class="control-label col-sm-2">အဘအမည်(မြန်မာစာဖြင့်)</label>
   <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FName_Myan" id="FName_Myan" value="<?=$FName_Myan[0]?>"  placeholder="အဘအမည်(မြန်မာစာဖြင့်)">
    </div> 
</div>

<div class="form-group">
    <label for="FName_Eng" class="control-label col-sm-2">အဘအမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FName_Eng" id="FName_Eng" value="<?=$FName_Eng[0]?>" placeholder="အဘအမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

<div class="form-group">
    <label for="FNationality" class="control-label col-sm-2">လူမျိုး</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FNationality" id="FNationality" value="<?=$FNationality[0]?>" placeholder="လူမျိုး">
    </div>
</div>

<div class="form-group ">
    <label for="FReligion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ </label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FReligion" id="FReligion" value="<?=$FReligion[0]?>" placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
</div>

<div class="form-group" >
    <label for="FNative_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FNative_Town" id="FNative_Town" value="<?=$FNative_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
</div>

<div class="form-group ">
    <label for="FTownship" class="control-label col-sm-2"> မြို့နယ်၊ ပြည်နယ်၊ တိုင်း</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FTownship" id="FTownship" value="<?=$FTownship[0]?>" placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း ">
    </div>
</div>

<div class="form-group">
    <label for="FNRC" class="control-label col-sm-2"> မှတ်ပုံတင်အမှတ်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"   class="form-control" name="FNRC" id="FNRC" value="<?=$FNRC[0]?>"  placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="FDate_Of_Birth" class="control-label col-sm-2">မွေးသက္ကရာဇ်</label>
     <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="FDate_Of_Birth" id="FDate_Of_Birth" value="<?=$FDate_Of_Birth[0]?>"  placeholder="YYY-MM-DD">
    </div>
</div>

<div class="form-group" >
    <label for="FOccupation" class="control-label col-sm-2">အလုပ်အကိုင်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="FOccupation" id="FOccupation" value="<?=$FOccupation[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
</div>

<div class="form-group" >
    <label for="FPermanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
    <div class="col-sm-10">
      <textarea class="form_control" disabled="disable"  name="FPermanent_Address" id="FPermanent_Address"  placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" rows="5" cols="50"><?=$FPermanent_Address[0]?></textarea>
    </div>
</div>

<div class="form-group">
    <label for="FPhone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="FPhone_Num" id="FPhone_Num" value="<?=$FPhone_Num[0]?>" placeholder="09-*********">
    </div>
</div>

<div class="form-group " >
   <label for="MName_Myan" class="control-label col-sm-2">အမိအမည်(မြန်မာစာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable"  class="form-control" name="MName_Myan"  id="MName_Myan" value="<?=$MName_Myan[0]?>" placeholder="အမိအမည်(မြန်မာစာဖြင့်)">
   </div>
</div>

<div class="form-group ">
    <label for="MName_Eng" class="control-label col-sm-2">အမိအမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" disabled="disable" class="form-control" name="MName_Eng"  id="MName_Eng" value="<?=$MName_Eng[0]?>" placeholder="အမိအမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

   <div class="form-group" >
   <label for="MNationality" class="control-label col-sm-2">လူမျိုး</label>
   <div class="col-sm-10">
   <input type="text" disabled="disable"  class="form-control" name="MNationality"  id="MNationality" value="<?=$MNationality[0]?>" placeholder="လူမျိုး">
    </div>
    </div>
    <div class="form-group " >
    <label for="MReligion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ</label>
    <div class="col-sm-10">
    <input type="text"  disabled="disable"  class="form-control" name="MReligion" id="MReligion" value="<?=$MReligion[0]?>"  placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
    </div>
      <div class="form-group ">
    <label for="MNative_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ</label>
    <div class="col-sm-10">
    <input type="text" disabled="disable"  class="form-control" name="MNative_Town" id="MNative_Town" value="<?=$MNative_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
    </div>
    <div class="form-group " >
     <label for="MTownship" class="control-label col-sm-2">မြို့နယ်၊ ပြည်နယ်၊ တိုင်း </label>
     <div class="col-sm-10">
    <input type="text" disabled="disable"  class="form-control" name="MTownship"  id="MTownship" value="<?=$MTownship[0]?>" placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း ">
    </div>
    </div>
    <div class="form-group " >
     <label for="MNRC" class="control-label col-sm-2">မှတ်ပုံတင်အမှတ်</label>
     <div class="col-sm-10">
    <input type="text"  disabled="disable"  class="form-control" name="MNRC"  id="MNRC" value="<?=$MNRC[0]?>" placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
    </div>
    <div class="form-group " >
    <label for="MDate_Of_Birth" class="control-label col-sm-2">မွေးသက္ကရာဇ်</label>
    <div class="col-sm-10">
    <input type="text" disabled="disable"  class="form-control" name="MDate_Of_Birth" id="MDate_Of_Birth" value="<?=$MDate_Of_Birth[0]?>"  placeholder="YYY-MM-DD">
    </div>
  </div>
    <div class="form-group " >
    <label for="MOccupation" class="control-label col-sm-2">အလုပ်အကိုင်</label>
    <div class="col-sm-10">
    <input type="text" disabled="disable" class="form-control" name="MOccupation" id="MOccupation" value="<?=$MOccupation[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
    </div>
    <div class="form-group " >
     <label for="MPermanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
     <div class="col-sm-10">
    <textarea class="form_control" disabled="disable"  name="MPermanent_Address" id="MPermanent_Address"  placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" rows="5" cols="50"><?=$MPermanent_Address[0]?></textarea>
    </div>
    </div>
    <div class="form-group " >
     <label for="MPhone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
     <div class="col-sm-10">
    <input type="text" disabled="disable" class="form-control"  name="MPhone_Num" id="MPhone_Num" value="<?=$MPhone_Num[0]?>" placeholder="09-*********">
    </div>
    </div>
   <div class="form-group " >
     <label for="Year_ID" class="control-label col-sm-2"> ဖြေဆိုခဲ့သည့်စာမေးပွဲများ</label>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" disabled="disable" name="Year_ID1" id="Year_ID1" value="<?=$Year_ID1[0]?>"> ပထမနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" disabled="disable" name="Year_ID2" id="Year_ID2" value="<?=$Year_ID2[0]?>"> ဒုတိယနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label><input type="checkbox" disabled="disable" name="Year_ID3" id="Year_ID3" value="<?=$Year_ID3[0]?>" >တတိယနှစ် </label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label><input type="checkbox" disabled="disable" name="Year_ID4" id="Year_ID4" value="<?=$Year_ID4[0]?>">စတုတ္ထနှစ်</label>
    </div>
    </div>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="checkbox">
    <label> <input type="checkbox" disabled="disable"  name="Year_ID5" id="Year_ID5" value="<?=$Year_ID5[0]?>">ပဉ္စမနှစ်</label>
    </div>
    </div>
    </div>
   
<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No1" name="Roll_No1" value="<?=$Roll_No1[0]?>" placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID1" name="Academic_Year_ID1" value="<?=$Academic_Year_ID1[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID1" name="PF_ID1" value="<?=$PF_ID1[0]?>" placeholder="အောင်/ရှုံး">
    </div>
</div>

<div class="form-group " >
    <div class="col-sm-4">
          <input type="text" class="form-control " id="Roll_No2" name="Roll_No2" value="<?=$Roll_No2[0]?>" placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID2" name="Academic_Year_ID2" value="<?=$Academic_Year_ID2[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID2" name="PF_ID2" value="<?=$PF_ID2[0]?>" placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No3" name="Roll_No3 " value="<?=$Roll_No3[0]?>" placeholder="ခုံအမှတ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID3" name="Academic_Year_ID3" value="<?=$Academic_Year_ID3[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID3" name="PF_ID3" value="<?=$PF_ID3[0]?>" placeholder="အောင်/ရှုံး" >
    </div>
    </div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No4" name="Roll_No4" value="<?=$Roll_No4[0]?>" placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="Academic_Year_ID4" name="Academic_Year_ID4" value="<?=$Academic_Year_ID4[0]?>" placeholder="ခုနှစ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID4" name="PF_ID4" value="<?=$PF_ID4[0]?>" placeholder="အောင်/ရှုံး"  >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No5" name="Roll_N5 " value="<?=$Roll_No5[0]?>" placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID5" name="Academic_Year_ID5" value="<?=$Academic_Year_ID5[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID5" name="PF_ID5" value="<?=$PF_ID5[0]?>" placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No6" name="Roll_No6" value="<?=$Roll_No6[0]?>" placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID6" name="Academic_Year_ID6" value="<?=$Academic_Year_ID6[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID6" name="PF_ID6" value="<?=$PF_ID6[0]?>" placeholder="အောင်/ရှုံး" >
    </div>
</div>

<div class="form-group ">
    <div class="col-sm-4">
          <input type="text" class="form-control" id="Roll_No7" name="Roll_No7" value="<?=$Roll_No7[0]?>" placeholder="ခုံအမှတ်" >
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control " id="Academic_Year_ID7" name="Academic_Year_ID7" value="<?=$Academic_Year_ID7[0]?>" placeholder="ခုနှစ်">
    </div>
    <div class="col-sm-4">
              <input type="text" class="form-control" id="PF_ID7" name="PF_ID7" value="<?=$PF_ID7[0]?>" placeholder="အောင်/ရှုံး" >
    </div>
</div>

   <div class ="form-group">
   <label for="Provider_ID" class="control-label col-sm-2"> ကျောင်းနေရန်ထောက်ခံပြုမည့်ပုဂ္ဂိုလ်</label>
   </div>
   <div class="form-group ">
   <label for="Name1" class="control-label col-sm-2">အမည်</label>
    <div class="col-sm-10">
   <input type="text" disabled="disable"  class="form-control" id="Name1" name="Name1" value="<?= $Name1[0] ?>"  placeholder="အမည်">
    </div>
    </div>
   <div class="form-group">
    <label for="Relationship1 " class="control-label col-sm-2">ဆွေမျိုးတော်စပ်ပုံ</label>
    <div class="col-sm-10">
    <input type=" text" disabled="disable"  class="form-control" name="Relationship1" id=" Relationship1" value="<?= $Relationship1[0]?>" placeholder="ဆွေမျိုးတော်စပ်ပုံ">
    </div>
    </div>
   <div class="form-group " >
   <label for="Occupation1" class="control-label col-sm-2">အလုပ်အကိုင်</label>
   <div class="col-sm-10">
   <input type="text" disabled="disable"   class="form-control" name="Occupation1" id="Occupation1" value="<?=$Occupation1[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
    </div>
   <div class="form-group">
   <label for="Permanent_Address1" class="control-label col-sm-2">ဆက်သွယ်ရန်လိပ်စာ</label>
   <div class="col-sm-10">
   <textarea class="form_control" disabled="disable"  name="Permanent_Address1" placeholder="ဆက်သွယ်ရန်လိပ်စာ" id="Permanent_Address1" rows="5" cols="50"><?=$Permanent_Address1[0]?></textarea>
    </div>
    </div>

   <div class="form-group ">
    <label for="Phone_Num1" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
    <input type="text" disabled="disable" class="form-control" name="Phone_Num1" id="Phone_Num1" value="<?=$Phone_Num1[0]?>" placeholder="09-*********">
    </div>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="radio">
    <label>
    <input type="radio" disabled="disable"  name="Sponsor" id="Sponsor" value="checked">ပညာသင်ထောက်ပံ့ကြေးပေးရန် မေတ္တာရပ်ခံခြင်းပြု </label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="radio">
    <label>
    <input type="radio" disabled="disable"  name="Sponsor" id="Sponsor" value="checked"s>ပညာသင်ထောက်ပံ့ကြေးပေးရန် မေတ္တာရပ်ခံခြင်းမပြု</label>
    </div>
    </div>
    </div>
  
  
     
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button class="btn btn-primary" id="accept" name="Accept"  value="<?=$_GET["stdID"]?>" type="Submit">Accept</button>&nbsp;&nbsp;&nbsp;
        <button class="btn btn-primary" id="Back" name="Back" value="Back" type="Reset" >Back</button>
  </div>
 </div>

    </div>

    </div>
</div>
</div>

<?php
require 'view/footer.view.php';
?>


