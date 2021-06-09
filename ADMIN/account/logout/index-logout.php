<?php  
session_start();
echo $_SESSION["admin"];
	unset($_SESSION["admin"]);
header("Location:../login/index-login.php");