<?php 
require_once('./db/connection.php');
require_once('./db/takeTicket.php');

$db=getDatabaseConnection();

$a= getSecA($db);
$b=getSecB($db);
$c=getSecC($db);


?>
<!DOCTYPE html>
<html>
<head>
    <title>UniTicket</title>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
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
        <p id="secA"><?= $a['currA']?></p>
    </label>
    <button id="BtnCA">Next Ticket</button>
    <hr>
    
    <label for="SecState">
        Secretary B:
        <p id="secB"><?= $b['currB']?></p>
    </label>
    <button id="BtnCB">Next Ticket</button>
    <hr>


    <label for="SecState">
        Secretary C:
        <p id="secC"><?= $c['currC']?></p>
    </label>
    <button id="BtnCC">Next Ticket</button>

    <script src="./actions.js"></script>
</body>
</html>
