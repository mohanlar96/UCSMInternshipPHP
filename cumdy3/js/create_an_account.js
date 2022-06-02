

$("form#createAcc").on('submit',function(e){

e.preventDefault();

	$.post("action/create_an_account.php",$(this).serialize(),function(data){
		if(data=="success"){
			$("div#msgCreate").html("You Are Successfullly In Registration ");
			$("div#myCreate").delay(1000).fadeOut();
			$("div#myModal").fadeIn();
			$("h4.modal-title").html("Success, Registration, Thanks You <p> Please Login </p> ")

		}else{
						$("div#msgCreate").html(data);

		}

		

	
		



	});








});