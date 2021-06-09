<?php
require_once("../../funtion.php");
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
if (isset($_POST["pay"])) {
  $idUser = $_POST["id_custom"];
  $hoTen = $_POST["name"];
  $sdt = $_POST["phone"];
  $diaChi = $_POST["adress"];
  $ngayDat = date("Y-m-d");
  $time=date("H:i:s");
  // echo $time;
  
  // Thêm dữ liệu vào hóa đơn 
  $sql1="INSERT INTO `tbl_bills`(`CustomerID`, `CustomerName`, `PhoneNumber`, `Address`, `DateCreateBill`,`TimeCreatBill`) VALUES ('$idUser','$hoTen','$sdt','$diaChi','$ngayDat','$time')";
  $idbill = lastid($sql1);
  $gioHang = $_SESSION['Cart'];
  // var_dump($gioHang);
  // die();
  foreach ($gioHang as $maSp => $value) {
    $_0=MANG("SELECT*FROM tbl_products WHERE ProductID ='$maSp'");
    $num=$_0['Number'];
    if($num!='0'){
    $Name=$value['name'];
    $Quanity=$value['quantity'];
    $Price=$value['price'];
    $sql2="INSERT INTO `tbl_billdetail`(`BillID`, `ProductID`, `Name`, `OrderQuanity`, `Price`) VALUES ('$idbill','$maSp','$Name','$Quanity','$Price')";
    noreturn($sql2);
    $sql3="SELECT  `Number` FROM `tbl_products` WHERE ProductID='$maSp'";
    $number=MANG($sql3);
    $newnumber=$number['Number']-$Quanity;
    echo $newnumber;
    $sql4="UPDATE `tbl_products` SET `Number`='$newnumber' WHERE ProductID='$maSp'";
    noreturn($sql4);
  }
  }
  unset($_SESSION["Cart"]);
  header("Location: ../../index.php?MENU=CRAT&success=1");
  
}
