<?php
include("db_connection.php");

$username=$_POST['username_input'];
$password=$_POST['password_input'];

$login_status="Unsuccessful";

if(trim($username)=="" || trim($password)==""){
  echo "Error! Please enter a valid input."."<br>";

  $url = "http://localhost/test1/login.php";
  header("Refresh: 3; URL=$url");
  
}





 ?>
