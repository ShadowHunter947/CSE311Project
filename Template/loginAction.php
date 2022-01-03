<?php
	session_start();

include "db-conn.php";


	$uname = trim($_POST['uname']);
	$pass = trim($_POST['password']);

	if($uname == "" || $pass == ""){
		echo "Name or Pass is empty!";
		exit;
	}

	$uname = mysqli_real_escape_string($conn, $uname);
	$pass = mysqli_real_escape_string($conn, $pass);
	$pass = sha1($pass);

	$query = "SELECT UserName, Password from users";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Empty data " . mysqli_error($conn);
		exit;
	}
	$row = mysqli_fetch_assoc($result);

	if($uname != $row['UserName'] && $pass != $row['Password']){
		echo "Name or pass is wrong. Check again!";
		$_SESSION['users'] = false;
		exit;
	}

	if(isset($conn)) {mysqli_close($conn);}
	$_SESSION['users'] = true;
	header("Location: index2.php");
?>
