<?php 
$sesscart=(isset($_SESSION['Cart']))? $_SESSION['Cart']:[];
// print_r($sesscart);
?>
<style>
	#id{


	}
	section {
		display: block;
		width: 600px;
		margin: auto;
		min-width: 0;
	}
	.yourCart {
		display: block;
		overflow: hidden;
	}
	.buymore {
		float: left;
		overflow: hidden;
		font-size: 14px;
		color: #288ad6;
		line-height: 16px;
		padding: 10px;
	}
	a {
		text-decoration: none;
	}
	.buymore:before {
		content: "";
		width: 8px;
		height: 8px;
		border-top: 1px solid #288ad6;
		border-left: 1px solid #288ad6;
		display: inline-block;
		vertical-align: middle;
		margin: 0 3px 2px 0;
		transform: rotate(-45deg);
	}
	.yourCart span {
		float: right;
		padding: 9px 10px;
	}

	.middleCart{
		
		display: block;
		background: #fff;
		box-shadow: 0 0 18px rgba(0,0,0,.12);
		border-radius: 2px;	
	}
	
	.listing-cart {
		display: flex;
		flex-flow: column wrap;
		margin-bottom: 0px;
		padding-left: 0px;

	}
	.section ol, ul {
		list-style: none;
	}
	.section li{
		border-bottom: 1px black solid;
		border-width: 90%;
	}
	.listing-cart .product-item {
		display: block;
		padding: 10px 30px;
		width: 100%;
		box-sizing: border-box;
	}

	.listing-cart .product-item .imgsp {
		float: left;
		width: 16%;
	}

	#app img.lazyloaded {
		opacity: 1;
	}
	.listing-cart .imgsp a img {
		width: 75px;
		margin: auto;
	}
	.listing-cart .imgsp a, .listing-cart .imgsp a img {
		display: block;
		overflow: hidden;
	}
	img {
		border: 0;
	}


	aside {
		display: block;
	}
	.footCart {
		display: block;
		overflow: hidden;
		color: #999;
		font-size: 15px;
		text-align: center;
		padding: 20px 0;
	}
	.name-price{
		margin-top: 6px;
		margin-left: 78px;
		float: left;
		width: 141px;
	}
	.listing-cart .name-price a {
		float: left;
		width: 80%;
		font-size: 14px;
		color: #333;
		font-weight: 700;
		text-overflow: ellipsis;
		overflow: hidden;
	}

	.listing-cart .imgsp button {
		display: block;
		overflow: hidden;
		margin: 15px auto 0;
		border: 0;
		background: #fff;
		color: #999;
		font-size: 12px;
		cursor: pointer;
	}
	.total-price{
		margin-top: 5px;
		float: right;
	}
	.total-price span{
		font-size: 14px;
		color: #333;
		font-weight: 700;
	}
