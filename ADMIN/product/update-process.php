<?php 
include("../connect/open.php");
if(isset($_POST["submit"])){
	$id=$_POST["idd"];

	$name = $_POST["name"];
	
	$number = $_POST["number"];

	$MfName = $_POST["MfName"];

	$Price = $_POST["Price"];

	$PI = $_POST["PI"];

	$IMG=$_FILES["img"];
	
		  //B1: lấy tên ảnh
	$tenAnh = $IMG["name"];
		  //B2: Tạo đường dẫn ảnh đến thư mục upload
	$duongDan = "../../IMG/".$tenAnh;
		  //B3: Di chuyển ảnh từ file tạm thời đến file upload
	move_uploaded_file($IMG["tmp_name"], $duongDan);
	

		// up nhiều ảnh
	$IMGs=$_FILES["imgs"];
	
		  //B1: lấy tên ảnh
	$tenAnhs= $IMGs["name"];

	$ha=0;
	$arr=[
		'id_attri'=> $_POST["name_attribute"],
		'atrri'=> $_POST["attribute"],
		'status'=>$_POST["dfhd"],
	];
	$attribute=$arr;
	if(!empty($tenAnh)){
		move_uploaded_file($IMG["tmp_name"], $duongDan);
		$sql ="UPDATE `tbl_products` SET `ProductName` = '$name', `Number` = '$number', `MfName` = '$MfName', `Price` = '$Price', `PI` = '$PI', `Img` = '$tenAnh' WHERE `tbl_products`.`ProductID` = $id";
	}else{
		$sql = "UPDATE `tbl_products` SET `ProductName` = '$name', `Number` = '$number', `MfName` = '$MfName', `Price` = '$Price', `PI` = '$PI' WHERE `tbl_products`.`ProductID` = $id;";
	}
	$result = mysqli_query($con , $sql);
			// sửa nhiều ảnh 
			// up nhiều ảnh
	$IMGs=$_FILES["imgs"];
	
			  //B1: lấy tên ảnh
	$tenAnhs= $IMGs["name"];
			  //B2: Tạo đường dẫn ảnh đến thư mục upload
			  //B3: Di chuyển ảnh từ file tạm thời đến file upload
			// print_r($IMGs);
	if(!empty($tenAnhs[0])){

		mysqli_query($con,"DELETE FROM `tbl_img` WHERE 	ProductID=$id");


		foreach ($tenAnhs as $key => $value) {
			$duongDans = "../../IMG/".$value;
			move_uploaded_file($IMGs["tmp_name"][$key], $duongDans);
		}

		foreach ($tenAnhs as $key => $value) {
			mysqli_query($con,"INSERT INTO `tbl_img`(`ProductID`, `LinkImg`) VALUES ($id,'$value')");
		}
	}

	//thông tin chi tiết
	$lenght=count($_POST["name_attribute"]);

	for($key=0;$key<$lenght;$key++){
		$id_atti=$attribute['id_attri'][$key];
		$name_attri=$attribute['atrri'][$key];
		$satus=$attribute['status'][$key];

		$query="UPDATE `attribute_detail` SET `values`='$name_attri',`status` = '$satus' WHERE `attribute_detail`.`id_product` ='$id' AND `attribute_detail`.`id_attribute` = '$id_atti'";
		
		mysqli_query($con,$query);	
	}


			// sau khi lưu vào thì chuyển sang trang index
	header("Location:../index.php?sider=product");
	
}else{
	echo "haha";
	header("Location:../index.php?sider=product&product=update");
}
include("../connect/close.php");
?>