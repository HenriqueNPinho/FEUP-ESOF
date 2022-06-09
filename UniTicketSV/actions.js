$(document).ready(function(){

    $("#BtnA").click(function(){
        $.post("http://localhost:8080/sec.php",{ ////"http://web.fe.up.pt/~up201805000/UniTicketSV/sec.php"
            name: "A"
        },

            function(res, status){
            
                var data = JSON.parse(res);
           
                $("#statusText").html(data.message);
            }
        );

     /*   $.ajax({
            type: "POST",
            url: 'sec.php',
            data: {name: 'A'},
        });*/
     
    });

    $("#BtnB").click(function(){
        $.post("http://localhost:8080/sec.php",{
            name: "B"
        },

            function(res, status){
            
                var data = JSON.parse(res);
            
                $("#statusText").html(data.message);
            }
        );
    });

    $("#BtnC").click(function(){
        $.post("http://localhost:8080/sec.php",{
            name: "C"
        },

            function(res, status){
            
                var data = JSON.parse(res);
            
                $("#statusText").html(data.message);
            }
        );
    });

});