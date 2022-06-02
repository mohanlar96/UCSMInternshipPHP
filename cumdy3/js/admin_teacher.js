$("button").on('click',function(){
        // alert("CLICK");

        var no=$(this).data('srno');
        var action=$(this).data('action');
       
     
        var data="srno="+no; 

        var btn=$(this);

        if(action=="Delete"){
                if(!confirm("Are you sure to delete this item")){
                    return false;
                }else{

                     $.post("action/admin_teacher_del.php",data,function(data){
                                        //console.log(data);
                        btn.parent().parent().remove();

                            });
                        }
                    }
            
                        // alert(action);

   if(action=="Edit"){


               btn.text("Save");
               var varClass=btn.attr('class')+" btn-danger";
                btn.attr('class',varClass);

                btn.parent().parent().attr('contenteditable','true');
                btn.attr('id','Save');

        }//end if Edit

                        



$("button#save").on('click',function(data){

      // alert("save");

var no=$(this).data('srno');
        
     var data="srno="+no; 

     var btn=$(this);
     btn.text("Edit");
     varClass="btn btn-info";
      btn.attr('class',varClass);

                

                var no=$("button#Save").parent().parent().children().eq(0).text();
                var name=$("button#Save").parent().parent().children().eq(1).text();
                var tid=$("button#Save").parent().parent().children().eq(2).text();
                var postion=$("button#Save").parent().parent().children().eq(3).text();
                var depname=$("button#Save").parent().parent().children().eq(4).text();
                var depid=$("button#Save").parent().parent().children().eq(5).text();
                var salary=$("button#Save").parent().parent().children().eq(6).text();
                var quali=$("button#Save").parent().parent().children().eq(7).text();
                var dob=$("button#Save").parent().parent().children().eq(8).text();
                var nation=$("button#Save").parent().parent().children().eq(9).text();
                var reli=$("button#Save").parent().parent().children().eq(10).text();
                var birth=$("button#Save").parent().parent().children().eq(11).text();
                var nrc=$("button#Save").parent().parent().children().eq(12).text();
                var fname=$("button#Save").parent().parent().children().eq(13).text();
                var fjob=$("button#Save").parent().parent().children().eq(14).text();
                var marr=$("button#Save").parent().parent().children().eq(15).text();
                var password=$("button#Save").parent().parent().children().eq(16).text();
                var user=$("button#Save").parent().parent().children().eq(17).text();
                var job=$("button#Save").parent().parent().children().eq(18).text();
                var pos=$("button#Save").parent().parent().children().eq(19).text();
                var uni=$("button#Save").parent().parent().children().eq(20).text();
                var cont=$("button#Save").parent().parent().children().eq(21).text();
                var exp=$("button#Save").parent().parent().children().eq(22).text();
                var action=$("button#Save").parent().parent().children().eq(23).text();
                var train=$("button#Save").parent().parent().children().eq(24).text();
                var past=$("button#Save").parent().parent().children().eq(25).text();
                var per=$("button#Save").parent().parent().children().eq(26).text();
                var email=$("button#Save").parent().parent().children().eq(27).text();
                
                var postString="no="+no+"&name="+name+"&tid="+tid+"&position="+position+
                "&depname="+depname+"&depid="+depid+"&salary="+salary+"&quali="+quali+
                "&dob="+dob+"&nation="+nation+"&reli="+reli+"&birth="+birth+
                "&nrc="+nrc+"&fname="+fname+"&fjob="+fjob+"&marr="+marr+"&password="+password+"&user="+user+
                "&job="+job+"&pos="+pos+"&uni="+uni+"&cont="+cont+"&exp="+exp+
                "&action="+action+"&train="+train+"&past="+past+
                "&per="+per+"&email="+email;
                console.log(postString);
            $.post("database/teacher_insert.php",postString,function(data){     
                btn.parent().parent().attr('contenteditable','false');
                        
            btn.attr('id','Edit');
            btn.parent().parent().attr('bgcolor','blue');
                 });
        
            
});

});

