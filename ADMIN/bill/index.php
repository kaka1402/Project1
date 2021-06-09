
<?php
$trang=1;
if(isset($_GET['trang'])){
	$trang=$_GET['trang'];
}
include("connect/open.php");
$search = "";
$case="ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
if(isset($_GET["search"])&&isset($_GET["choose"])){
	$search = $_GET["search"];
	$choose = $_GET["choose"];
	switch ($choose) {
		case '2':
		$case=" WHERE CustomerID  LIKE '%$search%' ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
		case '3':
		$case=" WHERE CustomerID  LIKE '%$search%' AND Status IS NULL ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
		case '4':
		$case=" WHERE CustomerID  LIKE '%$search%' AND Status = 0 ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
		case '5':
		$case=" WHERE CustomerID  LIKE '%$search%' AND Status = 1 ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
		case '6':
		$case=" WHERE CustomerID  LIKE '%$search%' AND Status = 2 ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
		default:
		$case=" WHERE CustomerID  LIKE '%$search%' ORDER BY  `tbl_bills`.`TimeCreatBill`&&`tbl_bills`.`DateCreateBill` DESC";
		break;
	}
}
$products = "SELECT * FROM tbl_bills "."$case";
$resultsql1 = mysqli_query($con , $products);
$num1= mysqli_num_rows($resultsql1);
$sotin1trang=10;
$tongsotin=$num1;
$sotrang=ceil($tongsotin/$sotin1trang);
$from=($trang-1)*$sotin1trang;
$from1=" LIMIT $from,$sotin1trang";
$products1 = "SELECT * FROM tbl_bills "."$case"."$from1";
			// echo $products1;
$resultsql = mysqli_query($con , $products1);
$num= mysqli_num_rows($resultsql);
include("connect/close.php");		
?>
<style type="text/css" media="screen">
	svg:hover{
		height: 2rem;
		width: 2rem;
	}
</style>
<div class="wrapper _1">
	<h1 class="text-center" style="text-align: center">Quản Lí Hóa Đơn</h1>

	<div class="content_content">
		<?php  
		if(isset($search) && isset($num)){
			if($search != ""){
				echo "Tìm thấy $num kết quả liên qua tới '$search...'";
			}	
		}
		if(isset($_GET["err"])){
			echo "<strong>Bạn không được cấp quyền thực hiện thao tác này!</strong>";
		}		
		?>
		
		<table  width="100%" align="center" class="table" cellpadding="0" cellspacing="0">
			<tr border="0px">
				<td colspan="17" class="row">
					<div  style="text-align: right;">
						<form>
							<input type="text" name="search"class="search" placeholder ="Search..." value="<?php if (isset($_GET["search"])) {echo $_GET["search"];} ?>">               
							
							<select name="choose" id="" class="b_search" style="width:auto;">
								<option value="2" <?php if(isset($_GET['choose']) && $choose==2){echo"selected";} ?> >---Mặc định---</option>
								<option value="3" <?php if(isset($_GET['choose']) && $choose==3){echo"selected";} ?> >Đang chờ xác nhận</option>
								<option value="4" <?php if(isset($_GET['choose']) &&$choose==4){echo"selected";} ?> >Thành công</option>
								<option value="5" <?php if(isset($_GET['choose']) &&$choose==5){echo"selected";} ?> >Hủy</option>
								<option value="6" <?php if(isset($_GET['choose']) &&$choose==6){echo"selected";} ?> >Chờ hủy </option>
							</select>
							<button name="sider" class="b_search" value="bill"a><i class="fa fa-search"></i></button> 
						</form>
					</div>
				</td>
			</tr>
				<!-- <tr border="0px">
					<td colspan="17" class="row" style="text-align: right;">
						<a href="index.php?sider=product&product=add"><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
					</td>
				</tr> -->
				<tr class="tr" style="margin-top:5px;">
					<th>Mã Bill</th>
					<th>ID người dùng</th>
					<th>Tên người nhận</th>
					<th>SĐT</th>
					<th>Địa Chỉ</th>
					<th>Ngày tạo</th>
					<th>Lúc</th>
					<th>Trạng thái</th>
					<th>Chi tiết</th>
					<th>Xác nhận</th>
					<th>Hủy Đơn</th>
				</tr>
				<?php  
				if($resultsql != null){
					while($products = mysqli_fetch_array($resultsql) ) { ?>
						<tr class="tr_1">
							<td><?php echo $products["BillID"] ?></td>

							<td><?php echo $products["CustomerID"] ?></td>

							<td><?php echo $products["CustomerName"] ?></td>
							<td><?php echo $products["PhoneNumber"]?></td>

							<td><?php echo $products["Address"] ?></td>


							<td><?php echo $products["DateCreateBill"] ?></td>

							<td><?php echo $products["TimeCreatBill"] ?></td>

							<td><?php 
							switch ($products["Status"]){
								case '':
								echo "<span style='color:#000000;'>Chờ xác nhận</span>";
								break;
								case '0':
								echo "<span style='color:#00FF00;'>Thành Công</span>";
								break;
								case '1':
								echo "<span style='color:#0404B4;'>Đã Hủy</span>";
								break;
								case '2':
								echo "<span style='color:red;'>Chờ hủy</span>";
								break;
								default:
								echo "<span style='color:#000000;'>Chờ xác nhận</span>";
								break;


							} 
							?>
						</td>

						
						<td><a href="index.php?sider=bill&bill=main&id=<?php echo $products["BillID"] ?>">Xem</a></td>
						
						<td class="key">
							<?php if($products["Status"]=='' || $products["Status"]=='2'){ ?>
								<a href="bill/choose.php?id=<?php echo $products["BillID"] ?>&choose=success">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
								</a>
							<?php } ?>
						</td>
						

						<td class="key">
							<?php if($products["Status"]=='' || $products["Status"]=='2'){ ?>
								<a href="bill/choose.php?id=<?php echo $products["BillID"] ?>&choose=delete">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path d="M16.5 8C14 8 12 10 12 12.5s2 4.5 4.5 4.5s4.5-2 4.5-4.5S19 8 16.5 8m0 7.5c-1.7 0-3-1.3-3-3c0-.6.2-1.1.4-1.5l4.1 4.1c-.4.2-.9.4-1.5.4m2.6-1.5L15 9.9c.4-.3.9-.4 1.5-.4c1.7 0 3 1.3 3 3c0 .6-.2 1.1-.4 1.5m-7-6.3l-1.5-1.5l3.3-3.3c.6-.6 1.5-.6 2.1 0L18.2 5c.4.4.5.8.4 1.3c-.6-.2-1.3-.3-2-.3c-1.8 0-3.3.7-4.5 1.7m-1.6 7.2L9 16.3c-.6.6-1.5.6-2.1 0l-.7.7H2l2.8-2.8c-.6-.6-.6-1.5 0-2.1l4.7-4.7L11.1 9c-.7 1-1.1 2.2-1.1 3.5c0 .8.2 1.6.5 2.4z" fill="#626262"/></svg>
								</a>
							<?php } ?>
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
