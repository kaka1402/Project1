<?php 
session_start();
require_once("../../funtion.php");
if(isset($_POST["submit"])){
  $name=$_POST["username"];
  $pass=$_POST["password"];
}
$sql="SELECT * FROM tbl_customers where Username='$name'and Password='$pass'";
$g= returnnn($sql);
echo $g[0]['Status'];
// die();

if($g==NULL){
  header("Location: login.php?err=1");
}else{
  if($g[0]['Status']=='1'){
    header("Location: login.php?err=2");
  }else{
    $_SESSION["user"] = $name;
    $_SESSION["pass"] = $pass;
    if(isset($_POST['remember'])){
      setcookie("user", $name, time() + 84600 * 2);
      setcookie("pass", $pass, time() + 84600 * 2);
    } else {
      setcookie("user", $name, time() - 100);
      setcookie("pass", $pass, time() - 100);
    }
    header("Location: ../../index.php?err=0");
  }
}