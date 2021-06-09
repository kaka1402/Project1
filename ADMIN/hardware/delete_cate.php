<?php  
if(isset($_GET["id"])){
	$id = $_GET["id"];
		// mở kết nối database
	include("../connect/open.php");
	$sql2 = "DELETE FROM `attribute_detail` WHERE id_attribute='$id'";

	mysqli_query($con,$sql2);
	$sql1 = "DELETE FROM `attribute` WHERE id_attribute='$id'";

	mysqli_query($con,$sql1);
	
	$sql = "DELETE FROM `category` WHERE id_category='$id'";

	mysqli_query($con,$sql);
	
	header("location:../index.php?sider=hard");
	
	include("../connect/close.php");

}else{
	header("location:../index.php?sider=hard");
}

?>