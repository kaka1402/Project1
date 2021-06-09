<?php  
if(isset($_GET["id"])){
	$id = $_GET["id"];
		// mở kết nối database
	include("../connect/open.php");

	$sql = "UPDATE `tbl_mfname` SET `Status`='1' WHERE IdName ='$id'";

	mysqli_query($con,$sql);
	
	header("location:../index.php?sider=mfname");
	
	include("../connect/close.php");

}else{
	header("location:../index.php?sider=mfname");
}

?>