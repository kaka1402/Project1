<?php 
if(isset($_POST['submit'])){


	$username = $_POST["username"];
	
	$password = $_POST["password"];

	$name = $_POST["name"];

	$email = $_POST["email"];
	

	$numberphone = $_POST["numberphone"];
	

	$address = $_POST["address"];
	
	$img = $_POST["img"];
	
	$role = $_POST["role"];
	

	include("../connect/open.php");

	$sql = "INSERT INTO tbl_accounts(Username,Password,Name,Email,Numberphone,Address,Img,Roles) VALUES ('$username','$password','$name','$email','$numberphone','$address','$img','$role')";

	$result = mysqli_query($con, $sql);
	// $haha=mysqli_fetch_array($result);
	// var_dump($haha);
	header("Location:../index.php?sider=admin");
	include("../connect/close.php");

}
else{
	header("Location:../index.php?sider=admin&admin=add");
}

?>