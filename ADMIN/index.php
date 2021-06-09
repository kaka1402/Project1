<?php 
require_once("../funtion.php");
session_start();
if(!isset($_SESSION["admin"])){
	header('Location:account/login/index-login.php');
}
?>

<?php if(isset($_GET['err'])&&$_GET['err']==0){ ?>
 	<script>
 		window.alert("Bạn đã đăng nhập thành công!!");
 	</script>
 <?php } ?>

 <?php if(isset($_GET['err'])&&$_GET['err']==1){ ?>
 	<script>
 		window.alert("Bạn đã đăng xuất thành công!!");
 	</script>
 <?php } ?>
 <?php 
if(isset($_SESSION["admin"])){
	$name=$_SESSION["admin"];
	$sql="SELECT * FROM `tbl_accounts` where Username='$name'";
	$g= returnnn($sql);
	$role=$g[0]['Roles'];
    // echo "<pre>";
    // print_r($g);
}
  ?>
<!DOCTYPE html>
<html>
<head>
	<title>ATPro Admin</title>
	<script src="../CKEditor & CKFinder/ckeditor/ckeditor.js"></script>
	<script src="../CKEditor & CKFinder/ckfinder/ckfinder.js"></script>
	<script src="../CKEditor & CKFinder/jquery-3.1.1.min.js"></script>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<!--  -->
	
	<link rel="icon" type="image/png" href="../IMG/AT-pro-logo.png"/>

	<link rel="stylesheet" type="text/css" href="style1.css">
	<!-- <link rel="stylesheet" type="text/css" href="../user/MAIN/style.css"> -->
	<style type="text/css" media="screen">
		._1{
			padding-top: 0px;
			margin-left: 50px; 
		}
		.pagination{
			float: right;
		}
		.pagination a {
			color: black;
			float: left;
			padding: 8px 16px;
			text-decoration: none;
			transition: background-color .3s;
		}

		.pagination a:active {
			background-color: dodgerblue;
			color: white;
		}
		.pagination a:hover{background-color: #99FFFF;}
		.add{
			color: #ffffff;
			background: #2196f38f;
			box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); 
			padding: 0.5em 1em; 
			display: inline-block; 
			margin: 0.5em; 
			margin-left: 0em;
			border-radius: 12px;
			border: none;
			margin-right:0px; 
		}
		.search{
			height: 30px;
			width: 300px;
		}
		.b_search{
			height: 30px;
			width: 41px;
		}
		td{
			text-align: center;
		}
		.tr{
			background: #FFFFCC;
			height: 30px;
		}
		.tr_1{
			background: white;
			/* margin-bottom:5px;  */
		}
		.table> th, td{
			border-top:1px solid #ccc;
			border-bottom:1px solid #ccc;
			padding-left: 5px;
			padding-right: 5px;
		}
		section {
			display: block;
			/*  width: 600px; */
			margin: auto;
			min-width: 0;
			background: white;
		}
		.text-center{
			text-align: center;
		}
		.content_content{
			text-align: center;
		}
		.row{
			border: none;
		}
		h1{
			margin: 5px auto;
			background: white;
		}
		.form-group{
			margin: auto;
			margin-top: 20px;
			margin-bottom: 20px;
			width: 590px;
		}
		.form-group>input{
			width: 300px;
			height: 30px;
		}
		.form-control{
			width: 300px;
			height: 30px;
		}
		
		label{
			float: left;
			width: 200px;
		}
		.avt img {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	border: 3px gray solid;
	object-fit: cover;
	}

	.avt {
		padding: 11px
	}
	.key svg :hover{
		height: 2em;
		width: 2em;
	}
	</style>
