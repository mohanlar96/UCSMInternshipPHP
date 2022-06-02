$('button').on('click',function(){
	
	var id=$(this).data('Student_ID');
	var action=$(this).data('action');

	var data="Student_ID="+id;

	var btn=$(this);

	if(action=='Delete'){
		if(!confirm("Are you sure to delete this item")){
			return false;
		}else{
	$.post("action/admin_registration_del.php",data,function(data){
		btn.parent().parent().remove();


			});

		}
	}
	
})

