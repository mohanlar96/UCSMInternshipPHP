$("button").on('click',function(){

	var no=$(this).data('typeid'); //4343e4
	var action=$(this).data('action'); //del update 
	
	var data="typeid="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	if(action=="Delete"){

		if(window.confirm("Are You Sure Want to Delete ? ")){

				$.post("action/activity_del.php",data,function(data){


					btn.parent().parent().remove();

				});
			}
			}

	if(action=="Update"){


		btn.text("Save");
		var varClass=btn.attr('class')+ " btn-danger";
		btn.attr('class',varClass);
		var no=$(this).data('typeid'); 
		var data="typeid="+no;
		btn.parent().parent().attr('contenteditable','true');
		btn.attr('id','save');

				$.post("action/activity_del.php",data,function(data){	

				});

	}//end if Update




	$('button#save').on('click',function(){

 var no=$(this).data('typeid');

 	var data="typeid="+no; 

	var btn=$(this); 	
	btn.text("Update");
	 varClass="btn btn-info";
	btn.attr('class',varClass);



						var typeId =btn.parent().parent().children().eq(0).text();
					var typeName=btn.parent().parent().children().eq(1).text();
					var date=btn.parent().parent().children().eq(2).text();

					var postString="typeId="+typeId+"&typeName="+typeName+"&date="+date;

					$.post("action/activity_insert.php",postString,function(data){		
						console.log(data);	
						btn.parent().parent().attr('contenteditable','false');	
						btn.attr('id','');

						});			

				
			
});



	








});
	




// $("lsdfjl").on('keyup',function() {


// });
// ().().().();

// $('',function(){

// });