$("button").on('click',function(){

	var phone=$(this).data('phone');  
	var data="phone="+phone;
	var btn=$(this); 
				$.post("action/hostel_hostelDelete.php",data,function(data){ //reply with json xml
 
					btn.parent().parent().remove(); //for ui menualy remove

				});
			 
}); 