$("input#search").on('keyup',function(){

        
var val=$(this).val();

var data="search="+val;
        

        $.post("action/search_library.php",data, function(data){

        var data=  JSON.parse(data);

            var Stirng="";


            for (var i =  0; i < data.length; i++) {

                Stirng+= "<option>"+data[i].book_Name+"</option>";
                            
                
            }
            
            $("datalist#searchList").html(Stirng);

        //console.log(data);

        });
    }

    );