\<?php


  require 'header.view.php'; 


?>
<style type="text/css">
div#register{
	font-family: "Myanmar3";

}
</style>
 <link rel="stylesheet" type="text/css" href="css/register.css">
  <div class="container-fluid" >		
  <div class="row">
  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Registration</h3>
  <div class="container-fluid">
      <div class="row" id="register">
          <div class="col-sm-12 col-xs-12 col-lg-12">
        
      <center>  <h4> ကျောင်းသားများပညာသင်ခွင့်လျှောက်လွှာ</h4>
      <h4> ကွန်ပျူတာတက္ကသိုလ်(မန္တလေး)</h4></center>
      
<form   class="form-horizontal" enctype ="multipart/form-data" role="form" method="post" action="register.php" accept="img/*.jpg">

  <div class="form-group">
    
    <div class="col-sm-offset-4 col-sm-4" >
        
           <?=$error?>
      
    </div>
  </div>
 


<div class="form-group <?=$hasErrorFile?>">
    <label for="Photo" class="control-label col-sm-2">ဓာတ်ပုံ</label>
    <input type="file" accept="image/*" name="Photo">
    <?=$imgFile?>
</div>


 <?= $form_data?>

<div class="form-group <?=$dateOption[1]?> ">
    <label for="Date" class="control-label col-sm-2">နေ့စွဲ</label>
    <div class="col-sm-10">
      <input type="Date" name="Date" class="form-control"  id="Date" value="<?=$dateOption?>" placeholder="yy/mm/dd">
      </div>
</div>

<div class="form-group <?=$Academic_Year[1]?>">
    <label for="Academic_Year " class="control-label col-sm-2">သင်တန်းနှစ်</label>
    <div class="col-sm-10" >
     <input type="text" class="form-control" name="Academic_Year" id="Academic_Year" value="<?=$Academic_Year[0]?>" placeholder="သင်တန်းနှစ် Eg: 20**-20**">
       
    </div>
</div>

<div class="form-group ">
    <label for="Major_ID" class="control-label col-sm-2">အထူးပြုဘာသာ </label>
    <div class="col-sm-10">
      <select class="form-control" name="major" id="Major_ID" value="<?=$Major_ID[0]?>">
       <?=$majorOption?>
     </select>
</div>
</div>

<div class="form-group <?=$Roll_No[1]?>">
   <label for="Roll_No" class="control-label col-sm-2">ခုံအမှတ်</label>
   <div class="col-sm-10">
      <input type="text" name="Roll_No" class="form-control" id="Roll_No" value="<?=$Roll_No[0]?>"  placeholder="ခုံအမှတ်">
  </div>
</div>

<div class="form-group <?=$Student_ID[1]?>">
    <label for="Student_ID" class="control-label col-sm-2">တက္ကသိုလ်မှတ်ပုံတင်အမှတ်</label>
    <div class="col-sm-10">
      <input type="text" name="Student_ID" class="form-control" id="Student_ID" value="<?=$Student_ID[0]?>"  placeholder="တက္ကသိုလ်မှတ်ပုံတင်အမှတ် Eg: 9389">
    </div>
</div>



<div class="form-group  ">
    <label for="Admission_Year" class="control-label col-sm-2">တက္ကသိုလ်ဝင်ရောက်သည့်နှစ်</label>
    <div class="col-sm-10">
       <input type="text" class="form-control" id="Admission_Year" name="Admission_Year" value="<?=$Admission_Year[0]?>" placeholder="တက္ကသိုလ်ဝင်ရောက်သည့်နှစ်">
    </div>
</div>
    
<div class="form-group ">
   <label for="Name_Myan" class="control-label col-sm-2">အမည်(မြန်မာစာဖြင့်)</label>
   <div class="col-sm-10">
    <input type="text" class="form-control" name="Name_Myan" id="Name_Myan" value="<?=$Name_Myan[0]?>" placeholder="အမည်(မြန်မာစာဖြင့်)">
  </div>
</div>

<div class="form-group ">
    <label for="Name_Eng" class="control-label col-sm-2">အမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
     <input type="text" class="form-control" name="Name_Eng" id="Name_Eng"  value="<?=$Name_Eng[0]?>" placeholder="အမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

<div class="form-group ">
  <label for="Nationality" class="control-label col-sm-2">လူမျိုး</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Nationality" id="Nationality" value="<?=$Nationality[0]?>" placeholder="လူမျိုး">
    </div>
</div>

