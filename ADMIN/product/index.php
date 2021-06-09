
<?php
$trang=1;
if(isset($_GET['trang'])){
	$trang=$_GET['trang'];
}
include("connect/open.php");
$search = "";
$case="";
if(isset($_GET["search"])&&isset($_GET["choose"])){
	$search = $_GET["search"];
	$choose = $_GET["choose"];
	switch ($choose) {
		case '2':
		$case="WHERE ProductName LIKE '%$search%' AND Status='0'";
		break;
		case '3':
		$case="WHERE ProductName  LIKE '%$search%' AND Status='1'";
		break;
		case '4':
		$case="WHERE ProductName LIKE '%$search%' AND Number > 0 AND Status='0'";
		break;
		case '5':
		$case="WHERE ProductName LIKE '%$search%' AND Number = 0 AND Status='0'";
		break;
		default:
		$case="WHERE ProductName LIKE '%$search%' AND Status='0'";
		break;
	}
}else{ $case="WHERE ProductName LIKE '%$search%' AND Status='0'"; }
$products = "SELECT * FROM tbl_products "."$case";
$resultsql1 = mysqli_query($con , $products);
$num1= mysqli_num_rows($resultsql1);
$sotin1trang=10;
$tongsotin=$num1;
$sotrang=ceil($tongsotin/$sotin1trang);
$from=($trang-1)*$sotin1trang;
$from1=" LIMIT $from,$sotin1trang";
$products1 = "SELECT * FROM tbl_products "."$case"."$from1";
			// echo $products1;
$resultsql = mysqli_query($con , $products1);
// $son = mysqli_fetch_assoc($resultsql);
// $products = mysqli_fetch_array($resultsql);
$num= mysqli_num_rows($resultsql);
include("connect/close.php");		
?>
<div class="wrapper _1">
	<h1 class="text-center" style="text-align: center">Quản Lí Sản Phẩm</h1>

	<div class="content_content">
		<?php  
		if(isset($search) && isset($num)){
			if($search != ""){
				echo "Tìm thấy $num kết quả liên qua tới '$search...'";
			}	
		}		
		?>
		
		<table  width="100%" align="center" class="table" cellpadding="0" cellspacing="0">
			<tr border="0px">
				<td colspan="17" class="row">
					<div  style="text-align: right;">
						<form>
							<input type="text" name="search"class="search" placeholder ="Search..." value="<?php if (isset($_GET["search"])) {echo $_GET["search"];} ?>">               
							
							<select name="choose" id="" class="b_search" style="width:auto;">
								<option value="2" <?php if(isset($_GET['choose']) && $choose==2){echo"selected";} ?> >---Mặc định(tên)---</option>
								<option value="3" <?php if(isset($_GET['choose']) &&$choose==3){echo"selected";} ?> > Sản Phẩm khóa</option>
								<option value="4" <?php if(isset($_GET['choose']) &&$choose==4){echo"selected";} ?> > Sản Phẩm Còn</option>
								<option value="5" <?php if(isset($_GET['choose']) &&$choose==5){echo"selected";} ?> > Sản Phẩm Hết</option>
							</select>
							<button name="sider" class="b_search" value="product"a><i class="fa fa-search"></i></button> 
						</form>
					</div>
				</td>
			</tr>
			<tr border="0px">
				<td colspan="17" class="row" style="text-align: right;">
					<a href="index.php?sider=product&product=add"><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
				</td>
			</tr>
			<tr class="tr">
				<th>Masp</th>
				<th>Tên</th>
				<th>Ảnh</th>
				<th>Số Lượng</th>
				<th>Giá</th>
				<th>Trạng Thái</th>
				<th>Chi tiết</th>
				<th>Sửa</th>
				<th>Xóa</th>
			</tr>
			<?php  
			if($resultsql != null){
				while($products = mysqli_fetch_array($resultsql) ) { ?>
					<tr class="tr_1">
						<td><?php echo $products["ProductID"] ?></td>

						<td><?php echo $products["ProductName"] ?></td>

						<td><img src="../IMG/<?php echo $products["Img"] ?>" style="width: 100px;height: 112px;" lt=""></td>

						<td><?php echo $products["Number"] ?></td>

						<td style="color: red"><?php echo number_format($products["Price"])?>đ</td>
						<td style="color: black"><?php  if($products["Status"]=="0" ){ echo "Đang bán";}else{ echo "Ngừng kinh doanh";}?></td>
						<td><a href="index.php?sider=product&product=detail&id=<?php echo $products['ProductID']?>">Xem</a></td>
						<td class="key">
							<a href="index.php?sider=product&product=update&id=<?php echo $products['ProductID']?>">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
							</a>
						</td>

						<td class="key">
							<a href="product/delete.php?id=<?php echo $products["ProductID"]?>" onclick="return confirm('ARE YOU SURE?')">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
							</a>
						</td>
					</tr>
				<?php } } ?>
			</table>
			<div class="pagination">
				<?php if($trang>2){ ?>
					<a href="index.php?sider=product&trang=1&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">Đầu</a>
				<?php } ?>

				<?php if($trang>1){ ?>
					<a href="index.php?sider=product&trang=<?php echo $trang-1;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">&laquo;</a>
				<?php } ?>

				<?php for($i=1;$i<=$sotrang;$i++) {?>
					<?php  if($i> $trang-2 && $i< $trang+2){ ?>
						<a href="index.php?sider=product&trang=<?php echo $i;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>"><?php echo"$i";?></a>
					<?php } ?>
				<?php } ?>

				<?php if($trang<$sotrang-1){ ?>
					<a href="index.php?sider=product&trang=<?php echo $trang+1;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">&raquo;</a>
				<?php } ?>
			</div>
		</div>
	</div>
