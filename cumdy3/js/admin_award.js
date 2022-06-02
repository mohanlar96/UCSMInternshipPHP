$("button").on('click',function(){

	var tscholar=$(this).data('tscholar');
	var sscholar=$(this).data('sscholar');
	var idintern=$(this).data('idintern');
	

	var action=$(this).data('action'); 

	var datatscholar="tscholar="+tscholar;
	var datasscholar="sscholar="+sscholar; 
	var dataidintern="idintern="+idintern;
	
	
	var btn=$(this);

	if(action=="Delete")
	{
		if(!confirm("Are you sure to delete this item?"))
		{
			return false;
		}
		else{

			if(tscholar)
				{
				$.post("action/admin_teacher_delete.php",datatscholar,function(datatscholar){ //reply with json xml
 				btn.parent().parent().remove();		});
 				
				}
			else if(sscholar)
				{
				$.post("action/admin_student_delete.php",datasscholar,function(datasscholar){ //reply with json xml
 				btn.parent().parent().remove();		});
				}
			else if(idintern)
				{
				$.post("action/admin_internship_delete.php",dataidintern,function(dataidintern){ //reply with json xml
 				btn.parent().parent().remove();		});
				}
			
   			}
	}

	
});
function checkimage(input) {
                var url = input.value;
                var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
                if (!(input.files && input.files[0] && (ext === "gif" || ext === "png" || ext === "jpeg" || ext === "jpg"))) {
					input.value = "";
                    alert("You must select an image file of type jpg, png or gif!");
                }
            }

