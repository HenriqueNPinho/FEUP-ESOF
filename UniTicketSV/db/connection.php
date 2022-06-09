<?php

const TICKET_A='SELECT * FROM secretaryA';
const TICKET_B='SELECT * FROM secretaryB';
const TICKET_C='SELECT * FROM secretaryC';

const UPDATE_A='UPDATE secretaryA SET a=? WHERE a=?';
const UPDATE_B='UPDATE secretaryB SET b=? WHERE b=?';
const UPDATE_C='UPDATE secretaryC SET c=? WHERE c=?';

function getDatabaseConnection(): PDO
{
    $db = new PDO('sqlite:' .__DIR__.'/database.db');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $db;
}
$db=getDatabaseConnection();

function getSecA(PDO $db){
    $stmt = $db->prepare(TICKET_A);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecA(PDO $db){
    $a=getSecA($db);
    $b=$a['a']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_A);
    $stmt->execute(array($b, $a['a']));
    return $stmt->fetch();
} 


function getSecB(PDO $db){
    $stmt = $db->prepare(TICKET_B);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecB(PDO $db){
    $a=getSecB($db);
    $b=$a['b']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_B);
    $stmt->execute(array($b, $a['b']));
    return $stmt->fetch();
}

function getSecC(PDO $db){
    $stmt = $db->prepare(TICKET_C);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecC(PDO $db){
    $a=getSecC($db);
    $b=$a['c']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_C);
    $stmt->execute(array($b, $a['c']));
    return $stmt->fetch();
}

