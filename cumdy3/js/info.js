$("button").on('click',function(){

	var no=$(this).data('typeid'); //4343e4
	var action=$(this).data('action'); //del update 
	
	var data="typeid="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	if(action=="Delete"){
		if(window.confirm("Are You Sure Want to Delete ? ")){

				$.post("action/info_del.php",data,function(data){ //reply with json xml

					// console.log(data); /// get feedback from activity_del.php

					btn.parent().parent().remove(); //for ui menualy remove

				});
			}
		}

	if(action=="Update"){


		btn.text("Save");
		var varClass=btn.attr('class')+ " btn-danger";
		btn.attr('class',varClass);

		btn.parent().parent().attr('contenteditable','true');
		btn.attr('id','save');

	}//end if Update
	
$('button#save').on('click',function(){

 var no=$(this).data('typeid');

 	var data="typeid="+no; 

	var btn=$(this); 	
	btn.text("Update");
	 varClass="btn btn-info";
	btn.attr('class',varClass);


				$.post("action/info_del.php",data,function(data){	



					var rno =btn.$("button#Save").parent().parent().children().eq(0).text();
					var name=btn.$("button#Save").parent().parent().children().eq(1).text();
					var acdyear=btn.$("button#Save").parent().parent().children().eq(2).text();
                    var typeid=btn.$("button#Save").parent().parent().children().eq(3).text();
                    var typename=btn.$("button#Save").parent().parent().children().eq(3).text();
                    var remark=btn.$("button#Save").parent().parent().children().eq(3).text();
					var postString="&rno="+rno+"&name="+name+"&acdyear="+acdyear+"&typeid="+typeid+"&typename="+typename+"&remark="+remark;

					$.post("action/info_insert.php",postString,function(data){		
						console.log(data);	
						btn.parent().parent().attr('contenteditable','false');	

						});			

				});
			
});



	





});



// $("lsdfjl").on('keyup',function() {


// });
// ().().().();

// $('',function(){

// });