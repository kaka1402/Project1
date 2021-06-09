<?php  
if(isset($_GET["id"])){
	$id = $_GET["id"];
			// mở kết nối database
	include("../connect/open.php");
	$sql1 = "SELECT * FROM `tbl_products` WHERE ProductID ='$id'";
	$resultPro1 = mysqli_query($con,$sql1);
	$trans=mysqli_fetch_array($resultPro1);

	 if($trans['Status']=='0'){
	
	$sql = "UPDATE `tbl_products` SET `Status`='1' WHERE ProductID ='$id'";
	
	}else{
		$sql = "UPDATE `tbl_products` SET `Status`='0' WHERE ProductID ='$id'";
	}
	$resultPro = mysqli_query($con,$sql);
	
	header("location:../index.php?sider=product");
	include("../connect/close.php");
}else{
	header("location:../index.php?sider=product");
}

?>