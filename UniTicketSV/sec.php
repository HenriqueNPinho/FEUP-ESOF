<?php 
require_once('./db/connection.php');
require_once('./db/takeTicket.php');

$db=getDatabaseConnection();


function error($msg){
    $response= array("success" => false, "message" => $msg);
    return json_encode($response);
}

$name= $_POST['name'];

$a= getSecA($db);
$b=getSecB($db);
$c=getSecC($db);
//$message = "Senha A= ".$a['a']." Senha B= ".$b['b']. " Senha C=".$c['c'];
$response=array();
$response["success"]=true;
$response["SecA"]="Senha A= ".$a['ticketA'];
$response["SecB"]="Senha B= ".$b['ticketB'];
$response["SecC"]="Senha C= ".$c['ticketC'];
echo json_encode($response);

if($name=='A'){
    updateSecA($db);
   }
else if($name=='B'){
    updateSecB($db);
    }
else if($name=='C'){
    updateSecC($db);
    }