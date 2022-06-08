<?php

const TICKET_A='SELECT * FROM secretaryA';
const TICKET_B='SELECT * FROM secretaryB';
const TICKET_C='SELECT * FROM secretaryC';

const UPDATE_A='UPDATE secretaryA SET id=? WHERE id=?';
const UPDATE_B='UPDATE secretaryB SET id=? WHERE id=?';
const UPDATE_C='UPDATE secretaryC SET id=? WHERE id=?';

function getDatabaseConnection(): PDO
{
    $db = new PDO('sqlite:database.db');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $db;
}


function getSecA(PDO $db){
    $stmt = $db->prepare(TICKET_A);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecA(PDO $db){
    $a=getSecA($db);
    $b=$a['id']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_A);
    $stmt->execute(array($b, $a['id']));
    return $stmt->fetch();
} 


function getSecB(PDO $db){
    $stmt = $db->prepare(TICKET_B);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecB(PDO $db){
    $a=getSecB($db);
    $b=$a['id']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_B);
    $stmt->execute(array($b, $a['id']));
    return $stmt->fetch();
}



function getSecC(PDO $db){
    $stmt = $db->prepare(TICKET_C);
    $stmt->execute();
    return $stmt->fetch();
}
function updateSecC(PDO $db){
    $a=getSecC($db);
    $b=$a['id']+1;
    if($b>100){
        $b=1;
    }
    $stmt = $db->prepare(UPDATE_C);
    $stmt->execute(array($b, $a['id']));
    return $stmt->fetch();
}