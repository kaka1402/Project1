<?php 
if(isset($_GET["id"])){
	$id = $_GET["id"];
	if(isset($_FILES["image"])){
		
		$image = $_FILES["image"];
		
		$nameimg = $image["name"];

		$lane = "../../IMG/" . $nameimg;

		move_uploaded_file($image["tmp_name"], $lane);
		
		include("../connect/open.php");

		$sql = "UPDATE tbl_banner SET  LinkBanner='$nameimg' WHERE BannerID ='$id'";
		$result = mysqli_query($con, $sql);
		// sau khi lưu vào thì chuyển sang trang index
		header("Location:../index.php?sider=banner");
		include("../connect/close.php");
		
	}else{
		header("Location:../index.php?sider=banner&banner=update");
	}
}


?>