<?php 
require_once("../../funtion.php");
if (isset($_POST['submit'])){
    $firstname=$_POST['full-name'];
    $user=$_POST['username'];
    $pass=$_POST['password'];
    $email=$_POST['phone-number'];
    $gender=$_POST['gender'];
    $check=noreturn("INSERT INTO tbl_customers(CustomerName,Gender,Email,Username,Password) VALUES ('$firstname','$gender','$email','$user','$pass')");
   
    // header("Location: login.php");
}    
if(isset($check) and !$check==NULL){
    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="register-style.css">
</head>
<body>
	<div class="login-box">
        <img src="register.jpg" class="avatar">
        <h1>Register </h1>
        <form method="post" action="register.php">
            <p>Your Full name</p>
            <input type="text" name="full-name"
            placeholder="Enter your first name and last name" required>

            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" required>
            
            <p>Password</p>
            <!-- <input type="password" name="password" placeholder="Enter Password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number." required> -->
            <input type="password" name="password" placeholder="Enter Password" required>
            <p>Email</p>
            <input type="text" name="phone-number" placeholder="Enter your email" required>
            <lable><input type="radio" value="1" name="gender">male</lable>
            <lable><input type="radio" value="0" name="gender">female</lable><br>
            <?php if(isset($check)){echo"<p>đăng ký thất bại</p>";}?>
            <input type="submit" name="submit" value="Register">
            <a href="login.php" style="margin-left:5px;font-size: 20px; color: red; ">Login</a>
        </form>
    </div>
    
</body>
</html>