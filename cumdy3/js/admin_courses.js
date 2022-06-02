$("button").on('click',function(){

	var no=$(this).data('id');
	var action=$(this).data('action');
	
	var data="carno="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	if(action=="Delete"){
		var varible=window.confirm("Are you Sure Want to Deltet ?");
			if(varible){
				$.post("action/courses_del.php",data,function(data){
					console.log(data);
					btn.parent().parent().remove();	

				});
			}

			}

	if(action=="Update"){


		btn.text("Save");
		var varClass=btn.attr('class')+ " btn-danger";
		btn.attr('class',varClass);

		btn.parent().parent().attr('contenteditable','true');
		btn.attr('id','save');

		// $.post("action/courses_del.php",data,function(data){
		// 			console.log(data);
					

		// 		});

	}//end if Update
	
$('#save').on('click',function(){

 var id =$(this).data('id');

 	 //carno=343434&no=lskdfjolsdfj&name=zawzaw
	var btn=$(this); 	
	btn.text("Update");
	
	btn.attr('class',"btn btn-info");
	var str=btn.parent().siblings();
	var subCode=str.eq(0).text(),
	bookName=str.eq(1).text(),
	year=str.eq(2).text(),
	major=str.eq(3).text(),
	term=str.eq(4).text(),
	author=str.eq(5).text(),
	publisher=str.eq(6).text(),
	pubDate=str.eq(7).text(),
	edition=str.eq(8).text(),
	department=str.eq(9).text(),
	profile=str.eq(10).text(),
	lecturePlan=str.eq(11).text(),
	price=str.eq(12).text();



	var data="subID="+id+"&subCode="+subCode+"&bookName="+bookName+"&year="
	+year+"&major="+major+"&term="+term+"&author="+author+
	"&publisher="+publisher+"&pubDate="+pubDate+
	"&edition="+edition+"&department="+department
	+"&profile="+profile+"&lecturePlan="+lecturePlan+"&price="+price;

	console.log(data);
	$.post("action/courses_update.php",data,function(data){
		console.log(data);
	});

			
});



	

				
			



});
