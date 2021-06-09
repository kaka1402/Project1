
<?php 
require_once("../funtion.php");
session_start();
if(isset($_SESSION["user"])){
   $name=$_SESSION["user"];
   $pass=$_SESSION["pass"];
   $sql="SELECT * FROM tbl_customers where Username='$name'and Password='$pass'";
   $g= returnnn($sql);
    // echo "<pre>";
    // print_r($g);
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LAPTOP ATPro</title>
    <link rel="icon" type="image/png" href="../IMG/AT-pro-logo.png"/>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/css1.css" rel='stylesheet' type='text/css' media="all" />

</head>
<body class="skin-black">
    <header class="header">
        <p  class="logo" style="margin-top: 0px;">
            HỒ SƠ
        </p>
        <nav class="navbar navbar-static-top" style="background: #fff;">
            <p class="css"><a href="../index.php" style="text-decoration: none;color: black;">TRANG CHỦ</a></p>
        </nav>
    </header>
    
    <aside class="left-side sidebar-offcanvas">
        <section class="sidebar">
            <div class="user-panel" style="border-bottom:2px gray solid; ">
                <div class="pull-left">
                    <p style="text-align: center;margin:0;"><img class="img" src="../IMG/<?php if(isset($g[0]['Img'])){if($g[0]['Img']==NULL){echo 'avatar-facebook-doc.jpg';}else{echo $g[0]['Img'];}}else{echo 'avatar-facebook-doc.jpg';}?>" class="img-circle" alt="User Image" /></p>
                    <p class="info">
                        <?php $exploded = explode(' ', $g[0]['CustomerName']);
                        echo "Chào ".end($exploded); ?>
                    </p>
                </div>
            </div>
            
            <ul class="sidebar-menu">
                <li>
                    <a href="Profile.php?IF=ID" class="menu" >
                        Thông tin cá nhân
                    </a>
                </li>

                <li>
                    <a href="Profile.php?IF=history" class="menu" >
                      Lịch sử mua hàng  
                  </a>
              </li>

          </ul>
      </section>
  </aside>
  

  <div class="right" >
    <?php 
    if(isset($_GET['IF'])){
        switch ($_GET['IF']) {
            case 'ID':
            include ('Info.php');
            break;
            case 'history':
            include ('history.php');
            break;
            default:
            include ('Info.php');
            break;
        }}else{
            include ('Info.php');
        }
        ?>
    </div>
</body>
</html>