</style>
<div id="id">
	<?php 
	if(!isset($_SESSION["user"])){
		?>
		<div>
			<a href="user/FORM/login.php"><h1>HÃY ĐĂNG NHẬP ĐỂ CÓ THỂ MUA HÀNG</h1></a>
		</div>
	<?php }else{ ?>
		<section class="section">
			<div class="yourCart top-content">
				<a href="index.php" class="buymore">Mua thêm sản phẩm khác</a><span>Giỏ hàng của bạn</span>
			</div>

			<div class="middleCart">
				<ul class="listing-cart">
					<?php
					$summonney=0;
					foreach ($sesscart as $key => $value) :
						?>
						<?php 
						$idd=$value['id'];
						$check=MANG("SELECT*FROM tbl_products WHERE ProductID ='$idd'");
						$num=$check['Number'];
						?>
						<li class="product-item">
							<div class="imgsp"><img src="IMG/<?php echo $value['img'] ?>" alt="" style="width: 121px;height: 90px;">
								<a href="user/MAIN/cart-pocess.php?id=<?php echo $value['id'] ?>&action=delete" style="margin-left: 18px;"><button style="margin-left: 23px;margin-top: 4px;">Xóa </button></a>
							</div>

							<div class="name-price">
								<div class="name-container">
									<a  class="product-item__name"> <?php echo $value['name'] ?> </a>
								</div>
								<span> Gía:<?php echo number_format($value['price'])?>đ/1sp</span><br>
								<span>Số Lượng:</span>
								<form action="user/MAIN/cart-pocess.php" method="get">
									<input type="hidden" value="update" name="action">
									<input type="hidden" value="<?php echo $value['id'] ?>" name='id'>
									<input type="number" style="width: 50px;" value="<?php if($num=='0'){echo "0";}else{ echo $value['quantity'];} ?>" name='count' <?php if($num=='0'){echo "readonly";} ?>>
									<?php if($num!='0'){ ?>
										<button type="submit" >cập nhật</button>
									<?php } ?>
								</form>
							</div>

							<div class="total-price">
								<span>Thành tiền</span><br>
								<p> <?php if($num=='0'){$sum=0;}else{$sum=$value['price'] * $value['quantity'];}echo number_format($sum) ?>đ </p><br>
							</div>
							<div style="clear:both"></div>
							<?php 
							if($num=='0'){
								?>
								<div style="width: 100%;margin-top:5px;color: red">Cảnh báo: Sản phẩm này vừa hết hàng bạn sẽ không đặt được nữa </div>
							<?php } ?>
						</li>
						<?php 
						$summonney=$summonney+$sum;
					endforeach
					?>
					<div class="total" style="border-bottom: 0.5px black solid;height: 50px;line-height: 50px;">
						<span style="float:left;margin-left: 40px;color:red,font-size: 16px;font-weight: 700;">Tổng Tiền:</span>
						<span style="float:right;margin-right: 27px;"><?php echo number_format($summonney) ;?></span>
					</div>
				</ul>
				<form method="post" action="user/MAIN/pay-process.php">
					<table  align="center" width="100%" cellspacing="0px" cellpadding="5px"  style="border-color: white">
						<tr style="text-align: center;height: 50px;">
							<th colspan="2">ĐIỀN THÔNG TIN ĐỂ ĐẶT HÀNG</th>
						</tr>
						<?php foreach ($g as $key0 => $value0) {?>
							<input type="hidden" name="id_custom" size="10" value="<?php echo $value0['CustomerID'];?>">
							<tr>
								<td align="right">Họ Và Tên :</td>
								<td>
									<input type="text" name="name" size="30" value="<?php echo $value0['CustomerName'];?>">*
								</td>
							</tr>

							<tr>
								<td align="right">Địa Chỉ :</td>
								<td>
									<input type="text" name="adress" size="30" placeholder="nhap dia chi" required="">*
								</td>
							</tr>

							<tr>
								<td align="right">Số Điện Thoại :</td>
								<td>
									<input type="number" name="phone" size="20" placeholder="nhap so dt" required="">*
								</td>
							</tr>
							<tr>
								<td align="right">Yêu Cầu :</td>
								<td>
									<textarea code="20"></textarea>
								</td>
							</tr>
						<?php } ?>
						<tr>
							<td align="center" colspan="2">
								<?php if(!empty($_SESSION['Cart'])){ ?>
									<button type="reset">Hủy Đăng Ký</button>
									<button type="submit" name="pay">Đặt Hàng</button>
								<?php }else{echo "<h2>Chưa có gì trong giỏ hàng</h2>";}?>
							</td>
						</tr>
					</table>
				</form>
			</div>


			<aside>
				<small class="footCart">Bằng cách đặt hàng, bạn đồng ý với Điều khoản sử dụng của ATPro</small>
			</aside>
			
		</section>
	<?php } ?>
</div>
<?php if(isset($_GET['cart'])&&$_GET['cart']==0){ ?>
	<script>
		window.alert("Bạn đã thêm vào giỏ hàng thành công!!");
	</script>
<?php } ?>
<?php if(isset($_GET['success'])&&$_GET['success']==1){ ?>
	<script>
		window.alert("Bạn đã đặt hàng thành công!!");
	</script>
	<?php } ?>