<?php

# Define MySQL Settings
define("MYSQL_HOST", "localhost");
define("MYSQL_USER", "root");
define("MYSQL_PASS", "lobo9cud");
define("MYSQL_DB", "sakila");

$conn = mysql_connect("".MYSQL_HOST."", "".MYSQL_USER."", "".MYSQL_PASS."") or die(mysql_error());
mysql_select_db("".MYSQL_DB."",$conn) or die(mysql_error());

$sql = "USE ".MYSQL_DB;
$res= mysql_query($sql);
$sql = "SELECT * FROM address";
$res = mysql_query($sql);

while ($row = mysql_fetch_array($res))
{
$id = $row['address_id'];
$address = $row['address'];
$zip = $row['postal_code'];

echo '[' . $id . '] ';
echo $address . ', ';
echo $zip . '<br />';
}

?> 