</head>
<body class="overlay-scrollbar">
	<!-- navbar -->
	<div class="navbar">
		
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link">
					<i class="sidebar-expand" onclick="collapseSidebar()"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M2 1h12a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm12-1a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/><path fill-rule="evenodd" d="M5 15V1H4v14h1zm8-11.5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/></g></svg></i>
				</a>
			</li>
			<li class="nav-item">
				<img src="../IMG/AT-pro-black.png" alt="ATPro logo" class="logo logo-dark">
			</li>
		</ul>
		
		<ul class="navbar-nav nav-right">
			<li class="nav-item avt-wrapper">
				<div class="avt dropdown">
					<img src="../IMG/<?php if(isset($g[0]['Img'])){if($g[0]['Img']==NULL){echo 'avatar-facebook-doc.jpg';}else{echo $g[0]['Img'];}}else{echo 'avatar-facebook-doc.jpg';}?>" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
					<ul id="user-menu" class="dropdown-menu">
						<li  class="dropdown-menu-item">
							<a href="profile/Profile.php" class="dropdown-menu-link">
								<div>
									<i class="fas fa-user-tie"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.13em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 32"><path fill="#626262" d="M.5 31.983a.503.503 0 0 0 .612-.354c1.03-3.843 5.216-4.839 7.718-5.435c.627-.149 1.122-.267 1.444-.406c2.85-1.237 3.779-3.227 4.057-4.679a.5.5 0 0 0-.165-.473c-1.484-1.281-2.736-3.204-3.526-5.416a.492.492 0 0 0-.103-.171c-1.045-1.136-1.645-2.337-1.645-3.294c0-.559.211-.934.686-1.217a.5.5 0 0 0 .243-.408C10.042 5.036 13.67 1.026 18.12 1l.107.007c4.472.062 8.077 4.158 8.206 9.324a.498.498 0 0 0 .178.369c.313.265.459.601.459 1.057c0 .801-.427 1.786-1.201 2.772a.522.522 0 0 0-.084.158c-.8 2.536-2.236 4.775-3.938 6.145a.502.502 0 0 0-.178.483c.278 1.451 1.207 3.44 4.057 4.679c.337.146.86.26 1.523.403c2.477.536 6.622 1.435 7.639 5.232a.5.5 0 0 0 .966-.26c-1.175-4.387-5.871-5.404-8.393-5.95c-.585-.127-1.09-.236-1.336-.344c-1.86-.808-3.006-2.039-3.411-3.665c1.727-1.483 3.172-3.771 3.998-6.337c.877-1.14 1.359-2.314 1.359-3.317c0-.669-.216-1.227-.644-1.663C27.189 4.489 23.19.076 18.227.005l-.149-.002c-4.873.026-8.889 4.323-9.24 9.83c-.626.46-.944 1.105-.944 1.924c0 1.183.669 2.598 1.84 3.896c.809 2.223 2.063 4.176 3.556 5.543c-.403 1.632-1.55 2.867-3.414 3.676c-.241.105-.721.22-1.277.352c-2.541.604-7.269 1.729-8.453 6.147a.5.5 0 0 0 .354.612z"/></svg></i>
								</div>
								<span>Profile</span>
							</a>
						</li>
						<li  class="dropdown-menu-item">
							<a href="account/logout/index-logout.php" class="dropdown-menu-link">
								<div>
									<i class="fas fa-sign-out-alt"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2a9.985 9.985 0 0 1 8 4h-2.71a8 8 0 1 0 .001 12h2.71A9.985 9.985 0 0 1 12 22zm7-6v-3h-8v-2h8V8l5 4l-5 4z" fill="#626262"/></svg></i>
								</div>
								<span>Logout</span>
							</a>
						</li>
					</ul>
				</div>
			</li>
			
		</ul>
		
	</div>
	<!-- end navbar -->
	<!-- sidebar -->
	<div class="sidebar">
		<ul class="sidebar-nav">
			<li class="sidebar-nav-item">
				<a href="index.php?sider=banner" class="sidebar-nav-link">
					<div>
						<i class="" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/><path d="M10.648 7.646a.5.5 0 0 1 .577-.093L15.002 9.5V13h-14v-1l2.646-2.354a.5.5 0 0 1 .63-.062l2.66 1.773l3.71-3.71z"/><path fill-rule="evenodd" d="M4.502 7a1.5 1.5 0 1 0 0-3a1.5 1.5 0 0 0 0 3z"/></g></svg></i>
					</div>
					<span>
						Banner
					</span>
				</a>
			</li>

			<li class="sidebar-nav-item">
				<a href="index.php?sider=product" class="sidebar-nav-link active">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path d="M13 10h-2V8h2v2zm0-4h-2V1h2v5zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2s-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2s2-.9 2-2s-.9-2-2-2zm-8.9-5h7.45c.75 0 1.41-.41 1.75-1.03L21 4.96L19.25 4l-3.7 7H8.53L4.27 2H1v2h2l3.6 7.59l-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2z" fill="#626262"/></svg></i>
					</div>
					<span>Sản Phẩm</span>
				</a>
			</li>
			
			<li  class="sidebar-nav-item">
				<a href="index.php?sider=mfname" class="sidebar-nav-link">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none"><path d="M2.924 4.129A2.25 2.25 0 0 1 5.171 2H6.33a2.25 2.25 0 0 1 2.247 2.129l.838 15.5A2.25 2.25 0 0 1 7.167 22H4.333a2.25 2.25 0 0 1-2.246-2.371l.837-15.5z" fill="#626262"/><path d="M9.512 22c.6-.625.95-1.488.9-2.425L9.856 9.284l4.666-3.862A.75.75 0 0 1 15.75 6v4.24l4.98-4.781A.75.75 0 0 1 22 6v13.75A2.25 2.25 0 0 1 19.75 22H9.512zM13 20.5h5V16a1 1 0 0 0-1-1h-3a1 1 0 0 0-1 1v4.5z" fill="#626262"/></g></svg></i>
					</div>
					<span>Danh Mục</span>
				</a>
			</li>

			<li  class="sidebar-nav-item">
				<a href="index.php?sider=hard" class="sidebar-nav-link">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 32 32"><circle cx="24.5" cy="9.5" r="1.5" fill="#626262"/><path d="M17.414 22H12v-5.414l6.03-6.03A5.352 5.352 0 0 1 18 10a6 6 0 1 1 6 6a5.358 5.358 0 0 1-.556-.03zM14 20h2.586l6.17-6.17l.518.095A3.935 3.935 0 0 0 24 14a4.05 4.05 0 1 0-3.925-3.273l.095.517l-6.17 6.17z" fill="#626262"/><path d="M28 18v8H10V6h4V4H4a2.002 2.002 0 0 0-2 2v20a2.002 2.002 0 0 0 2 2h24a2.002 2.002 0 0 0 2-2v-8zM4 6h4v20H4z" fill="#626262"/></svg></i>
					</div>
					<span>Phần cứng</span>
				</a>
			</li>

			<li  class="sidebar-nav-item">
				<a href="index.php?sider=bill" class="sidebar-nav-link">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.25em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 640 512"><path d="M621.16 54.46C582.37 38.19 543.55 32 504.75 32c-123.17-.01-246.33 62.34-369.5 62.34c-30.89 0-61.76-3.92-92.65-13.72c-3.47-1.1-6.95-1.62-10.35-1.62C15.04 79 0 92.32 0 110.81v317.26c0 12.63 7.23 24.6 18.84 29.46C57.63 473.81 96.45 480 135.25 480c123.17 0 246.34-62.35 369.51-62.35c30.89 0 61.76 3.92 92.65 13.72c3.47 1.1 6.95 1.62 10.35 1.62c17.21 0 32.25-13.32 32.25-31.81V83.93c-.01-12.64-7.24-24.6-18.85-29.47zM48 132.22c20.12 5.04 41.12 7.57 62.72 8.93C104.84 170.54 79 192.69 48 192.69v-60.47zm0 285v-47.78c34.37 0 62.18 27.27 63.71 61.4c-22.53-1.81-43.59-6.31-63.71-13.62zM320 352c-44.19 0-80-42.99-80-96c0-53.02 35.82-96 80-96s80 42.98 80 96c0 53.03-35.83 96-80 96zm272 27.78c-17.52-4.39-35.71-6.85-54.32-8.44c5.87-26.08 27.5-45.88 54.32-49.28v57.72zm0-236.11c-30.89-3.91-54.86-29.7-55.81-61.55c19.54 2.17 38.09 6.23 55.81 12.66v48.89z" fill="#626262"/></svg></i>
					</div>
					<span>Hóa Đơn</span>
				</a>
			</li>
			<?php if($role==0){ ?>
			<li  class="sidebar-nav-item">
				<a href="index.php?sider=user" class="sidebar-nav-link">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 28 28"><g fill="none"><path d="M14 9a3.5 3.5 0 1 0 0 7a3.5 3.5 0 0 0 0-7z" fill="#626262"/><path d="M10.7 17c-.86 0-1.796.602-1.82 1.672c-.018.749.116 1.853.894 2.776C10.57 22.393 11.914 23 14 23s3.43-.607 4.226-1.552c.778-.923.912-2.027.895-2.776C19.096 17.602 18.16 17 17.3 17h-6.6z" fill="#626262"/><path d="M18.896 4h1.354A2.75 2.75 0 0 1 23 6.75v16.5A2.75 2.75 0 0 1 20.25 26H7.75A2.75 2.75 0 0 1 5 23.25V6.75A2.75 2.75 0 0 1 7.75 4h1.354a2.751 2.751 0 0 1 2.646-2h4.5c1.259 0 2.32.846 2.646 2zM9.104 5.5H7.75c-.69 0-1.25.56-1.25 1.25v16.5c0 .69.56 1.25 1.25 1.25h12.5c.69 0 1.25-.56 1.25-1.25V6.75c0-.69-.56-1.25-1.25-1.25h-1.354a2.751 2.751 0 0 1-2.646 2h-4.5a2.751 2.751 0 0 1-2.646-2zm1.396-.75c0 .69.56 1.25 1.25 1.25h4.5a1.25 1.25 0 1 0 0-2.5h-4.5c-.69 0-1.25.56-1.25 1.25z" fill="#626262"/></g></svg></i>
					</div>
					<span>Người dùng</span>
				</a>
			</li>
			
			<li  class="sidebar-nav-item">
				<a href="index.php?sider=admin" class="sidebar-nav-link">
					<div>
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M3 5.5A2.5 2.5 0 0 1 5.5 3h9A2.5 2.5 0 0 1 17 5.5V6H3.003v1H15a3.5 3.5 0 0 0-2.45 6c-.816 0-1.461.412-1.864.864A2.678 2.678 0 0 0 10 15.62v.32c0 .372.056.726.16 1.06H5.5A2.5 2.5 0 0 1 3 14.5v-9z" fill="#626262"/><path d="M15 13a2.5 2.5 0 1 1 2-4h-2v1h2.45a2.512 2.512 0 0 1 0 1H15v1h2c-.456.607-1.182 1-2 1z" fill="#626262"/><path d="M12.55 14c-.465 0-.855.235-1.116.529c-.26.291-.434.686-.434 1.091v.32c0 1.634 1.633 3.06 4 3.06c1.24 0 2.28-.392 2.988-1H15v-1h3.761c.148-.315.23-.653.238-1H15v-1h3.867a1.779 1.779 0 0 0-.3-.471c-.262-.294-.652-.529-1.117-.529h-4.9z" fill="#626262"/></g></svg></i>
					</div>
					<span>Nhân Viên</span>
				</a>
			</li>
			
			<?php } ?>
		</ul>
	</div>
	<!-- end sidebar -->
	<!-- main content -->
	<div class="wrapper" style=" margin-left: 0px;">
		<?php 
		if (isset($_GET['sider'])) {
			switch ($_GET['sider']) {
				case 'banner':
				if (isset($_GET['banner'])) {
					switch ($_GET['banner']) {
						case 'show':
						include ('banner/index.php');
						break;
						case 'add':
						include ('banner/add.php');
						break;
						case 'update':
						include ('banner/update.php');
						break;
						default:
						include ('banner/index.php');
						break;
					}}else{include ('banner/index.php');}
					break;
					case 'product':
					if (isset($_GET['product'])) {
						switch ($_GET['product']) {
							case 'show':
							include ('product/index.php');
							break;
							case 'add':
							include ('product/add.php');
							break;
							case 'update':
							include ('product/update.php');
							break;
							case 'detail':
							include ('product/product.php');
							break;
							default:
							include ('product/index.php');
							break;
						}}else{include ('product/index.php');}
						break;
						case 'admin':
						if (isset($_GET['admin'])) {
							switch ($_GET['admin']) {
								case 'show':
								include ('manage_admin/index.php');
								break;
								case 'add':
								include ('manage_admin/add.php');
								break;
								case 'update':
								include ('manage_admin/update.php');
								break;
								default:
								include ('manage_admin/index.php');
								break;
							}}else{include ('manage_admin/index.php');}
							break;
							case 'user':
							if (isset($_GET['user'])) {
								switch ($_GET['user']) {
									case 'show':
									include ('manage_user/index.php');
									break;
									case 'add':
									include ('manage_user/add.php');
									break;
									case 'update':
									include ('manage_user/update.php');
									break;
									default:
									include ('manage_user/index.php');
									break;
								}}else{include ('manage_user/index.php');}
								break;

								case 'bill':
								if (isset($_GET['bill'])) {
									switch ($_GET['bill']) {
										case 'show':
										include ('bill/index.php');
										break;
										case 'main':
										include ('bill/detail.php');
										break;
										case 'update':
										include ('bill/update.php');
										break;
										default:
										include ('bill/index.php');
										break;
									}}else{include ('bill/index.php');}
									break;

									case 'mfname':
									if (isset($_GET['mfname'])) {
										switch ($_GET['mfname']) {
											case 'show':
											include ('mfname/index.php');
											break;
											case 'update':
											include ('mfname/mfname-update.php');
											break;
											case 'add':
											include ('mfname/mfname-add.php');
											break;
											default:
											include ('mfname/index.php');
											break;
										}}else{include ('mfname/index.php');}
										break;
										case 'hard':
									if (isset($_GET['hard'])) {
										switch ($_GET['hard']) {
											case 'show':
											include ('hardware/index.php');
											break;
											case 'update':
											include ('hardware/update.php');
											break;
											case 'add':
											include ('hardware/add.php');
											break;
											default:
											include ('hardware/index.php');
											break;
										}}else{include ('hardware/index.php');}
										break;
										default:
										include ('product/index.php');
										break;
									}
								}else{
									include ('product/index.php');
								}
								?>
							</div>
						</body>
						<script src="index.js"></script>
						</html>

