<?php 
if(isset($_POST['submit'])){


	$customername = $_POST["fullname"];
	
	$gender = $_POST["gender"];

	$email = $_POST["email"];

	$username = $_POST["username"];
	

	$password = $_POST["password"];
	
	include("../connect/open.php");

	$sql = "INSERT INTO tbl_customers(CustomerName,Gender,Email,Username,Password) VALUES ('$customername','$gender','$email','$username','$password')";

	$result = mysqli_query($con, $sql);
	// $haha=mysqli_fetch_array($result);
	// var_dump($haha);
	header("Location:../index.php?sider=user");
	include("../connect/close.php");

}
else{
	header("Location:../index.php?sider=user");
}

?>