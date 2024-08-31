<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "form_practice";

$con = mysqli_connect($servername,$username,$password,$dbname);
if($con)
{
    echo"ok";
}
else
{
    die(mysqli_error($con));
}