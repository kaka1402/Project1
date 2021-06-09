<?php
include("connect/open.php");
if(isset($_GET['id'])){
	$id=$_GET['id'];
	$customers = "SELECT * FROM `tbl_bills` WHERE BillID =$id";
	$resultcus = mysqli_query($con , $customers);
	$num = mysqli_fetch_array($resultcus);
	$customers1 = "SELECT * FROM tbl_billdetail WHERE BillID =$id";
	$resultcus1 = mysqli_query($con , $customers1);
	
}
include("connect/close.php");

?>

<style type="text/css" media="screen">
	._2 span{
		font-weight: bold;
		color: black;
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
		height: 25px;
		line-height: 30px;
		background: tomato;
		border-radius: 8px;
		text-decoration: none;
		color: black;
	}
</style>
<div class="wrapper _1 _2">
	<section style="">
		<div class="content" style="margin-left: 20px;">
			<h1 class="text-center">Hóa Đơn Chi Tiết</h1>
			<div class="form-group">
				<span>Mã Bill:</span>&nbsp<?php echo $num['BillID']; ?>
			</div>

			
			<div class="form-group">
				<span>ID người nhận:</span>&nbsp<?php echo $num['CustomerID']; ?>
			</div>


			
			<div class="form-group">
				<span>Tên người nhận:</span>&nbsp<?php echo $num['CustomerName']; ?>
			</div>

			<div class="form-group">
				<span>SĐT:</span>&nbsp<?php echo $num['PhoneNumber']; ?>
			</div>
			
			<div class="form-group">
				<span>Địa chỉ:</span>&nbsp<?php echo $num['Address']; ?>
			</div>

			<div class="form-group">
				<span>Ngày nhận :</span>&nbsp<?php echo $num['DateCreateBill']; ?>&nbsp&nbsp <span>Lúc:</span>&nbsp<?php echo $num['TimeCreatBill']; ?>
			</div>

			<div class="form-group">
				<span>Tình Trạng :</span>&nbsp<?php 
				switch ($num["Status"]){
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
			</div>
			<div class="form-group">
				<span>Mặt hàng:</span>
				<table style="border: 1px;">
					<tr style="font-weight: bold;color: black;">
						<td>ID Sản Phẩm</td>
						<td>Tên Sản Phẩm</td>
						<td>Số Lượng</td>
						<td>Giá/1sp</td>
						
					</tr>
					<?php while ($num1 = mysqli_fetch_array($resultcus1)) { ?>
						<tr>
							<td><?php echo $num1['ProductID'] ?></td>
							<td><?php echo $num1['Name'] ?></td>
							<td><?php echo $num1['OrderQuanity'] ?></td>
							<td><?php echo $num1['Price'] ?></td>
						</tr>
					<?php } ?>
					

				</table>
			</div>


		</div>
		<div class="form-group" style="text-align: center">
			<?php if($num["Status"]=='' || $num["Status"]=='2'){ ?>
				<a href="bill/choose.php?id=<?php echo $num["BillID"] ?>&choose=success">
					Xác Nhận
				</a>
				<a href="bill/choose.php?id=<?php echo $num["BillID"] ?>&choose=delete">
					Hủy
				</a>
			<?php } ?>
		</div>
	</div>				
</div>
</section>
</div>
