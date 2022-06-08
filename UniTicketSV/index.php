<?php 

require_once('connection.php');

$db=getDatabaseConnection();
$a= getSecA($db);
$b=getSecB($db);
$c=getSecC($db);

echo "a= ".$a['id']." b= ".$a['id']." c= ".$a['id'];

updateSecA($db);
updateSecB($db);
updateSecC($db);

?>

