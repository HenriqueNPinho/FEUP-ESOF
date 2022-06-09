<?php


const TICKET_A='SELECT * FROM secretaryA';
const TICKET_B='SELECT * FROM secretaryB';
const TICKET_C='SELECT * FROM secretaryC';

const UPDATE_A='UPDATE secretaryA SET ticketA=? WHERE ticketA=?';
const UPDATE_B='UPDATE secretaryB SET ticketB=? WHERE ticketB=?';
const UPDATE_C='UPDATE secretaryC SET ticketC=? WHERE ticketC=?';


function getSecA(PDO $db){
    $stmt = $db->prepare(TICKET_A);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecA(PDO $db){
    $a=getSecA($db);
    $b=$a['ticketA']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_A);
    $stmt->execute(array($b, $a['ticketA']));
    return $stmt->fetch();
}   

function getSecB(PDO $db){
    $stmt = $db->prepare(TICKET_B);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecB(PDO $db){
    $a=getSecB($db);
    $b=$a['ticketB']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_B);
    $stmt->execute(array($b, $a['ticketB']));
    return $stmt->fetch();
}



function getSecC(PDO $db){
    $stmt = $db->prepare(TICKET_C);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecC(PDO $db){
    $a=getSecC($db);
    $b=$a['ticketC']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_C);
    $stmt->execute(array($b, $a['ticketC']));
    return $stmt->fetch();
}

