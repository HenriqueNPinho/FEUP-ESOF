<?php 
require_once('./db/connection.php');
require_once('./db/takeTicket.php');

$db=getDatabaseConnection();

$a= getSecA($db);
$b=getSecB($db);
$c=getSecC($db);

function dif(int $a,int $b){

    if($b-$a>=0){
        return $b-$a;
    }
    else{
        return (100-$a)+$b;
    }
   
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>UniTicket</title>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
</head>
<body>
    <div style="display: flex; flex-direction:row; ">
        <span style="margin-right:2em;">
            <label for="take-ticket">
                <b>Senha Tirada:</b>
                <p id="takeTicket"></p>
            </label>

            <button type="button" id="BtnA">SENHA A</button>
            <button type="button" id="BtnB">SENHA B</button>
            <button type="button" id="BtnC">SENHA C</button>
        </span>

        <div style="border-left:1px solid #000;height:auto ; margin-right: 2em;"></div>
        
        <span>
            <b>Em espera:</b>
            <p></p>
            <label style="margin-right:2em;">
                Senha A:
                <span id="waitA"><?= dif($a['currA'],$a['ticketA']-1)?></span>
            </label>

            <label style="margin-right:2em;">
                Senha B:
                <span id="waitB"><?= dif($b['currB'],$b['ticketB']-1)?></span>
            </label>

            <label style="margin-right:2em;">
                Senha C:
                <span id="waitC"><?= dif($c['currC'],$c['ticketC']-1)?></span>
            </label>

        </span>
    </div>


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
