<?php
$username ="bwareing";
$password="passwordBD2"
$host="localhost";
$db_name="Counsler_outreach";

$connect=mysqli_connect($host,$username,$password,$db_name);

if(!$connect)
{
    echo json_encode("Failed connection");
}

?>
