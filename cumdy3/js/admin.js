$("form#searchName").on('keyup',function(){

        

        

        $.post("action/admin_search_ajax.php",$(this).serialize(), function(data){

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