<div class="form-group " >
    <label for="Religion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Religion" id="Religion" value="<?=$Religion[0]?>" placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
</div>

<div class="form-group" >
    <label for="Native_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Native_Town" id="Native_Town" value="<?=$Native_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
</div>

<div class="form-group ">
    <label for="Township" class="control-label col-sm-2"> မြို့နယ်၊ ပြည်နယ်၊ တိုင်း</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Township" id="Township" value="<?=$Township[0]?>"  placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း">
    </div>
</div>

<div class="form-group " >
    <label for="NRC" class="control-label col-sm-2">မှတ်ပုံတင်အမှတ် </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="NRC" id="NRC" value="<?=$NRC[0]?>" placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="Date_Of_Birth" class="control-label col-sm-2"> မွေးသက္ကရာဇ်</label>
     <div class="col-sm-10">
      <input type="text" class="form-control" name="Date_Of_Birth" id="Date_Of_Birth" value="<?=$Date_Of_Birth[0]?>" placeholder="YYY-MM-DD">
    </div>
</div>

<div class="form-group ">
     <label for="MRoll_No" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                          အောင်မြင်သည့်ခုံအမှတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="MRoll_No" id="MRoll_No" value="<?=$MRoll_No[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်ခုံအမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="TotalMark" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                          အောင်မြင်သည့်ရမှတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="TotalMark" id="TotalMark" value="<?=$TotalMark[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲ အောင်မြင်သည့်ရမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="M_Year" class="control-label col-sm-2"> တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                         အောင်မြင်သည့်ခုနှစ်</label>
     <div class="col-sm-10">
     <input type="text" name="M_Year" class="form-control" id="M_Year" value="<?=$M_Year[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်ခုနှစ်">
    </div>
</div>

<div class="form-group ">
   <label for="Dept_Of_Transistor" class="control-label col-sm-2">တက္ကသိုလ်ဝင်စာမေးပွဲ<br>
                                                                  အောင်မြင်သည့်စာစစ်ဌာန</label>
   <div class="col-sm-10">
      <input type="text" class="form-control" name="Dept_Of_Transistor" id="Dept_Of_Transistor" value="<?=$Dept_Of_Transistor[0]?>" placeholder="တက္ကသိုလ်ဝင်စာမေးပွဲအောင်မြင်သည့်စာစစ်ဌာန">
    </div>
</div>

<div class="form-group <?=$Permanent_Address[1]?>">
    <label for="Permanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
    <div class="col-sm-10">
      <textarea class="form_control" placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" name="Permanent_Address" id="Permanent_Address" rows="5" cols="50"><?=$Permanent_Address[0]?></textarea>
    </div>
</div>

<div class="form-group <?=$Contact_Address[1]?>">
   <label for="Contact_Address" class="control-label col-sm-2">ယခုနေထိုင်သည့်လိပ်စာ</label>
   <div class="col-sm-10">
      <textarea class="form_control" placeholder="ယခုနေထိုင်သည့်ရန်လိပ်စာ" name="Contact_Address" id="Contact_Address" rows="5" cols="50"><?=$Contact_Address[0]?></textarea>
  </div>
</div>

<div class="form-group  <?=$Phone_Num[1]?>">
    <label for="Phone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Phone_Num" id="Phone_Num" value="<?=$Phone_Num[0]?>" placeholder="09-*********">
    </div>
</div>

<div class="form-group <?=$Email_Adddress[1]?>">
    <label for="Email_Address" class="control-label col-sm-2">အီးမေးလ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="Email_Address" id="Email_Address" value="<?=$Email_Address[0]?>" placeholder="example@example.com">
    </div>
</div>

<div class="form-group ">
   <label for="FName_Myan" class="control-label col-sm-2">အဘအမည်(မြန်မာစာဖြင့်)</label>
   <div class="col-sm-10">
      <input type="text" class="form-control" name="FName_Myan" id="FName_Myan" value="<?=$FName_Myan[0]?>" placeholder="အဘအမည်(မြန်မာစာဖြင့်)">
    </div> 
</div>

<div class="form-group">
    <label for="FName_Eng" class="control-label col-sm-2">အဘအမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FName_Eng" id="FName_Eng" value="<?=$FName_Eng[0]?>" placeholder="အဘအမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

<div class="form-group ">
    <label for="FNationality" class="control-label col-sm-2">လူမျိုး</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FNationality" id="FNationality" value="<?=$FNationality[0]?>" placeholder="လူမျိုး">
    </div>
</div>

<div class="form-group ">
    <label for="FReligion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FReligion" id="FReligion" value="<?=$FReligion[0]?>"  placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
</div>

<div class="form-group " >
    <label for="FNative_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FNative_Town" id="FNative_Town" value="<?=$FNative_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
</div>

<div class="form-group ">
    <label for="FTownship" class="control-label col-sm-2"> မြို့နယ်၊ ပြည်နယ်၊ တိုင်း</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FTownship" id="FTownship"  value="<?=$FTownship[0]?>" placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း ">
    </div>
</div>

<div class="form-group ">
    <label for="FNRC" class="control-label col-sm-2"> မှတ်ပုံတင်အမှတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FNRC" id="FNRC" value="<?=$FNRC[0]?>"  placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
</div>

<div class="form-group ">
     <label for="FDate_Of_Birth" class="control-label col-sm-2">မွေးသက္ကရာဇ်</label>
     <div class="col-sm-10">
      <input type="text" class="form-control" name="FDate_Of_Birth" id="FDate_Of_Birth" value="<?=$FDate_Of_Birth[0]?>"  placeholder="YYY-MM-DD">
    </div>
</div>

<div class="form-group " >
    <label for="FOccupation" class="control-label col-sm-2">အလုပ်အကိုင်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FOccupation" id="FOccupation" value="<?=$FOccupation[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
</div>

<div class="form-group <?=$FPermanent_Address[1]?>" >
    <label for="FPermanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
    <div class="col-sm-10">
      <textarea class="form_control" name="FPermanent_Address" id="FPermanent_Address"  placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" rows="5" cols="50"><?=$FPermanent_Address[0]?></textarea>
    </div>
</div>

<div class="form-group <?=$FPhone_Num[1]?>">
    <label for="FPhone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="FPhone_Num" id="FPhone_Num" value="<?=$FPhone_Num[0]?>" placeholder="09-*********">
    </div>
</div>

<div class="form-group " >
   <label for="MName_Myan" class="control-label col-sm-2">အမိအမည်(မြန်မာစာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="MName_Myan"  id="MName_Myan" value="<?=$MName_Myan[0]?>" placeholder="အမိအမည်(မြန်မာစာဖြင့်)">
   </div>
</div>

<div class="form-group ">
    <label for="MName_Eng" class="control-label col-sm-2">အမိအမည်(အင်္ဂလိပ်စာဖြင့်)</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="MName_Eng"  id="MName_Eng" value="<?=$MName_Eng[0]?>" placeholder="အမိအမည်(အင်္ဂလိပ်စာဖြင့်)">
    </div>
</div>

   <div class="form-group" >
   <label for="MNationality" class="control-label col-sm-2">လူမျိုး</label>
   <div class="col-sm-10">
   <input type="text" class="form-control" name="MNationality"  id="MNationality" value="<?=$MNationality[0]?>" placeholder="လူမျိုး">
    </div>
    </div>
    <div class="form-group " >
    <label for="MReligion" class="control-label col-sm-2">ကိုးကွယ်သည့်ဘာသာ</label>
    <div class="col-sm-10">
    <input type="text"  class="form-control" name="MReligion" id="MReligion" value="<?=$MReligion[0]?>"  placeholder="ကိုးကွယ်သည့်ဘာသာ">
    </div>
    </div>
      <div class="form-group ">
    <label for="MNative_Town" class="control-label col-sm-2">မွေးဖွားရာဇာတိ</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="MNative_Town" id="MNative_Town" value="<?=$MNative_Town[0]?>" placeholder="မွေးဖွားရာဇာတိ">
    </div>
    </div>
    <div class="form-group" >
     <label for="MTownship" class="control-label col-sm-2">မြို့နယ်၊ ပြည်နယ်၊ တိုင်း </label>
     <div class="col-sm-10">
    <input type="text"  class="form-control" name="MTownship"  id="MTownship" value="<?=$MTownship[0]?>" placeholder="မြို့နယ်၊ ပြည်နယ်၊ တိုင်း ">
    </div>
    </div>
    <div class="form-group " >
     <label for="MNRC" class="control-label col-sm-2">မှတ်ပုံတင်အမှတ်</label>
     <div class="col-sm-10">
    <input type="text"  class="form-control" name="MNRC"  id="MNRC" value="<?=$MNRC[0]?>" placeholder="မှတ်ပုံတင်အမှတ်">
    </div>
    </div>
    <div class="form-group " >
    <label for="MDate_Of_Birth" class="control-label col-sm-2">မွေးသက္ကရာဇ်</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="MDate_Of_Birth" id="MDate_Of_Birth" value="<?=$MDate_Of_Birth[0]?>" placeholder="YYY-MM-DD">
    </div>
  </div>
    <div class="form-group " >
    <label for="MOccupation" class="control-label col-sm-2">အလုပ်အကိုင်</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="MOccupation" id="MOccupation" value="<?=$MOccupation[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
    </div>
    <div class="form-group <?=$MPermanent_Address[1]?>" >
     <label for="MPermanent_Address" class="control-label col-sm-2">အမြဲတမ်းနေထိုင်သည့်လိပ်စာ</label>
     <div class="col-sm-10">
    <textarea class="form_control" name="MPermanent_Address" id="MPermanent_Address" placeholder="အမြဲတမ်းနေထိုင်သည့်လိပ်စာ" rows="5" cols="50"><?=$MPermanent_Address[0]?></textarea>
    </div>
    </div>
    <div class="form-group <?=$MPhone_Num[1]?>" >
     <label for="MPhone_Num" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
     <div class="col-sm-10">
    <input type="text" class="form-control" name="MPhone_Num" id="MPhone_Num" value="<?=$MPhone_Num[0]?>" placeholder="09-*********">
    </div>
    </div>
  <?=$beingExam?>
   <div class ="form-group">
   <label for="Provider_ID" class="control-label col-sm-2"> ကျောင်းနေရန်ထောက်ခံပြုမည့်ပုဂ္ဂိုလ်</label>
   </div>
   <div class="form-group  <?=$Name1[1]?>">
   <label for="Name1" class="control-label col-sm-2">အမည်</label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="Name1" name="Name1" value="<?= $Name1[0] ?>"  placeholder="အမည်">
    </div>
    </div>
   <div class="form-group <?=$Relationship1[1]?>">
    <label for="Relationship1 " class="control-label col-sm-2">ဆွေမျိုးတော်စပ်ပုံ</label>
    <div class="col-sm-10">
    <input type=" text" class="form-control" name="Relationship1" id=" Relationship1" value="<?= $Relationship1[0]?>" placeholder="ဆွေမျိုးတော်စပ်ပုံ">
    </div>
    </div>
   <div class="form-group <?=$Occupation1[1]?>" >
   <label for="Occupation1" class="control-label col-sm-2">အလုပ်အကိုင်</label>
   <div class="col-sm-10">
   <input type="text" class="form-control" name="Occupation1" id="Occupation1" value="<?=$Occupation1[0]?>" placeholder="အလုပ်အကိုင်">
    </div>
    </div>
   <div class="form-group <?=$Permanent_Address1[1]?>">
   <label for="Permanent_Address1" class="control-label col-sm-2">ဆက်သွယ်ရန်လိပ်စာ</label>
   <div class="col-sm-10">
   <textarea class="form_control" name="Permanent_Address1" placeholder="ဆက်သွယ်ရန်လိပ်စာ" id="Permanent_Address1" rows="5" cols="50"><?=$Permanent_Address1[0]?></textarea>
    </div>
    </div>
   <div class="form-group <?=$Phone_Num1[1]?>">
    <label for="Phone_Num1" class="control-label col-sm-2">ဖုန်းနံပါတ်</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="Phone_Num1" id="Phone_Num1" value="<?=$Phone_Num1[0]?>" placeholder="09-*********">
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="radio">
    <label>
    <input type="radio" name="Sponsor" id="Sponsor" value="checked">ပညာသင်ထောက်ပံ့ကြေးပေးရန် မေတ္တာရပ်ခံခြင်းပြု </label>
    </div>
    </div>
    </div>
    <div class="form-group ">
    <div class="col-sm-offset-2 col-sm-10">
    <div class="radio">
    <label>
    <input type="radio" name="Sponsor" id="Sponsor" value="checked">ပညာသင်ထောက်ပံ့ကြေးပေးရန် မေတ္တာရပ်ခံခြင်းမပြု</label>
    </div>
    </div>
    </div>
  
  <h4>ကိုယ်တိုင်ဝန်ခံချက်</h4><br>
  <p>၁။ အထက်ဖော်ပြပါအချက်အားလုံးမှန်ကန်ပါသည်။<br>
၂။ ဤတက္ကသိုလ်၌ ဆက်လက်ပညာသင်ကြားခွင့်တောင်းသည်ကို မိဘ(သို့မဟုတ်)အုပ်ထိန်းသူက သဘောတူပြီးဖြစ်ပါသည်။<br>
၃။ ကျောင်းလခများ မှန်မှန်ပေးရန် မိဘ(သို့မဟုတ်)အုပ်ထိန်းသူက သဘောတူပြီးဖြစ်ပါသည်။<br>
၄။ တက္ကသိုလ်ကျောင်းသားကောင်းတစ်ယောက်ပီသစွာ တက္ကသိုလ်/ကောလိပ်က ချမှတ်သည့် စည်းမျဉ်းစည်းကမ်းနှင့်အညီ လိုက်နာကျင့်သုံးနေထိုင်ပါမည်။<br>
၅။ ကျွန်တော်/ကျွန်မသည် မည်သည့်နိုင်ငံရေးပါတီတွင်မျှ ပါတီဝင်မဟုတ်ပါ။ မည်သည့်နိုင်ငံရေးလှုပ်ရှားမှုတွင်မျှ ပါဝင်မည် မဟုတ်ကြောင်း ဝန်ခံကတိပြုပါ သည်။
</p>
<h4>စည်းကမ်းချက်များ</h4><br>
<p>၁။ B.C.Sc/B.C.Tech သင်တန်းမှာ (၅) နှစ်သင်တန်းဖြစ်ပါသည်။<br>
၂။ သင်တန်းကြေးမှာ တစ်လလျှင် ပထမနှစ်အတွက်(၁၅၀၀) ၊ ဒုတိယနှစ်အတွက်(၂၀၀၀) ၊ တတိယနှစ်အတွက်(၂၅၀၀) ၊ စတုတ္ထနှစ်အတွက်(၃၀၀၀) ၊ ပဉ္စနှစ်အတွက်(၃၅၀၀) ၊ မာစတာအတွက်(၆၀၀၀) နှုန်းဖြစ်ပါသည်။<br>
၃။ မိမိအစီအစဉ်ဖြင့် နေထိုင်စားသောက်ရမည်ဖြစ်ပါသည်။<br>
၄။ ကျွန်တော်/ကျွန်မသည် မည်သည့်နိုင်ငံရေးပါတီတွင်မျှ ပါတီဝင်မဟုတ်ပါ။<br>
၅။ ကျောင်းခေါ် ချိန်(၇၅%)မပြည့်လျှင် စာမေးပွဲဖြေဆိုခွင့် မပြုကြောင်းကို သိရှိပါသည်။<br>
၆။ နေ့စဉ်ကျောင်းတက်ရောက်ခြင်းဆိုင်ရာကိစ္စ၊ ကျောင်းရွေ့ပြောင်းခြင်းဆိုင်ရာကိစ္စ၊ ဆေးခွင့်လျှောက်ထားခြင်းဆိုင်ရာကိစ္စ၊ စာမေးပွဲဖြေဆိုင်ခြင်းဆိုင်ရာကိစ္စ များ၏ စည်းကမ်းသတ်မှတ်သတ်မှတ်များအားပူးတွဲပါ      ကျောင်းစည်းကမ်းဆိုင်ရာ အချက်အလက်များအတိုင်း သိရှိလိုက်နာသွားရန်ဖြစ်ပါသည်။<br>
၇။ ကျောင်းမှထုတ်ပြန်ထားသော ပူးတွဲဖော်ပြပါစည်းကမ်းချက်များကိုဖတ်ရှုလက်မှတ်ထိုးပြီးလိုက်နာပါမည်ဟု ကတိပြုပါသည်။</p>
   
    <div class="col-sm-offset-2 col-sm-10">
  <input type="checkbox" value="checked">
  <label for="chk"><h4>ပညာသင်ခွင့်လျှောက်ထားသူသည် အထက်ဖော်ပြပါအချက်အားလုံးအား လိုက်နာကြောင်း ဝန်ခံကတိပြုပါသည်။</h4></label>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button class="btn btn-primary" name="Save"  value="Save" type="Submit">Save</button>&nbsp;&nbsp;&nbsp;
        <button class="btn btn-primary" id="Reset" name="Reset" value="Reset" type="Reset">Reset</button>&nbsp;&nbsp;&nbsp;
        <button class="btn btn-primary" id="Cancel" name="Cancel" value="Cancel" type="Reset">Cancel</button>
  </div>
 </div>
  </form>
</div>
</div>
</div>
</div>
</div>
</div>
  
   
<script type="text/javascript" src="js/user_register.js"></script>

<?php


  require 'footer.view.php'; 


?>

