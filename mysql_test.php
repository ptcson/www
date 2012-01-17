<?php

# Define MySQL Settings
define("MYSQL_HOST", "localhost");
define("MYSQL_USER", "root");
define("MYSQL_PASS", "lobo9cud");
define("MYSQL_DB", "test");

$conn = mysql_connect("".MYSQL_HOST."", "".MYSQL_USER."", "".MYSQL_PASS."") or die(mysql_error());
mysql_select_db("".MYSQL_DB."",$conn) or die(mysql_error());

$sql = "USE TEST";
$res= mysql_query($sql);
$sql = "SELECT * FROM et";
$res = mysql_query($sql);

while ($field = mysql_fetch_array($res))
{
$id = $field['lname'];
$name = $field['fname'];

echo 'First Lname: ' . $field['lname'] . '<br />';
echo 'Last Fname: ' . $field['fname'] . '<br /><br />';
}

?> 
