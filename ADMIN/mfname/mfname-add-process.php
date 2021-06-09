<?php 
if(isset($_POST['submit'])){


	$mfname = $_POST["mfname"];
	
	
	include("../connect/open.php");
	$sql1 = "SELECT * FROM `tbl_mfname` WHERE MfName='$mfname'";

	$result1 = mysqli_query($con, $sql1);
	$tran=mysqli_fetch_array($result1);
	if($tran){
		
		$ka=$tran['IdName'];
		$sql = "UPDATE `tbl_mfname` SET `Status`='0'WHERE IdName='$ka'";
	}else{

	$sql = "INSERT INTO tbl_mfname(MfName) VALUES ('$mfname')";
	echo $sql;
	}
	$result = mysqli_query($con, $sql);
	// $haha=mysqli_fetch_array($result);
	// var_dump($haha);
	header("Location:../index.php?sider=mfname");
	include("../connect/close.php");

}
else{
	header("Location:../index.php?sider=mfname");
}

?>