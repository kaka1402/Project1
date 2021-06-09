<?php 
$ram="";
$ssd="";
$cpu="";
$screen="";
if(isset($_GET['ram'])){
	$ram=$_GET['ram'];
	$ssd=$_GET['ssd'];
	$cpu=$_GET['cpu'];
	$screen=$_GET['screen'];
}

$trang=1;
if(isset($_GET['trang'])){
	$trang=$_GET['trang'];
}
if (isset($_GET['MF'])) {
	$HA=$_GET['MF'];
	$pick=returnnn("SELECT * FROM tbl_mfname WHERE 	MfName='$HA' and  Status='0'");
	foreach ($pick as $key ) {
		$pass=$key['IdName'];
	}
	// $ha="SELECT id_product,ProductName,`tbl_products`.`Status`,Number,MfName,Price,Img,Status,
	// 	max(case when name_attribute = 'Công nghệ CPU' then `values` else 0 end) as cpu,
	// 	max(case when name_attribute = 'RAM' then `values` else 0 end) as ram,
	// 	max(case when name_attribute = 'Ổ cứng' then `values` else 0 end) as ssd,
	// 	max(case when name_attribute = 'Kích thước màn hình' then `values` else 0 end) as screen
	// 	FROM  attribute_detail  INNER JOIN attribute ON `attribute`.`id_attribute`=`attribute_detail`.`id_attribute`
	// 	INNER JOIN tbl_products on `id_product`=tbl_products.ProductID WHERE MfName=('$pass')AND Status='0' GROUP BY id_product
	// 	HAVING RAM LIKE ('%$ram%') AND cpu LIKE ('%$cpu%') AND ssd LIKE ('%$ssd%')AND screen LIKE ('%$screen%')";
	// 	echo $ha;
	$dem=counttt("SELECT id_product,ProductName,`tbl_products`.`Status`,Number,MfName,Price,Img,
		max(case when name_attribute = 'Công nghệ CPU' then `values` else 0 end) as cpu,
		max(case when name_attribute = 'RAM' then `values` else 0 end) as ram,
		max(case when name_attribute = 'Ổ cứng' then `values` else 0 end) as ssd,
		max(case when name_attribute = 'Kích thước màn hình' then `values` else 0 end) as screen
		FROM  attribute INNER JOIN  attribute_detail  ON `attribute`.`id_attribute`=`attribute_detail`.`id_attribute`
		INNER JOIN tbl_products on `id_product`=tbl_products.ProductID WHERE MfName=('$pass') GROUP BY id_product
		HAVING RAM LIKE ('%$ram%') AND cpu LIKE ('%$cpu%') AND ssd LIKE ('%$ssd%')AND screen LIKE ('%$screen%')AND tbl_products.Status='0'");
}

$sotin1trang=5;
$tongsotin=$dem;
$sotrang=ceil($tongsotin/$sotin1trang);
$from=($trang-1)*$sotin1trang;
?>
<?php 
if (isset($_GET['MF'])) {
	$showww="SELECT id_product,ProductName,`tbl_products`.`Status`,Number,MfName,Price,Img,
	max(case when name_attribute = 'Công nghệ CPU' then `values` else 0 end) as cpu,
	max(case when name_attribute = 'RAM' then `values` else 0 end) as ram,
	max(case when name_attribute = 'Ổ cứng' then `values` else 0 end) as ssd,
	max(case when name_attribute = 'Kích thước màn hình' then `values` else 0 end) as screen
	FROM  attribute INNER JOIN  attribute_detail ON `attribute`.`id_attribute`=`attribute_detail`.`id_attribute`
	INNER JOIN tbl_products on `id_product`=`tbl_products`.`ProductID` WHERE MfName=('$pass') GROUP BY id_product
	HAVING RAM LIKE ('%$ram%') AND cpu LIKE ('%$cpu%') AND ssd LIKE ('%$ssd%')AND screen LIKE ('%$screen%')AND tbl_products.Status='0' LIMIT $from,$sotin1trang";
	// echo $showww;
}
?>
<style>
	.main{
		width: 95%;
		margin: auto;
		margin-top: 5px;
	}
	.item{

	}
	.siderbar{
		border-radius: 10px;
		border: none;
		background-color: #fff;
		/* width: 0px; */
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
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

<div class="grid main">
	<div class="row tittle">
		<div class="col l-0 m-0 c-1 ka" onclick="collapseSidebar()"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="2em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg); margin-top: 2px;" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M2 1h12a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm12-1a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/><path fill-rule="evenodd" d="M5 15V1H4v14h1zm8-11.5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5zm0 3a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/></g></svg></div>
		<div class="col l-12 m-12 c-11 name"><h1><?php echo $_GET["MF"]; ?></h1></div>
	</div>
	
	<div class="row">
		<div class="col l-2 m-2 c-0 h">
			<div class="siderbar" >
				<div class="x" onclick ="collapseSidebar()">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="2em" height="3em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg); float:right;" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><g fill="#626262"><path fill-rule="evenodd" d="M11.854 4.146a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708-.708l7-7a.5.5 0 0 1 .708 0z"/><path fill-rule="evenodd" d="M4.146 4.146a.5.5 0 0 0 0 .708l7 7a.5.5 0 0 0 .708-.708l-7-7a.5.5 0 0 0-.708 0z"/></g></svg>
				</div>
				<div class="check">
					<h1 style="text-align: center;">BỘ LỌC</h1>
					<form method="get" action="">
						<input type="hidden" name="MF" value="<?php echo $HA ?>">
						<select name="ram" style="width: 100%;">
							<option value="">--Chọn RAM--</option>
							<option value="4 GB" <?php if($ram==='4 GB'){echo "selected";} ?>>4GB</option>
							<option value="8 GB" <?php if($ram==='8 GB'){echo "selected";} ?>>8GB</option>
							<option value="16 GB" <?php if($ram==='16 GB'){echo "selected";} ?>>16GB</option>
						</select><br/>
						<select name="ssd" style="width: 100%;">
							<option value="" >--Chọn SSD--</option>
							<option value="128" <?php if($ssd==='128'){echo "selected";} ?>>128GB</option>
							<option value="256" <?php if($ssd==='256'){echo "selected";} ?>>256GB</option>
							<option value="512" <?php if($ssd==='512'){echo "selected";} ?>>512GB</option>
							<option value="1TB" <?php if($ssd==='1TB'){echo "selected";} ?>>1TB</option>
						</select><br/>
						<select name="cpu" style="width: 100%;">
							<option value="">--Chọn CPU--</option>
							<option value="i3" <?php if($cpu==='i3'){echo "selected";} ?>>i3</option>
							<option value="i5" <?php if($cpu==='i5'){echo "selected";} ?>>i5</option>
							<option value="i7" <?php if($cpu==='i7'){echo "selected";} ?>>i7</option>
							<option value="M1" <?php if($cpu==='M1'){echo "selected";} ?>>M1</option>
							<option value="AMD" <?php if($cpu==='AMD'){echo "selected";} ?>>AMD</option>
						</select><br/>
						<select name="screen" style="width: 100%;">
							<option value="">--Chọn màn hình--</option>
							<option value="13.3" <?php if($screen==='13.3'){echo "selected";} ?>>13.3 INCH</option>
							<option value="14" <?php if($screen==='14'){echo "selected";} ?>>14 INCH</option>
							<option value="15.6" <?php if($screen==='15.6'){echo "selected";} ?>>15.6 INCH</option>
						</select><br/>
						<button class="button" type="submit" value="MF" name="MENU" style="margin-left:30px;margin-top: 10px;margin-bottom: 10px; border-radius: 10px;">tim</button>
					</form>
				</div>
			</div>
		</div>

		<div class="col l-10 m-10 c-12 g" style=" padding-left: 0px;padding-right: 0px;">
			<div class="item">
				<div class="border">
					<div class="grid">
						<div class="row">
							<?php
							$show2=returnnn("$showww");
							?>
							<?php 
							if($show2==!NULL){
							foreach ($show2 as $key2) {
								?>
								<div class="col l-3 m-4 c-6">
									<div class="mau card">
										<img src="IMG/<?php echo $key2['Img'] ?>" alt="Jane" style="width:90%;height: 150px; margin-top: 2px;" ><br>
										<div class="container">
											<p class="title" style="margin-top: 3px;margin-bottom: 3px; text-overflow:clip"><?php echo $key2['ProductName'] ?></p>
											<p style="margin-top: 3px;margin-bottom: 3px;"><?php echo number_format($key2['Price']); ?>đ</p>
											<?php if($key2['Number']>0){ ?><p style="color: green;margin-top: 3px;margin-bottom: 3px;">Còn hàng</p><?php }else{ ?><p style="color:red;margin-top: 3px;margin-bottom: 3px;">Hết hàng</p><?php } ?>
											<form action="index.PHP?MENU=PRODUCT"  method="post">
												<input type="hidden" name="pr" value="<?php echo $key2['id_product'] ?>">
												<button class="button" type="submitpr" name="submitpr" >Chi tiết</button>
											</form><!-- <button class="button">Contact</button> -->
										</div>
									</div>
								</div>
							<?php }}else{echo "<h1>KHÔNG CÓ SẢN PHẨM NÀO ĐỂ HIỂN THỊ</h1>";} ?>
						</div>
					</div>
				</div>	
			</div>
			<div class="pagination">
				<?php if($trang>2){ ?>
					<a href="index.php?MENU=MF&MF=<?php echo $key['MfName']?>&trang=1<?php if(isset($_GET['ram'])){ echo '&ram=$ram&cpu=$cpu&ssd=$ssd&screen=$screen';} ?>">Đầu</a>
				<?php } ?>

				<?php if($trang>1){ ?>
					<a href="index.php?MENU=MF&MF=<?php echo $key['MfName']?>&trang=<?php echo $trang-1;?><?php if(isset($_GET['ram'])){ echo '&ram=$ram&cpu=$cpu&ssd=$ssd&screen=$screen';} ?>">&laquo;</a>
				<?php } ?>

				<?php for($i=1;$i<=$sotrang;$i++) {?>
					<?php  if($i> $trang-2 && $i< $trang+2){ ?>
						<a href="index.php?MENU=MF&MF=<?php echo $key['MfName']?>&trang=<?php echo $i;?><?php if(isset($_GET['ram'])){ echo '&ram=$ram&cpu=$cpu&ssd=$ssd&screen=$screen';} ?>"><?php echo"$i";?></a>
					<?php } ?>
				<?php } ?>

				<?php if($trang<$sotrang-1){ ?>
					<a href="index.php?MENU=MF&MF=<?php echo $key['MfName']?>&trang=<?php echo $trang+1;?><?php if(isset($_GET['ram'])){ echo '&ram=$ram&cpu=$cpu&ssd=$ssd&screen=$screen';} ?>">&raquo;</a>
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
