$("button#del").on('click',function(){

	var no=$(this).data('id'); 
	 
	var btn=$(this);

	var data="Id="+no;

		if(!confirm("Are you sure to delete this item")){
			return false;
		}else{


   $.post("action/Stu_del.php",data,function(data){ 
 	    btn.parent().parent().remove(); 


				});
			}
		

});


$("button#access").on('click',function(){
	var button=$(this);
	var carno=$(this).data('carno');
	var stuid=button.parent().parent().children().eq(0).text();
	var postData="carno="+carno+"&stuid="+stuid;
	
	$.post("action/booking_accept.php",postData,function(data){
		console.log(postData);
		button.parent().parent().remove();
	});

});


$("button#unacess").on('click',function(){
var butt=$(this);
var carno=$(this).data('carno');
var stuid=butt.parent().parent().children().eq(0).text();
var postData="carno="+carno+"&stuid="+stuid;
$.post("action/booking_deny.php",postData,function(data){
	butt.parent().parent().remove();

});

});

