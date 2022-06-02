$("button#Update").on('click',function(){
	
	var no=$(this).data('carno'); //4343e4
	var action=$(this).data('action'); //del update 
	
	//var carNo="carno="+no; //carno=343434&no=lskdfjolsdfj&name=zawzaw

	var btn=$(this);

	btn.text("Save");
	btn.attr('id','save');
		var varClass=btn.attr('class')+ " btn-danger";
		btn.attr('class',varClass);

		btn.parent().parent().attr('contenteditable','true');
		
		
$("button#save").on ('click',function() {
	btn.text("Update");
	 varClass=" btn btn-info";
	 btn.attr('class',varClass);
	 

					//var carNo=$("button#Save").parent().parent().children().eq(0).text();
					var driverName=$("button#save").parent().parent().children().eq(1).text();
					var phNo=$("button#save").parent().parent().children().eq(2).text();
					var Way=$("button#save").parent().parent().children().eq(3).text();

			var postString="carNo="+no+"&driverName="+driverName+"&phNo="+phNo+"&Way="+Way;
			console.log(postString);
			$.post("action/ferry_update.php",postString,function(data){		
				btn.parent().parent().attr('contenteditable','false');
			
				
					
			btn.attr('id','');
			
				 });
		
			
});

});