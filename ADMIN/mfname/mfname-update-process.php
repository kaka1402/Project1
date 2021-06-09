<?php 
include("../connect/open.php");
if(isset($_GET["id"])){
	$id = $_GET["id"];

	if(isset($_POST["mfname"])){

		$mfname = $_POST["mfname"];
	}


	$sql = "UPDATE tbl_mfname SET MfName= '$mfname'WHERE IdName = $id" ;


	$result = mysqli_query($con , $sql);
			// sau khi lưu vào thì chuyển sang trang index
	header("location:../index.php?sider=mfname");
	
}else{
	header("Location:../index.php?sider=mfname&mfname=update");
}
include("../connect/close.php");
?>