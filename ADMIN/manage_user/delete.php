<?php  
if(isset($_GET["id"])){
	$id = $_GET["id"];
		// mở kết nối database
	include("../connect/open.php");
	
	$sql = "UPDATE `tbl_customers` SET `Status`='1' WHERE CustomerID ='$id'";

	mysqli_query($con,$sql);
	
	header("location:../index.php?sider=user");
	
	include("../connect/close.php");

}else{
	header("location:../index.php?sider=user");
}

?>