
<!DOCTYPE html>
<html>
<head>
    <title>UniTicket</title>
    <meta charset="UTF-8">
  
</head>
<body>
    <label for="take-ticket">
        Senha Tirada:
        <p id="takeTicket"></p>
    </label>

    <button type="button" id="BtnA">SENHA A</button>
    <button type="button" id="BtnB">SENHA B</button>
    <button type="button" id="BtnC">SENHA C</button>
    <hr>

    <label for="SecState">
        Secretary A:
        <p id="secA" value='0' ></p>
    </label>
    <button type="button" onclick="rps('secA')">Next Ticket</button>
    <hr>
    
    <label for="SecState">
        Secretary B:
        <p id="secB" value='0' ></p>
    </label>
    <button type="button" onclick="rps('secB')">Next Ticket</button>
    <hr>


    <label for="SecState">
        Secretary C:
        <p id="secC" value='0' ></p>
    </label>
    <button type="button" onclick="rps('secC')">Next Ticket</button>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="./actions.js"></script>
</body>
</html>
<script>
var element= document.getElementById('secA');
function rps(id) {
   
    var element= document.getElementById(id);
  value = parseInt(element.getAttribute('value'), 10)+1; 

    if(value>100)
        value=1;
    element.setAttribute('value', value);
    
    element.innerHTML = value;
}
</script>
