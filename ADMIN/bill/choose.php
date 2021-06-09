<?php  
require_once("../../funtion.php");
include("../connect/open.php");
if(isset($_GET['id'])&&isset($_GET['choose'])){
	$id=$_GET['id'];

	$sql1=returnnn("SELECT * FROM `tbl_bills` WHERE BillID=$id");
	foreach ($sql1 as $key) {
		$HA= $key['Status'];
	}
	if($_GET['choose']=='success'&& $HA !='0' && $HA !='1'){
		$sql="UPDATE `tbl_bills` SET `Status`=0 WHERE BillID=$id";
		echo $sql;
		$resultcus = mysqli_query($con , $sql);
		
	}
	if($_GET['choose']=='delete'&&$HA !='0' &&$HA !='1'){
		$sql="UPDATE `tbl_bills` SET `Status`=1 WHERE BillID=$id";
		$resultcus = mysqli_query($con , $sql);
		$customers = "SELECT * FROM `tbl_billdetail` WHERE BillID =$id";
		$resultcus1 = mysqli_query($con , $customers);
		
		while ($num = mysqli_fetch_array($resultcus1)) {
			$number=$num['OrderQuanity'];
			$maid=$num['ProductID'];
			$customers_old = "SELECT * FROM `tbl_products` WHERE ProductID=$maid";
			$resultcus1_old= mysqli_query($con , $customers_old);
			$num_old = mysqli_fetch_array($resultcus1_old);
			$num_new=$num_old['Number']+$number;
			$sql_new="UPDATE `tbl_products` SET `Number`=$num_new WHERE ProductID=$maid ";
			$resultcus1_new= mysqli_query($con , $sql_new);
		}
	}
	header('Location: ../index.php?sider=bill');
	include("../connect/close.php");
}else{
	echo "Sự cố k nhận được thông tin";
	echo'<a href="admin/index.php?sider=bill">Quay Lại</a>';
}