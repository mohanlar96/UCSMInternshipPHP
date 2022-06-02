$("button").on('click',function(){

	var id=$(this).data('studentid');  
	var data="studentid="+id;  
	var btn=$(this); 
				$.post("action/school_fee_receiptDelete.php",data,function(data){ //reply with json xml
 
					btn.parent().parent().remove(); //for ui menualy remove

				});
			 
}); 