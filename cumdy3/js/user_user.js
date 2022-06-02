$("form#searchName").on('keyup',function(){

        

        

        $.post("process/search_ajax.php",$(this).serialize(), function(data){

        var data=  JSON.parse(data);

            var Stirng="";


            for (var i =  0; i < data.length; i++) {

                Stirng+= "<option>"+data[i].Teacher_Name+"</option>";
                            
                
            }
            
            $("datalist#searchList").html(Stirng);

        //console.log(data);

        });
    }

    );
/*
 $( "#name" ).on( "keydown", function(event) {
      if(event.which == 13) 
         window.location.assign("http://www.google.com");
    });
    */