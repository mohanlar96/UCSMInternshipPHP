$("select").on('change',function(){

	$("input.mark").val("");


	$.post('action/lms_insert_mark.php',$("form#markInsert").serialize(),function(data){

	 if(data){
	 				 var  dataJs=JSON.parse(data);

					if(dataJs[0]=="enable"){
						$("input").removeAttr('disabled');
						$("button").removeAttr('disabled');
						var data=dataJs[1];

						for (var i = 0; i <= data.length; i++) {

						 	var inputMark=data[i].Mark;
						 	var stdId=data[i].Student_ID;

						 	console.log("stdID"+ stdId +"Mark :"+inputMark);

						 	$.each($("input.mark"),function(){
						 		if($(this).data('stdid')==stdId){
						 			$(this).val(inputMark);
						 		}
						 	});

						 	

						};


					}else{
							$("input").attr('disabled','disabled');
							$("button").attr('disabled','disabled');


					}
		}

	});


});