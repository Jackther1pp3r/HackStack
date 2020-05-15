<?php // query.php
require_once '/var/php/login.php';
$db_server = mysql_connect($db_hostname, $db_username, $db_password);

if  (!$db_server) die("Unable to connect to mySql: " . mysql_error());

mysql_select_db($db_database)
    or die ("Unable to select database: " . mysql_error());

$query = "SELECT * FROM dump_test";
$result = mysql_query($query);

if (!$result) dir ("Database access failed: " . mysql_error());

$rows = mysql_num_rows($result);

for ($j = 0 ; $j < $rows ; ++$j)
{
    echo 'Vehicle: ' . mysql_result($result,$j,'vehicle') . '<br/>';
    echo 'Speed: ' . mysql_result($result,$j,'speed') . '<br/>';
    echo 'odometer: ' . mysql_result($result,$j,'odometer') . '<br/></br>';
}

?>