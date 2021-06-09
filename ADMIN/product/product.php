<?php 

if(isset($_GET['id'])){
	$pr=$_GET['id'];
	$show3=returnnn("SELECT * FROM 	tbl_img WHERE ProductID='$pr'");
	$show4=returnnn("SELECT * FROM 	tbl_products WHERE ProductID='$pr'");
	?>
	<link rel="stylesheet" type="text/css" href="../user/MAIN/style.css">
	<style>
		.div{
			/* margin: 20px; */
			margin-left: 50px;
			background: white;
		}
		.show{
			height: 800px;
		}
		.list{
			overflow-x: auto;
			white-space: nowrap;
		}
		.list>p{
			margin-left: 6px;
			border-bottom: 0.8px gray solid;
			width: 98%;
			min-height:50px;
			margin-bottom: 10px;
			white-space: normal;
			word-break: break-word;
		}
		.sell{
			text-align: center;
			height: 50px;
			width: 80%;
			margin: auto;
			display:block;
			margin-bottom: 5px;
			border: none;
		}
		.conntent{
			height: 615px;
			border: 1px solid black;
			overflow: hidden;
		}

		.show img {
			vertical-align: middle;
			height: 200px;
		}
		.container {
			position: relative;
			height: 250px;
		}
		.mySlide {
			height: 600px;
			display: none;
			margin-bottom: 3px;
		}
		.prev,
		.next {
			position: absolute;
			top: calc(130%);
			width: auto;
			padding: 16px;
			margin-top: -30px;
			color: red;
			font-weight: bold;
			font-size: 20px;
			border-radius: 0 3px 3px 0;
			user-select: none;
			-webkit-user-select: none;
		}
		.next {
			right: 0;
			border-radius: 3px 0 0 3px;
		}
		.prev:hover,
		.next:hover {
			background-color: rgba(0, 0, 0, 0.8);
		}
		.rowww{
			overflow-x: auto;
			white-space: nowrap;
			scroll-snap-type: x mandatory;
			width: 100%;

		}
		.rowww div {
			display: inline-block;
			width: 16.66%;
			scroll-snap-align: start;
		}
		.rowww::-webkit-scrollbar {
			width: 9px;
			height: 9px;
		}
		.rowww::-webkit-scrollbar-thumb {
			background-color: rgba(0,0,0,0.4);
			border-radius: 10rem;
			border: 1px solid #23242D;
		}
		.demo {
			opacity: 0.6;
		}
		.active,
		.demo:hover {
			opacity: 1;
		}

		.overlay{
				position: fixed;
				top: 0;
				bottom: 0;
				right: 0;
				left: 0;
				width: 5000px;
				background: rgba(0, 0, 0, 0.5); 
				z-index: 10000;
				display: none;
			}

			.detail{
				position: fixed;
				top: 0;
				right: 0;
				bottom: 0;
				width: 630px;
				background: white;
				z-index: 10001;
				transform: translateX(100%);
			}
			.input{
				display: none;
			}

			.input:checked ~ .overlay{
				display: block;
			}
			.input:checked ~ .detail{
				transform: translateX(-50%);
			}

			.detail::-webkit-scrollbar {
				width: 9px;
				height: 9px;
			}
			.detail::-webkit-scrollbar-thumb {
				background-color: rgba(0,0,0,0.4);
				border-radius: 10rem;
				border: 1px solid #23242D;
			}
			.times{
				position: fixed;
				top: 0;
				right: 0;
				background: white;
				height: 75px;
				width: 75px;
			}
		.form-group>svg{
			width: 23px;
			height: 23px;
			margin: 20px;
		}
		.form-group>a{
			display: inline-block;
			margin-right: 20px;
			width: 80px;
			height: 30px;
			line-height: 30px;
			background: tomato;
			border-radius: 8px;
		}
		
	</style>
	<div class="div">
			<?php foreach ($show4 as $key4) { ?>
				<div class="header"><h1 style="margin-left: 29px;"><?php echo $key4['ProductName'] ?></h1></div>
			<?php } ?>
			<input type="checkbox" id="input" class="input">
			<div class="grid">
				<div class="row if">
					<div class="col l-7 m-7 c-12">
						<div class="show">
							<div class="container">
								<?php 
								foreach ($show3 as $key3) {
									?>
									<div class="mySlide">
										<img src="../IMG/<?php echo $key3['LinkImg'] ?>" style="width:100%;height: 100%;">
									</div>

								<?php } ?>
								
								<a class="prev" onclick="plusSlides(-1)">❮</a>
								<a class="next" onclick="plusSlides(1)">❯</a>

								

								<div class="rowww">
									<?php 
									$grow=1;
									foreach ($show3 as $key3) {		
										?>
										<div class="column">
											<img class="demo cursor" src="../IMG/<?php echo $key3['LinkImg'] ?>" style="width:100%;height: 100px;" onclick="currentSlide( <?php echo $grow++; ?>)" alt="The Woods">
										</div>
									<?php } ?>
								</div>
							</div>

						</div>
					</div>
					<div class="col l-5 m-5 c-12">
						<h2 style="text-align: center">Thông số kỹ thuật</h2>
						
						<div class="list">
							<?php $show5=returnnn("SELECT * FROM `category`"); ?>
							<?php foreach ($show5 as $key5) { ?>
								<p><big><b><?php echo $key5['name_category']  ?>:</b></big>
									<?php 
										$id_category=$key5['id_category'];
										$show6=returnnn("SELECT *FROM category INNER JOIN attribute ON `category`.`id_category` = `attribute`.`Category` INNER JOIN attribute_detail ON `attribute`.`id_attribute`=`attribute_detail`.`id_attribute` WHERE Category='$id_category' AND status='1' AND id_product ='$pr'");
										foreach ($show6 as $key6) {
											echo $key6['values'].",";
										}
									 ?>
								</p>
								<?php } ?>
								<button class="sell" style="background: #3366CC;"><label for="input" style="border: none;"><p style="width: 441px;height: 50px;border: none;margin-top: 0px; margin-bottom: 0px;line-height: 50px;">XEM CẤU HÌNH CHI TIẾT</p></label></button>
						</div>
					
				</div>
			</div>
		</div>
		<div class="mota">
				
				<div class="conntent">
					<h1>Mô tả chi tiết nhất về sản phẩm này</h1>
					<?php echo $key4['PI']  ?></div>
			</div>
			<button onclick="kaka()">xemthem</button>
		<label class="overlay" for="input">
				<div class="times" style="text-align: center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="3em" height="3em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path d="M13.41 12l4.3-4.29a1 1 0 1 0-1.42-1.42L12 10.59l-4.29-4.3a1 1 0 0 0-1.42 1.42l4.3 4.29l-4.3 4.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l4.29-4.3l4.29 4.3a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.42z" fill="#626262"/></svg><p style="margin-top: 0px; margin-bottom: 0px;text-align: center">Đóng</p></div>
			</label>
	<!-- <label class="times" for="input">
			
	</label> -->
	<nav class="detail" style="overflow-y: auto">
		
		<div class="list" >
			<h2 style="text-align: center">Thông số kỹ thuật chi tiết</h2>
			
			<?php foreach ($show5 as $key5) { ?>
				<p style="background: gray; line-height: 50px;"><big><b><?php echo $key5['name_category'] ?></b></big></p>
				<?php 
				$id_category=$key5['id_category'];
			$show7=returnnn("SELECT *FROM category INNER JOIN attribute ON `category`.`id_category` = `attribute`.`Category` INNER JOIN attribute_detail ON `attribute`.`id_attribute`=`attribute_detail`.`id_attribute` WHERE Category='$id_category' AND status!='2'AND id_product ='$pr'");
			?>
			<?php foreach ($show7 as $key7) {?>
			<p><big><b><?php echo $key7['name_attribute'] ." "?>:</b></big><?php echo $key7['values'] ;?></p>
			<?php } }?>

		</div>
	</nav>
		<div class="form-group" style="text-align: center">
			<a href="index.php?sider=product&product=update&id=<?php echo $pr?>">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
			</a>
			<a href="product/delete.php?id=<?php echo $pr?>" onclick="return confirm('ARE YOU SURE?')">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
			</a>
		</div>
	</div>			
	<script>
		var Index = 1;
		showSlides(Index);

		function kaka(){
		var kaka= document.getElementById("kaka");
		kaka.style.height="auto";
	}

		function plusSlides(n) {
			showSlides(Index += n);
		}
		setInterval(plusSlides,3000,1);
		function currentSlide(n) {
			showSlides(Index = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlide");
			var dots = document.getElementsByClassName("demo");
			if (n > slides.length) {Index = 1}
				if (n < 1) {Index = slides.length}
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";
					}
					for (i = 0; i < dots.length; i++) {
						dots[i].className = dots[i].className.replace(" active", "");
					}
					slides[Index-1].style.display = "block";
					dots[Index-1].className += " active";
				}
			</script>
		<?php }?>
		