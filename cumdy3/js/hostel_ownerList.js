$("button").on('click',function(){

	var id=$(this).data('userid');  
	var data="userid="+id;  
	var btn=$(this); 
				$.post("action/hostel_ownerDelete.php",data,function(data){ //reply with json xml
 
					btn.parent().parent().remove(); //for ui menualy remove

				});
			 
}); 