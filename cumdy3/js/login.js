$("form#login").on('submit',function(e){

	e.preventDefault();



	$.post("action/login.php",$(this).serialize(),function(data){

		
		if(data=="user"){
		
			window.location="user.php";
		


		}else if(data=="admin"){
			window.location="loging.php";

		}else if(data=="Error in Database conncetion or Session" || data=="Your Username and  Password Incorrect" ){
			$("div#loginMsg").text();
		$("div#loginMsg").text(data);
	}else{
		$("div#loginMsg").text();

		$("div#loginMsg").text("Hey Your Browser Doesn't Support Javascript, Updrade it"+data);

	}
		



	});
	
});