let url="http://localhost:8080/sec.php"
//let url="http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
$(document).ready(function(){
   
    $("#BtnA").click(function(){

        $.post(url,{
            name: "A"
        },
            function(res, status){
                
                var data = JSON.parse(res);
                console.log(data)
                $("#takeTicket").html(data.SecA);
            }
        );
     
    });

    $("#BtnB").click(function(){
        $.post(url,{
            name: "B"
        },

            function(res, status){
            
                var data = JSON.parse(res);
                console.log(data.SecB)
                $("#takeTicket").html(data.SecB);
            }
        );
    });

    $("#BtnC").click(function(){
        $.post(url,{
            name: "C"
        },

            function(res, status){
            
                var data = JSON.parse(res);
                console.log(data.SecC)
                $("#takeTicket").html(data.SecC);
            }
        );
    });


    $("#BtnCA").click(function(){

        $.post(url,{ ////"http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
            name: "currA"
        },
            function(res, status){
                
                var data = JSON.parse(res);
                console.log(data)
                $("#secA").html(data.currA);
            }
        );
     
    });

    $("#BtnCB").click(function(){

        $.post(url,{ ////"http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
            name: "currB"
        },
            function(res, status){
                
                var data = JSON.parse(res);
                console.log(data)
                $("#secB").html(data.currB);
            }
        );
     
    });

    $("#BtnCC").click(function(){

        $.post(url,{ ////"http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
            name: "currC"
        },
            function(res, status){
                
                var data = JSON.parse(res);
                console.log(data)
                $("#secC").html(data.currC);
            }
        );
     
    });

});