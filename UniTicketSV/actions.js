$(document).ready(function(){
   
    $("#BtnA").click(function(){

        $.post("http://localhost:8080/sec.php",{ ////"http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
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
        $.post("http://localhost:8080/sec.php",{
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
        $.post("http://localhost:8080/sec.php",{
            name: "C"
        },

            function(res, status){
            
                var data = JSON.parse(res);
                console.log(data.SecC)
                $("#takeTicket").html(data.SecC);
            }
        );
    });

});