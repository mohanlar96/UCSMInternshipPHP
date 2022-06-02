$("form#teacherForm").on('change',function(){

		

		

		$.post("action/admin_teacher_info_ajax.php",$(this).serialize(), function(data){

        var data=  JSON.parse(data);

        	var Stirng="";


        	for (var i =  0; i < data.length; i++) {

        		Stirng+= "<option value='"+data[i].Teacher_ID+"'>"+data[i].Teacher_Name+"</option>";
		    	      		
        		
        	}
        	
        	$("select#teacherSelect").html(Stirng);

        console.log(data);

		});
	}

	);

$("form#teacherForm").on('change',function(){

                
                $.post("action/admin_teacher_info_ajax.position.php",$(this).serialize(), function(data){

        var data=  JSON.parse(data);

                var Stirng="";


                for (var i =  0; i < data.length; i++) {

                        Stirng+= "<option value='"+data[i].Teacher_ID+"'>"+data[i].Teacher_Name+"</option>";
                        
                        
                        
                }
                
                $("select#teacherSelect").html(Stirng);

        console.log(data);

                });
        }

        );
