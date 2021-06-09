<?php 
require_once("../../funtion.php");

if(isset($_POST["submit"])){
	
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
	// kiểm tra sản phẩm có chưa
	$ssqqll="SELECT * FROM `tbl_products` WHERE ProductName='$name'";
	// echo $ssqqll;
	$runnn=MANG($ssqqll);
	// var_dump($runnn);
	if($runnn!=NULL){
		$maaa= $runnn['ProductID'];}

		  //B2: Tạo đường dẫn ảnh đến thư mục upload
		  //B3: Di chuyển ảnh từ file tạm thời đến file upload
		foreach ($tenAnhs as $key => $value) {
			$duongDans = "../../IMG/".$value;
			move_uploaded_file($IMGs["tmp_name"][$key], $duongDans);
		}
		include("../connect/open.php");
		if($runnn==NULL){
			$sql = "INSERT INTO tbl_products(ProductName,Number,MfName,Price,PI,Img) VALUES ('$name','$number','$MfName','$Price','$PI','$tenAnh')";
		}else if($runnn!=NULL){
			$sql="UPDATE `tbl_products` SET `ProductName`='$name',`Number`='$number',`MfName`='$MfName',`Price`='$Price',`PI`='$PI',`Img`='$tenAnh',`Status`='0' WHERE ProductID='$maaa'";
		}
		// ECHO $sql;
		$result = mysqli_query($con, $sql);
		// sau khi lưu vào thì chuyển sang trang index
		$id_img=mysqli_insert_id($con);

		foreach ($tenAnhs as $key => $value) {
			if($value!=""){
				if($runnn==NULL){
					$SSSS="INSERT INTO `tbl_img`(`ProductID`, `LinkImg`) VALUES ($id_img,'$value')";
				}else if($runnn!=NULL){
					$SSSS="UPDATE `tbl_img` SET `LinkImg`= '$value' WHERE `ProductID`='$maaa'";

				}
				// ECHO $SSSS;
				mysqli_query($con,$SSSS);
			}	
		}

		$lenght=count($_POST["name_attribute"]);

		for($key=0;$key<$lenght;$key++){
			$id_atti=$attribute['id_attri'][$key];
			$name_attri=$attribute['atrri'][$key];
			$satus=$attribute['status'][$key];
			if($name_attri!=""){
				if($runnn==NULL){
					$query="INSERT INTO `attribute_detail`(`id_product`,`id_attribute`, `values`, `status`) VALUES ('$id_img','$id_atti','$name_attri','$satus')";
				}else if($runnn!=NULL){
					$query="UPDATE `attribute_detail` SET `id_attribute`='$id_atti',`values`='$name_attri',`status`='$satus' WHERE `id_product`='$maaa'";
				}
				// ECHO $query;
				mysqli_query($con,$query);	
			}
		}


		// echo "<pre>";

		// 	var_dump($attribute);
		header("Location:../index.php?sider=product");
		include("../connect/close.php");

	}else{
		echo "haha";
		header("Location:../index.php?sider=product&product=add");
	}

	?>