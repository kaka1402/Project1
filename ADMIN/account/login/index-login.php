<?php  
session_start();
if(isset($_SESSION["admin"])){
    header("Location:../../index.php");
}else{
    $check = false;
    if(isset($_COOKIE["Username"]) ){
        $user = $_COOKIE["Username"];
        $pass = $_COOKIE["Password"];
        $check = true;
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
    <form action="process.php" method="post">
        <div class="login-box">
            <img src="avatar.png" class="avatar">
            <h1>Login Here</h1>
            <form>
                <p>Username</p>
                <input type="text" name="username" placeholder="Enter Username"value="<?php if($check){ echo $user;}?>">
                <p>Password</p>
                <input type="password" name="password" placeholder="Enter Password" value="<?php if($check){ echo $pass;}?>">
                <label class="toggle" for="toggle">
                    <p id="save">Save Password</p>
                    <input type="checkbox" id="toggle"  name="remember"<?php if($check){ echo "checked";}?>>
                    <div class="slider"></div>
                </label>
                <input type="submit" name="submit" value="Login">
                <?php 
              if(isset($_GET['err'])){
                echo"Error Username or Password";
            }
            ?>
                 
            </form>
        </form>   
    </div>
</body>
</html>