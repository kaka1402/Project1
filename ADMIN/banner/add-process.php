<?php 
if(isset($_FILES["image"])){
	
	$image = $_FILES["image"];
	
	$nameimg = $image["name"];

	$lane = "../../IMG/" . $nameimg;

	move_uploaded_file($image["tmp_name"], $lane);
	
	include("../connect/open.php");

	$sql = "INSERT INTO tbl_banner(LinkBanner) VALUES ('$nameimg')";
	$result = mysqli_query($con, $sql);
		// sau khi lưu vào thì chuyển sang trang index
	header("Location: ../index.php?sider=banner");
	include("../connect/close.php");
}else{
	header("Location: ../index.php?sider=banner&banner=add");
}

?>