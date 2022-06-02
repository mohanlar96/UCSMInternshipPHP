$("button").on('click',function(){


	var idmanage=$(this).data('idmanage');
	var awardid=$(this).data('awardid');

	var action=$(this).data('action'); 

	var dataidmanage="idmanage="+idmanage;
	var dataawardid="awardid="+awardid;
	
	var btn=$(this);

	if(action=="Delete")
	{
		if(!confirm("Are you sure to delete this item?"))
		{
			return false;
		}
		else{
				if(idmanage)
				{
				$.post("action/admin_sponsorship_delete.php",dataidmanage,function(dataidmanage){
						btn.parent().parent().remove();		});
				}
				else if(awardid)
				{
					$.post("action/admin_sponsorship_delete.php",dataawardid,function(dataawardid){
						btn.parent().parent().remove();		});
				}
   			}
	}

	else
		{
			if(!confirm("Are you sure to give sponsorship to this student?"))
			{
			return false;
			}
			else
			{
				/*$.post("action/sponsorship_insert.php",dataidmanage,function(dataidmanage)//reply with json xml
 					);*/
					location.assign("action/sponsorship_insert.php?id="+idmanage);
			}
		}
});


