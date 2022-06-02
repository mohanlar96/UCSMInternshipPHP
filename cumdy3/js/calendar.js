$("button").on('click',function(){

	var no=$(this).data('number'); //4343e4
	var action=$(this).data('action'); //del update 
	
	var data="number="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	if(action=="Delete"){
		if(window.confirm("Are You Sure Want to Delete ? ")){

				$.post("action/calendar_del.php",data,function(data){ //reply with json xml

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

 var no=$(this).data('number');

 	var data="number="+no; 

	var btn=$(this); 	
	btn.text("Update");
	 varClass="btn btn-info";
	btn.attr('class',varClass);


				$.post("action/calendar_del.php",data,function(data){	



					var number =btn.$("button#Save").parent().parent().children().eq(0).text();
					var startdate=btn.$("button#Save").parent().parent().children().eq(1).text();
					var enddate=btn.$("button#Save").parent().parent().children().eq(2).text();
                    var contents=btn.$("button#Save").parent().parent().children().eq(3).text();
					var postString="&number="+number+"&startdate="+startdate+"&enddate="+enddate+"&contents="+contents;

					$.post("action/calendar_insert.php",postString,function(data){		
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