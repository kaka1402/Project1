<?php  
if(isset($_GET["id"])){
	$id = $_GET["id"];
		// mở kết nối database
	include("../connect/open.php");
	$sql1 = "DELETE FROM `attribute_detail` WHERE id_attribute='$id'";
	echo $sql1;

	mysqli_query($con,$sql1);
	$sql = "DELETE FROM `attribute` WHERE id_attribute='$id'";
	echo $sql;

	mysqli_query($con,$sql);
	
	header("location:../index.php?sider=hard");
	
	include("../connect/close.php");

}else{
	header("location:../index.php?sider=hard");
}

?>