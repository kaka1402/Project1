<?php
session_start();
if (isset($_SESSION["user"])) {
  header("Location: ../../index.php");
} else {
  if (isset($_COOKIE["user"])) {
    $user = $_COOKIE["user"];
    $pass = $_COOKIE["pass"];
}
}
?>
<html>
<head>
    <title>Login</title>
    <link rel="icon" type="image/png" href="../IMG/AT-pro-logo.png"/>
    <link rel="stylesheet" type="text/css" href="style.css">   
</head>
<body>
    <div class="login-box">
        <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form method="post" action="login_process.php">
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" value="<?php if (isset($_COOKIE["user"])) {echo $user;}?>">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" value="<?php if (isset($_COOKIE["pass"])) {echo $pass;}?>">
            <label class="toggle" for="toggle">
                <p id="save">Save Password</p>
                <input type="checkbox" id="toggle" name="remember" <?php
                if (isset($_COOKIE["user"])) {
                  echo "checked";}?>>
                  <div class="slider"></div>
              </label>            
              <input type="submit" name="submit" value="Login">
              <?php 
              if(isset($_GET['err'])){
                if($_GET['err']=='1'){
                echo"Sai tên tk hoặc mật khẩu ";
              }
              if($_GET['err']=='2'){
                echo"Tài khoản này đã bị xóa";
              }
            }else{
                echo '<a href="#">Forget Password</a>';
            }
            ?>
        </form>
    </div>
</body>
</html>