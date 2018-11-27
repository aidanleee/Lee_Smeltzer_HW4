<?php
$user = "root";
$pass = "root";
$url = "localhost";
$db = "db_flashback";

$link = mysqli_connect($url, $user, $pass, $db, "8888");

if(mysqli_connect_errno()) {
	printf("Connect failed: %s\n", mysqli_connect_error());
	exit();
}
?>