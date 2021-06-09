<?php 
include("../connect/open.php");
if(isset($_GET["id"])){
	$id = $_GET["id"];

	if(isset($_POST["fullname"]) && isset($_POST["gender"]) && isset($_POST["email"]) && isset($_POST["username"]) && isset($_POST["password"]) && isset($_POST["key"])){

		
		

		$fullname = $_POST["fullname"];
		
		$gender = $_POST["gender"];

		$email = $_POST["email"];

		$key =$_POST["key"];

		$username = $_POST["username"];
		
		$password = $_POST["password"];
	}

	$sql = "UPDATE tbl_customers SET CustomerName= '$fullname' , Gender= '$gender',Email = '$email' , Username = '$username' , Password = '$password' ,Status='$key' WHERE CustomerID = $id" ;


	$result = mysqli_query($con , $sql);
			// sau khi lưu vào thì chuyển sang trang index
	header("location:../index.php?sider=user");
	
}else{
	header("Location:../index.php?sider=user&user=update");
}
include("../connect/close.php");
?>