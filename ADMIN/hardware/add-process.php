<?php 
require_once("../../funtion.php");
if (isset($_POST['submit'])) {
		if($_POST['kaka']=='attri'){
			$id=$_POST['cate'];
			$name=$_POST['attri'];
			$sql="INSERT INTO `attribute`(`name_attribute`, `Category`) VALUES ('$name','$id')";

			if($id!=''){
			noreturn("INSERT INTO `attribute`(`name_attribute`, `Category`) VALUES ('$name','$id')");
		}
		}
		if($_POST['kaka']=='cate'){
			$id=$_POST['mfname'];
			$ql="INSERT INTO `category`(`name_category`) VALUES ($id)";
			echo $ql;
			if($id!=''){
			noreturn("INSERT INTO `category`(`name_category`) VALUES ('$id')");
		}
		}

		header("Location:../index.php?sider=hard");
	}
 ?>