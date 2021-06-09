 

 <?php 
 $count=0;
 if(isset($_SESSION['Cart'])&&count($_SESSION['Cart'])>0){
 	$count=count($_SESSION['Cart']);
 	?>
 	<style>
 		.nav-link:before {
 			content:attr(title);
 			position: absolute;
 			bottom: 38px;
 			left: 30px;
 			width:20px;
 			height:20px;
 			border-radius:50%;
 			background: red;
 		}
 		
 	</style>
 <?php } ?>
 <div class="height" style="z-index: 1;">
 	<div class="navbar">
 		<!-- nav left -->
 		<ul class="navbar-nav">
 			<li class="nav-item">
 				<a class="nav-link" style="padding-top: 21px;">
 					<i class="fas fa-bars" onclick="block()" ><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M2 1h12a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm12-1a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/><path fill-rule="evenodd" d="M5 15V1H4v14h1zm8-11.5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/></g></svg></i>
 				</a>
 			</li>
 			<li class="nav-item">
 				<a href="index.php" style="display: block"><img src="IMG/AT-pro-white.png" alt="ATPro logo" class="logo logo-dark"></a>
 			</li>
 		</ul>
 		<!-- end nav left -->
 		<!-- form -->
 		<form class="navbar-search" method="get" action="index.php">
 			<input type="text" name="search" class="navbar-search-input" placeholder="What you looking for...">
 			<i class="fas fa-search"><button type="submit" style="background: none; border:none;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="2em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><path d="M12.14 4.18a5.504 5.504 0 0 1 .72 6.89c.12.1.22.21.36.31c.2.16.47.36.81.59c.34.24.56.39.66.47c.42.31.73.57.94.78c.32.32.6.65.84 1c.25.35.44.69.59 1.04c.14.35.21.68.18 1c-.02.32-.14.59-.36.81s-.49.34-.81.36c-.31.02-.65-.04-.99-.19c-.35-.14-.7-.34-1.04-.59c-.35-.24-.68-.52-1-.84c-.21-.21-.47-.52-.77-.93c-.1-.13-.25-.35-.47-.66c-.22-.32-.4-.57-.56-.78c-.16-.2-.29-.35-.44-.5a5.503 5.503 0 0 1-6.44-.98c-2.14-2.15-2.14-5.64 0-7.78a5.498 5.498 0 0 1 7.78 0zm-1.41 6.36a3.513 3.513 0 0 0 0-4.95a3.495 3.495 0 0 0-4.95 0a3.495 3.495 0 0 0 0 4.95a3.495 3.495 0 0 0 4.95 0z" fill="#626262"/></svg></button></i>
 		</form>
 		<!-- end form -->
 		<!-- nav right -->
 		<ul class="navbar-nav nav-right" style="
    margin-left: 0px;
