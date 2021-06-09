<?php 
require_once("funtion.php");
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
	<title>LAPTOP ATPro</title>
	<link rel="icon" type="image/png" href="IMG/AT-pro-logo.png"/>
	<link rel="stylesheet" type="text/css" href="user/MAIN/style.css">
	<link rel="stylesheet" type="text/css" href="user/FOOTER/footer.css">
	<link rel="stylesheet" href="user/HEADER/header.css">
	<style>
		* {
			box-sizing: border-box;
		}
		body {
			font-family: 'Roboto', sans-serif;
			margin: 0;
			padding: 0;
			/* background: #ffe7ab; */
		}
		.overflow{
			margin:0;
			padding: 0;
		}
		.height{
			width: 100%;
			position: fixed;
			top: 0;
			z-index: 999;
		}
		.crossbar::-webkit-scrollbar {
			width: 9px;
			height: 9px;
			display: none;
		}
		.crossbar::-webkit-scrollbar-thumb {
			background-color: rgba(0,0,0,0.4);
			border-radius: 10rem;
			border: 1px solid #23242D;
		}
		.main{
			width: 95%;
			margin: auto;
			margin-top: 5px;
		}
		.item{

		}
		.siderbar{
			border-radius: 10px;
			border: 1px solid black;
			background-color: rgba(255, 255, 255, 0.8);
			/* width: 0px; */
		}
		.border{
			margin-left: 6px;
			margin-right: 6px;

		}
		.mau{
			
			height: 280px;
			color: red;
			border-radius: 10px;
			margin-bottom: 5px;
			text-align: center;
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
		.pagination a:hover{background-color: #ddd;}

		.name>h1{
			text-align: center;
			margin-top:0px;
			margin-bottom: 0px; 

		}
		.ka{ 
			border-radius: 10px;
			text-align: center
		}
		.tittle{
			margin: 0;
			background: green;
			border-radius: 10px;
			margin-bottom: 5px;
			background:#FA8072;
		}

		.sidebar-expand .h{
			display: block;
			position: fixed;
			left: 8px;
			top: 68px;
		}
		.x{
			display: none;
		}

		.card {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
			overflow: hidden;
			white-space: nowrap;
		}
		.container {
			padding: 0 16px;
		}
		.container>p,h2{
			color: black;
		}
		.title {
			color: grey;
		}

		.button {
			border: none;
			outline: 0;
			display: inline-block;
			padding: 8px;
			color: white;
			background-color: #000;
			text-align: center;
			cursor: pointer;
			width: 50%;
			border-radius: 8px;
		}

		.button:hover {
			background-color: #555;
		}
		.check{
			padding-top: 5px;
		}
		.check>form{
			/* margin-left: 16px; */
		}
		.card>p{
			text-overflow: ellipsis; 
			margin-left: 3px;
		}

		details > summary {
			padding: 4px;
			width: 190px;
			background-color: #eeeeee;
			border: none;
			box-shadow: 1px 1px 2px #bbbbbb;
			cursor: pointer;
		}
		@media only screen and (max-width: 600px) {
			.x{
				display: block;
			}
		}
	</style>
</head>
<body class="crossbar">
	<?php include("user/HEADER/header.php"); ?>
	<?php 
	if(isset($_GET['search'])){ 

		$trang=1;
		if(isset($_GET['trang'])){
			$trang=$_GET['trang'];
		}
		if (isset($_GET['search'])) {
			$HA=$_GET['search'];
			$dem=counttt("SELECT * FROM `tbl_products`JOIN tbl_mfname ON tbl_products.MfName=tbl_mfname.IdName WHERE ProductName LIKE ('%$HA%') and tbl_mfname.Status='0'");
		}
		$sotin1trang=12;
		$tongsotin=$dem;
		$sotrang=ceil($tongsotin/$sotin1trang);
		$from=($trang-1)*$sotin1trang;


		if (isset($_GET['search'])) {
			$showww="SELECT * FROM `tbl_products`JOIN tbl_mfname ON tbl_products.MfName=tbl_mfname.IdName WHERE ProductName LIKE ('%$HA%') and  tbl_mfname.Status='0' LIMIT $from,$sotin1trang";
		}
		
		?>
		<div class="grid main">
			<div class="row tittle">
				<!-- <div class="col l-0 m-0 c-1 ka" onclick="collapseSidebar()"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="2em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg); margin-top: 2px;" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M2 1h12a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm12-1a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/><path fill-rule="evenodd" d="M5 15V1H4v14h1zm8-11.5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/></g></svg></div> -->
				<div class="col l-12 m-12 c-12 name"><h1> Tìm được: <?php echo $dem;?> sản phẩm có tên <?php echo $HA; ?></h1></div>
			</div>
			
			<div class="row">
				<div class="col l-12 m-12 c-12 g" style=" padding-left: 0px;padding-right: 0px;">
					<div class="item">
						<div class="border">
							<div class="grid">
								<div class="row">
									<?php
									$show2=returnnn("$showww");
									?>
									<?php 
									foreach ($show2 as $key2) {
										?>
										<div class="col l-2-4 m-4 c-6">
											<div class="mau card">
												<img src="IMG/<?php echo $key2['Img'] ?>" alt="Jane" style="width:90%;height: 150px; margin-top: 2px;" ><br>
												<div class="container">
													<p class="title" style="margin-top: 3px;margin-bottom: 3px; text-overflow:clip"><?php echo $key2['ProductName'] ?></p>
													<p style="margin-top: 3px;margin-bottom: 3px;"><?php echo number_format($key2['Price']); ?>đ</p><br>
													<form action="index.PHP?MENU=PRODUCT"  method="post">
														<input type="hidden" name="pr" value="<?php echo $key2['ProductID'] ?>">
														<button class="button" type="submitpr" name="submitpr" >Chi tiết</button>
													</form><!-- <button class="button">Contact</button> -->
												</div>
											</div>
										</div>
									<?php } ?>
								</div>
							</div>
						</div>	
					</div>
					<div class="pagination">
						<?php if($trang>2){ ?>
							<a href="index.php?<?php if(isset($_GET['ram']) && isset($_GET['ssd']) && isset($_GET['cpu']) && isset($_GET['screen'])){ echo "ram=".$ram."&ssd=".$ssd."&cpu=".$cpu."&screen=".$sceen;} ?>&search=<?php echo $HA;?>&trang=1">Đầu</a>
						<?php } ?>

						<?php if($trang>1){ ?>
							<a href="index.php?<?php if(isset($_GET['ram']) && isset($_GET['ssd']) && isset($_GET['cpu']) && isset($_GET['screen'])){ echo "ram=".$ram."&ssd=".$ssd."&cpu=".$cpu."&screen=".$sceen;} ?>&search=<?php echo $HA;?>&trang=<?php echo $trang-1;?>">&laquo;</a>
						<?php } ?>

						<?php for($i=1;$i<=$sotrang;$i++) {?>
							<?php  if($i> $trang-2 && $i< $trang+2){ ?>
								<a href="index.php?<?php if(isset($_GET['ram']) && isset($_GET['ssd']) && isset($_GET['cpu']) && isset($_GET['screen'])){ echo "ram=".$ram."&ssd=".$ssd."&cpu=".$cpu."&screen=".$sceen;} ?>&search=<?php echo $HA;?>&trang=<?php echo $i;?>"><?php echo"$i";?></a>
							<?php } ?>
						<?php } ?>

						<?php if($trang<$sotrang-1){ ?>
							<a href="index.php?<?php if(isset($_GET['ram']) && isset($_GET['ssd']) && isset($_GET['cpu']) && isset($_GET['screen'])){ echo "ram=".$ram."&ssd=".$ssd."&cpu=".$cpu."&screen=".$sceen;} ?>&search=<?php echo $HA;?>&trang=<?php echo $trang+1;?>">&raquo;</a>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
		<script>
			const body = document.getElementsByTagName('body')[0]
			function collapseSidebar() {
				body.classList.toggle('sidebar-expand')
			}
		</script>
		<?php 
	}else{
		$main=returnnn("SELECT * FROM tbl_mfname");
		if (isset($_GET['MENU'])) {
			switch ($_GET['MENU']) {
				case 'HOME':
				include ('user/MAIN/Home.php');
				break;
				case 'CRAT':
				include ('user/MAIN/cart.php');
				break;
				case 'PRODUCT':
				include ('user/MAIN/product.php');
				break;
				case 'MF':
				if (isset($_GET['MF'])) {
					foreach ($main as $key) {
						switch ($_GET['MF']){
							case $key['MfName']:
							include ('user/MAIN/DELL.php');
							break;
						}
					}
				}else{
					include ('user/MAIN/Home.php');
				}
				if($_GET['MF']==''){
					include ('user/MAIN/Home.php');
				}
				break;
				case 'SEARCH':
				include ('user/MAIN/DELL.php');
				break;
				default:
				include ('user/MAIN/Home.php');
				break;
			}
		}else{
			include ('user/MAIN/Home.php');
		}
	}
	?>
	<?php  include("user/FOOTER/footer.php");?>
</body>
</html>
