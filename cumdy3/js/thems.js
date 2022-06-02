
$("span.connect").parent('a').on('click',function(){
	
	var id=$(this).attr('id');
	var name="css/"+id+"_thems.css";
	$("span.connect").css('color','');


	$(this).children('span').css('color','white');
	

		$("link#myThemCSS").attr('href',name);
			$.post("action/thems.php","name="+name,function(data){
			console.log(data);
			});

		$("span.themeValue").text(id.toUpperCase());
	
});




