$("button").on('click',function(){

	var newsid=$(this).data('newsid');
	var localid=$(this).data('localid');
	var action=$(this).data('action'); //del update 
	var datanewsid="newsid="+newsid;
	var datalocalid="localid="+localid; //carno=343434&no=lskdfjolsdfj&name=zawzaw
	
	
	var btn=$(this);

	if(action=="Delete")
	{
		if(!confirm("Are you sure to delete this item"))
		{
			return false;
		}
		else{

			if(newsid)
				{
				$.post("action/admin_international_delete.php",datanewsid,function(datanewsid){ //reply with json xml
 				btn.parent().parent().remove();		});
 				
				}
			else if(localid)
				{
				$.post("action/admin_local_delete.php",datalocalid,function(datalocalid){ //reply with json xml
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

