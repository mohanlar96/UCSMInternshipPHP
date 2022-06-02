$("button").on('click',function(){

	var no=$(this).data('carno'); //4343e4
	var action=$(this).data('action'); //del update 
	
	var data="carno="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	if(action=="Delete"){
		if(!confirm("Are you sure to delete this item")){
			return false;
		}else{


   $.post("action/ferry_del.php",data,function(data){ //reply with json xml
 	btn.parent().parent().remove(); //for ui menualy remove



				});//end post
			}
		}

});



