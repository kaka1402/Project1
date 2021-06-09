<?php 
require_once("../../funtion.php");
if (isset($_POST['submit'])) {
		$where=$_GET['where'];
		if($_POST['kaka']=='attri'){
			$id=$_POST['cate'];
			$name=$_POST['attri'];
			$sql="INSERT INTO `attribute`(`name_attribute`, `Category`) VALUES ('$name','$id')";

			if($id!=''){
			noreturn("UPDATE `attribute` SET `name_attribute`='$name',`Category`='$id' WHERE `id_attribute`='$where'");
		}
		}
		if($_POST['kaka']=='cate'){
			$id=$_POST['mfname'];
			
			if($id!=''){
			noreturn("UPDATE `category` SET `name_category`='$id' WHERE `id_category`='$where'");
		}
		}

		header("Location:../index.php?sider=hard");
	}
 ?>