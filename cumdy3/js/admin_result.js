$("button#Update").on('click',function(){
	var btn=$(this);
	btn.text("Save");
	var varClass=btn.attr('class')+ " btn-danger";
		btn.attr('class',varClass);
		var serial=btn.data('serialno');

		btn.parent().siblings().eq(3).attr("contenteditable","true");
		btn.parent().siblings().eq(3).css("backgroundColor","#c2c2c2");
		btn.parent().siblings().eq(4).css("backgroundColor","gray");
		btn.parent().siblings().eq(4).attr("contenteditable","true");
		btn.attr("id","Save");
		var id=btn.data('id');
		var postString="ID="+id+"&Serial_No="+serial;
		 $.post("action/admin_result_ajax_del.php",postString,function(data){
				console.log("del -> "+data);
		 });


		 $("button#Save").on('click',function(){


var btn=$(this);

var pid=btn.data('id');
var serial=btn.data('serialno');
var majorId=btn.data('majorid');
var fP=btn.parent().parent().children().eq(3).text();
var sP=btn.parent().parent().children().eq(4).text();

var postString="Percent_ID="+pid+"&Serial_No="+serial+"&Major_ID="+majorId+"&First_Term_Percent="+fP+"&Second_Term_Percent="+sP;

$.post("action/admin_result_ajax_insert.php",postString,function(data){
			console.log("insert ->"+ data);

		 });

		btn.text("Update");
		btn.attr('class',"btn btn-info");
		btn.attr('id','');
		 btn.parent().siblings().eq(3).attr("contenteditable","false");
		btn.parent().siblings().eq(3).css("backgroundColor","");
		btn.parent().siblings().eq(4).css("backgroundColor","");
		btn.parent().siblings().eq(4).attr("contenteditable","false");

});
	


});
	


$(document).ready(function(e){
	$('#grade').on('click',function(){
		alert("Grade Checking Start");
		window.location.href='admin_result_gradecheck.php';
	})
});

$(document).ready(function(e){
	$('#result').on('click',function(){
		alert("Result Checkig Start");
		window.location.href='admin_result_passlistcheck.php';
	})
});





$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});



  function myFunction(){
    document.getElementById('markCertificate').reset();
  }
