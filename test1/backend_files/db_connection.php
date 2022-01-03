<?php

$servername = "localhost";
$username = "root";
$db = "cse311";
$password= "";

$conn = mysqli_connect($servername, $username, $password, $db);

if(!$conn){
  die("Connection Error!".mysqli_connect_error());
}
else{
  echo "Connection Successful!";
}

 ?>
