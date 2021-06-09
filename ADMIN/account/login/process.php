<?php  
session_start();
if(isset($_POST["username"]) && isset($_POST["password"])){
	$user = $_POST["username"];
	$pass = $_POST["password"];
	include("../../connect/open.php");
	$sql = "SELECT * FROM tbl_accounts WHERE Username = '$user' AND Password = '$pass'";
	$result = mysqli_query($con, $sql);
	$row = mysqli_num_rows($result);
	
	if($row == 0){
		header("Location:index-login.php?err=1");
	}else{
				$_SESSION["admin"] = $user;
				if(isset($_POST["remember"])){
					setcookie("Username",$user,time() + 84600*2);
					setcookie("Password",$pass,time() + 84600*2);
				}else{
					setcookie("Username",$user,time() - 84600);
					setcookie("Password",$pass,time() - 84600);
				}
				header("location:../../index.php?err=0");	
		}
	

	include("../../connect/close.php");
	
}else{
	header("location: index-login.php??err=1");
}
?>