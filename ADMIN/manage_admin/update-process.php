<?php 
include("../connect/open.php");
if(isset($_GET["id"])){
	$id = $_GET["id"];

	if(isset($_POST["username"]) && isset($_POST["password"]) && isset($_POST["name"]) && isset($_POST["email"]) && isset($_POST["numberphone"]) && isset($_POST["address"]) && isset($_POST["role"]) ){

		$username = $_POST["username"];
		
		$password = $_POST["password"];

		$name = $_POST["name"];
		

		$email = $_POST["email"];
		

		$numberphone = $_POST["numberphone"];
		

		$address = $_POST["address"];

		$role = $_POST["role"];
		
		
	}
	$sql = "UPDATE tbl_accounts SET Username= '$username' , Password= '$password',Name = '$name' , Email = '$email' , Numberphone = '$numberphone' , Address = '$address' , Roles = '$role'WHERE ID = $id" ;

	$result = mysqli_query($con , $sql);
			// sau khi lưu vào thì chuyển sang trang index
	header("location:../index.php?sider=admin");
	
}else{
	header("Location:../index.php?sider=admin&admin=update");
}
include("../connect/close.php");
?>