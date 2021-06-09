<?php



include("../ADMIN/connect/open.php");
if(isset($_GET["status"])){
	$id=$_GET['id'];
	$sqlll="UPDATE `tbl_bills` SET `Status`=2 WHERE BillID=$id";
	$resultcussss = mysqli_query($con , $sqlll);
	header("Location: Profile.php?IF=history&erro=1");
}
		$case="";
			if(isset($_GET["choose"])){
				$choose = $_GET["choose"];
				switch ($choose) {
					case '2':
						$case=" ";
						break;
					case '3':
					$case=" AND Status IS NULL";
						break;
					case '4':
					$case=" AND  Status = 0";
						break;
					case '5':
					$case=" AND  Status = 1";
						break;
					case '6':
					$case=" AND  Status = 2";
						break;
					case '7':
					$case=" ORDER BY DateCreateBill DESC";
						break;
					case '7':
					$case=" ORDER BY DateCreateBill ASC";
						break;
					default:
						$case=" ";
						break;
				}
			}
		$BK=$g[0]['CustomerID'];
		$cus = "SELECT * FROM `tbl_bills` WHERE CustomerID =$BK"."$case";
		$res = mysqli_query($con , $cus);
include("../ADMIN/connect/close.php");
		
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
		.content-w3ls> section {
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
		
		
	</style>

<div class="content-w3ls">
	<div style="background:#fff; text-align: center"><h1>Lịch Sử Mua Hàng</h1></div>
	<div  style="text-align: right;">
		<form>
			<select name="choose" id="" class="b_search" style="width:auto;">
				<option value="2" <?php if(isset($_GET['choose']) && $choose==2){echo"selected";} ?> >---Mặc định---</option>
				<option value="3" <?php if(isset($_GET['choose']) && $choose==3){echo"selected";} ?> >Chờ xác nhận</option>
				<option value="4" <?php if(isset($_GET['choose']) &&$choose==4){echo"selected";} ?> >Thành công</option>
				<option value="5" <?php if(isset($_GET['choose']) &&$choose==5){echo"selected";} ?> >Đã Hủy</option>
				<option value="6" <?php if(isset($_GET['choose']) &&$choose==6){echo"selected";} ?> >Chờ hủy </option>
				<option value="7" <?php if(isset($_GET['choose']) &&$choose==7){echo"selected";} ?> >Sắp xếp mới nhất</option>
				<option value="8" <?php if(isset($_GET['choose']) &&$choose==8){echo"selected";} ?> >Sắp xếp cũ Nhất</option>
			</select>
			<button name="IF" class="b_search" value="history">Tìm</button> 
		</form>
	</div>
	<?php while ( $set = mysqli_fetch_array($res)) {
		include("../ADMIN/connect/open.php");
		
		$id=$set['BillID'];
		$customers = "SELECT * FROM `tbl_bills` WHERE BillID =$id";
		$resultcus = mysqli_query($con , $customers);
		$num = mysqli_fetch_array($resultcus);
		$customers1 = "SELECT * FROM tbl_billdetail WHERE BillID =$id";
		$resultcus1 = mysqli_query($con , $customers1);
		
		
		include("../ADMIN/connect/close.php");
	?>
	<section style="  width: 600px;">
		<div class="content" style="margin-left: 20px;">
			<h1 class="text-center">Hóa Đơn Chi Tiết</h1>
				<div class="form-group">
				<span>Bill Số:</span>&nbsp #156745<?php echo $num['BillID']; ?>
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
				  		<td>Tên Sản Phẩm</td>
				  		<td>Số Lượng</td>
				  		<td>Giá/1sp</td>
				  		
				  	</tr>
				  	<?php while ($num1 = mysqli_fetch_array($resultcus1)) { ?>
				  	<tr>
				  		<td><?php echo $num1['Name'] ?></td>
				  		<td><?php echo $num1['OrderQuanity'] ?></td>
				  		<td><?php echo $num1['Price'] ?></td>
				  						  	</tr>
				  	<?php } ?>
			

				  </table>
			    </div>
				<div class="form-group" style="text-align: center">
					<?php if($num["Status"]==''){ ?>
					<a href="Profile.php?IF=history&id=<?php echo $num["BillID"] ?>&status=delete">
						Hủy
					</a>
					<?php } ?>
				</div>
		</div>			
	</section>
	<?php } ?>
</div>
<?php 
	if (isset($_GET['erro'])&&$_GET['erro']=='1') {
 ?>
 	<script src="" type="text/javascript" charset="utf-8">
 		alert("Đã gửi yêu cầu hủy.Hãy chờ!");
 	</script>
 <?php } ?>