<?php 
require_once("../funtion.php");
session_start();
if (!isset($_SESSION["user"])) {
   header("Location: ../index.php");
} 
if(isset($_POST['update'])){
    $id=$_POST['id'];
    $firstname=$_POST['firstname'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $email=$_POST['email'];
    $gender=$_POST['gender'];

            // sửa ảnh
    $IMG=$_FILES["img"];
    $tenAnh = $IMG["name"];
            //B2: Tạo đường dẫn ảnh đến thư mục upload
    $duongDan = "../IMG/".$tenAnh;
            //B3: Di chuyển ảnh từ file tạm thời đến file upload
    if(!empty($tenAnh)){
        move_uploaded_file($IMG["tmp_name"], $duongDan);
        $sql = "UPDATE `tbl_customers` SET `CustomerName`='$firstname',`Gender`='$gender',`Email`='$email',`Username`='$username',`Password`='$password',`Img`='$tenAnh' WHERE CustomerID='$id'" ;
    }else{
        $sql = "UPDATE `tbl_customers` SET `CustomerName`='$firstname',`Gender`='$gender',`Email`='$email',`Username`='$username',`Password`='$password' WHERE CustomerID='$id'";
    }
    noreturn($sql);
    unset($_SESSION["user"]);
    header("Refresh:0");
}
?>