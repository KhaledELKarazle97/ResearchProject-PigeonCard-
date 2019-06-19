<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "deltadb";
$conn = mysqli_connect($servername,$username,$password,$dbname);
if (!$conn) {
    die("Connection failed due to " . mysqli_connect_error());
}
?>