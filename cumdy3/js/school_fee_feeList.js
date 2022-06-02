$("button").on('click',function(){
	var yearid=$(this).data('yearid');  
	var acayearid=$(this).data('acayearid');  
	var data="yearid="+yearid+"&acayearid="+acayearid;   
	var btn=$(this); 
				$.post("action/school_fee_feeDelete.php",data,function(data){ //reply with json xml
 
					btn.parent().parent().remove(); //for ui menualy remove

				});
			 
}); 