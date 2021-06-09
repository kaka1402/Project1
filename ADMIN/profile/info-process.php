<?php 
 require_once("../../funtion.php");
  session_start();
    if (!isset($_SESSION["admin"])) {
     header("Location: ../index.php");
    } 
    if(isset($_POST['update'])){
    $id=$_POST['id'];
    $firstname=$_POST['firstname'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $email=$_POST['email'];


            // sửa ảnh
        $IMG=$_FILES["img"];
        $tenAnh = $IMG["name"];
            //B2: Tạo đường dẫn ảnh đến thư mục upload
        $duongDan = "../../IMG/".$tenAnh;
            //B3: Di chuyển ảnh từ file tạm thời đến file upload
        if(!empty($tenAnh)){
            move_uploaded_file($IMG["tmp_name"], $duongDan);
        $sql = "UPDATE `tbl_accounts` SET `Name`='$firstname',`Email`='$email',`Username`='$username',`Password`='$password',`Img`='$tenAnh' WHERE ID='$id'" ;
        }else{
            $sql = "UPDATE `tbl_accounts` SET `Name`='$firstname',`Email`='$email',`Username`='$username',`Password`='$password' WHERE ID='$id'";
        }
        noreturn($sql);
        }

        header("Location:Profile.php");
 ?>