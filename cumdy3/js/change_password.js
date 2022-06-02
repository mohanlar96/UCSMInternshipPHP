var msg="";
$("input#submit").hide();
var oldCorrect="false";
$("input#new_password").on('focus',function(){
	var data="password="+$("input#password").val()+"&ID="+$(this).data('id');

	$.post("action/setting_oldPwd.php",data,function(data){

		msg="";
		if(data!="true"){
		msg+="<p  class='text' style='color:red'> Your Old Password Is Not Correct </p>";
			$("div#msg").html(msg);
		}else{
			oldCorrect="true";
			$("div#msg").html(msg);
			$("input#submit").fadeIn();
		}

	});
});

var msg2="";
$("input#submit").on('click',function(e){
	e.preventDefault();
	var pwd=$("input#new_password").val();
	var Rpwd=$("input#re_password").val();
	var data="pwd="+pwd+"&ID="+$('input#new_password').data('id');
	if(pwd!==Rpwd){
	msg2+="<p  class='text' style='color:red'>  Your Re-Password is Not Match . Please Type Correctly </p>"

	$("div#msg").html(msg+msg2);


	}else{

		if(oldCorrect=="true"){

		$.post("action/setting_UpdatePwd.php",data,function(data){
			console.log(data);
			if(data=="true"){
				$("div#msg").html("<p  class='text' style='color:red'>  Your Password Update Successfully</p>");
				
				$("input#submit").hide();
				$("div#mySetting").delay(1000).fadeOut();

			}


		});

}else{
	$("div#msg").html(msg+msg2);
}

	}

	
});
