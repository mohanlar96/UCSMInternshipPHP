$("button").on('click',function(){
		var btn=$(this);
	 var action=btn.data("action");
	 if(action=="Order"){
	 	var text=window.confirm("Are You Sure to Order This BOOK !");
 		if(text){

 		var userId=btn.data("std"),
	 		subId=btn.data("id");
	 
	 	btn.parent().html("<span class='text-info'>Ordered</span>");
	 	
	 	var data="UserID="+userId+"&SubID="+subId;
	 	console.log(data);
	 	$.post("process/courses_bookOrder.php",data,function(data){
	 		console.log(data);


	 	});

 		
 		}
	 	
	 
	 }


});