">
 			<?php 
 			$count=0;
 			if(isset($_SESSION['Cart'])){
 				$count=count($_SESSION['Cart']);
 			}
 			?>
 			<li class="nav-item mode">
 				<a class="nav-link" href="index.php?MENU=CRAT" title="<?php if($count>0&&$count<100){echo $count;}else{echo '.00';}?>">
 					<i class="fas fa-moon dark-icon"><svg id="cart" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.3em" height="1.3em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="white"><path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2a1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0a2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2a1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0a2 2 0 0 1-4 0z"/></g></svg></i>
 				</a>
 			</li>
 			<li class="nav-item ">
 				<div class="avt dropdown">
					<img src="IMG/<?php if(isset($g[0]['Img'])){if($g[0]['Img']==NULL){echo 'avatar-facebook-doc.jpg';}else{echo $g[0]['Img'];}}else{echo 'avatar-facebook-doc.jpg';}?>" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
 					<ul id="user-menu" class="dropdown-menu" >
 						<li  class="dropdown-menu-item">
 							<a href="<?php if(isset($_SESSION["user"])){echo'profile/Profile.php';}else{echo'user/FORM/register.php';} ?>" class="dropdown-menu-link">
 								<div>
 									<i class="fas fa-user-tie"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.13em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 32"><path fill="#626262" d="M.5 31.983a.503.503 0 0 0 .612-.354c1.03-3.843 5.216-4.839 7.718-5.435c.627-.149 1.122-.267 1.444-.406c2.85-1.237 3.779-3.227 4.057-4.679a.5.5 0 0 0-.165-.473c-1.484-1.281-2.736-3.204-3.526-5.416a.492.492 0 0 0-.103-.171c-1.045-1.136-1.645-2.337-1.645-3.294c0-.559.211-.934.686-1.217a.5.5 0 0 0 .243-.408C10.042 5.036 13.67 1.026 18.12 1l.107.007c4.472.062 8.077 4.158 8.206 9.324a.498.498 0 0 0 .178.369c.313.265.459.601.459 1.057c0 .801-.427 1.786-1.201 2.772a.522.522 0 0 0-.084.158c-.8 2.536-2.236 4.775-3.938 6.145a.502.502 0 0 0-.178.483c.278 1.451 1.207 3.44 4.057 4.679c.337.146.86.26 1.523.403c2.477.536 6.622 1.435 7.639 5.232a.5.5 0 0 0 .966-.26c-1.175-4.387-5.871-5.404-8.393-5.95c-.585-.127-1.09-.236-1.336-.344c-1.86-.808-3.006-2.039-3.411-3.665c1.727-1.483 3.172-3.771 3.998-6.337c.877-1.14 1.359-2.314 1.359-3.317c0-.669-.216-1.227-.644-1.663C27.189 4.489 23.19.076 18.227.005l-.149-.002c-4.873.026-8.889 4.323-9.24 9.83c-.626.46-.944 1.105-.944 1.924c0 1.183.669 2.598 1.84 3.896c.809 2.223 2.063 4.176 3.556 5.543c-.403 1.632-1.55 2.867-3.414 3.676c-.241.105-.721.22-1.277.352c-2.541.604-7.269 1.729-8.453 6.147a.5.5 0 0 0 .354.612z"/></svg></i>
 								</div>
 								<span><?php if(isset($_SESSION["user"])){echo'Hồ Sơ';}else{echo'Đăng Ký';}?></span>
 							</a>
 						</li>
 						<li  class="dropdown-menu-item">
 							<a href="<?php if(isset($_SESSION["user"])){echo'logout.php';}else{echo'user/FORM/login.php';} ?>" class="dropdown-menu-link">
 								<div>
 									<i class="fas fa-sign-out-alt"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2a9.985 9.985 0 0 1 8 4h-2.71a8 8 0 1 0 .001 12h2.71A9.985 9.985 0 0 1 12 22zm7-6v-3h-8v-2h8V8l5 4l-5 4z" fill="#626262"/></svg></i>
 								</div>
 								<span><?php if(isset($_SESSION["user"])){echo'Đăng Xuất';}else{echo'Đăng Nhập';} ?></span>
 							</a>
 						</li>
 					</ul>
 				</div>
 			</li>
 		</ul>
 		<!-- end nav right -->
 	</div>

 	<!-- reponsive -->
 	<div id="header_search">
 		<svg onclick="none()" id="bi-x"xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="2em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M11.854 4.146a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708-.708l7-7a.5.5 0 0 1 .708 0z"/><path fill-rule="evenodd" d="M4.146 4.146a.5.5 0 0 0 0 .708l7 7a.5.5 0 0 0 .708-.708l-7-7a.5.5 0 0 0-.708 0z"/></g></svg>
 		<form id="search" method="get" action="index.php?MENU=SEARCH">
 			<input type="text" id="myInput" name="search"  placeholder="What you looking for..." title="Type in a name" >
 			<button type="submit" id="icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="2em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><path d="M12.14 4.18a5.504 5.504 0 0 1 .72 6.89c.12.1.22.21.36.31c.2.16.47.36.81.59c.34.24.56.39.66.47c.42.31.73.57.94.78c.32.32.6.65.84 1c.25.35.44.69.59 1.04c.14.35.21.68.18 1c-.02.32-.14.59-.36.81s-.49.34-.81.36c-.31.02-.65-.04-.99-.19c-.35-.14-.7-.34-1.04-.59c-.35-.24-.68-.52-1-.84c-.21-.21-.47-.52-.77-.93c-.1-.13-.25-.35-.47-.66c-.22-.32-.4-.57-.56-.78c-.16-.2-.29-.35-.44-.5a5.503 5.503 0 0 1-6.44-.98c-2.14-2.15-2.14-5.64 0-7.78a5.498 5.498 0 0 1 7.78 0zm-1.41 6.36a3.513 3.513 0 0 0 0-4.95a3.495 3.495 0 0 0-4.95 0a3.495 3.495 0 0 0 0 4.95a3.495 3.495 0 0 0 4.95 0z" fill="#626262"/></svg></button>
 		</form>

 		<div class="menu vertical">
 			<ul id="vetical-none">
 				<li><a href="index.php?MENU=HOME" >HOME</a></li>
 				<?php 
 				$menu=returnnn("SELECT * FROM tbl_mfname WHERE Status='0'");
 				foreach ($menu as $key) {?> 
 					<li><a  href="index.php?MENU=MF&MF=<?php echo $key['MfName'] ?>"><?php echo $key['MfName']?></a></li>
 				<?php } ?>
 			</ul>
 		</div>

 	</div>

 	<!-- menu -->
 	<div class="menu horizontal">
 		<ul>
 			<li><a href="index.php?MENU=HOME">HOME</a></li>
 			<?php 
 			$menu=returnnn("SELECT * FROM tbl_mfname WHERE Status='0'");
 			foreach ($menu as $key) {?> 
 				<li><a href="index.php?MENU=MF&MF=<?php echo $key['MfName'] ?>" ><?php echo $key['MfName']?></a></li>
 			<?php } ?>
 		</ul>
 	</div>
 </div>
 <!-- slider shower -->
 <?php 
 $banner=returnnn('SELECT * FROM tbl_banner');
 ?>
 <div class="slidershow">
 	<div id="slidershow-img" onmousemove="classclick()">
 		<span class ="click left" onclick="myVar = setTimeout(plusDivs, 50,-1)">&#10094;</span>
 		<?php foreach ($banner as $key) {?>
 			<img class="mySlides" src="IMG/<?php echo $key['LinkBanner'] ?>">
 		<?php  } ?>
 		<span class="click right" onclick="myVar = setTimeout(plusDivs, 50,1)">&#10095;</span>
 	</div>	
 </div>

 <script>
 	window.onclick = function(event) {
 		openCloseDropdown(event)
 	}
 	function openCloseDropdown(event) {
 		var toggle = event.target.dataset.toggle
 		var content = document.getElementById(toggle)
 		content.classList.toggle('dropdown-expand')
 	}
 	function block() {
 		var block = document.getElementById('header_search');
 		block.style.display="block";
 	}
 	function none() {
 		var block = document.getElementById('header_search');
 		block.style.display="none";
 	}
 	function classclick() {
 		var block = document.getElementById('slidershow-img');
 		block.style.display="block";
 	}


 	var slideIndex = 1;
 	showDivs(slideIndex);

 	function plusDivs(n) {
 		showDivs(slideIndex += n);
 	}
 	setInterval(plusDivs, 3000,1);

 	function showDivs(n) {
 		var i;
 		var x = document.getElementsByClassName("mySlides");
 		if (n > x.length) {slideIndex = 1}
 			if (n < 1) {slideIndex = x.length}
 				for (i = 0; i < x.length; i++) {
 					x[i].style.display = "none";  
 				}
 				x[slideIndex-1].style.display = "block";  
 			}
 		</script>

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