	<?php
	$trang=1;
	if(isset($_GET['trang'])){
		$trang=$_GET['trang'];
	}
	include("connect/open.php");
	$search = "";
	$case=" AND Status = 0";
	if(isset($_GET["search"])){
		$search = $_GET["search"];
		$choose = $_GET["choose"];
		switch ($choose) {
			case '4':
			$case=" AND Status = 0";
			break;
			case '5':
			$case=" AND Status = 1";
			break;
			default:
			$case=" AND Status = 0";
			break;
		}
	}
	$customer1 = "SELECT * FROM tbl_customers WHERE  CustomerName   LIKE '%$search%'" ."$case";
	$result1 = mysqli_query($con , $customer1);
	$num1 = mysqli_num_rows($result1);
				// phân trang
	$sotin1trang=10;
	$tongsotin=$num1;
	$sotrang=ceil($tongsotin/$sotin1trang);
	$from=($trang-1)*$sotin1trang;


	$customer = "SELECT * FROM tbl_customers WHERE  CustomerName   LIKE '%$search%'"."$case"." LIMIT $from,$sotin1trang";
	$result = mysqli_query($con , $customer);
	if($result != null){
		$num = mysqli_num_rows($result);
	}
	
	include("connect/close.php");
	
	?>
	<style type="text/css" media="screen">
		img{
			object-fit: cover;
		}
		.key svg:hover{
			height: 2em;
			width: 2em;
		}
	</style>
	<div class="wrapper _1">
		<h1 class="text-center" style="text-align: center">Quản lý người dùng</h1>
		<div class="content_content">
			<?php  
			if(isset($search) && isset($num)){
				if($search != ""){
					echo "Tìm thấy $num kết quả liên qua tới '$search...'";
				}
			}
			
			?>
			
			<table align="center" width="97%" class="table" cellpadding="0" cellspacing="0">
				<tr border="0px">
					<td colspan="9" class="row">
						<div class="row" style="text-align: right;">
							<form>
								<input type="text" class="search" name="search" placeholder ="Search..." value="<?php if (isset($_GET["search"])) { echo $_GET["search"]; } ?>"> 
								<select name="choose" id="" class="b_search" style="width:auto;">
									<option value="4" <?php if(isset($_GET['choose']) &&$choose==4){echo"selected";} ?> >Đang Sử dụng</option>
									<option value="5" <?php if(isset($_GET['choose']) &&$choose==5){echo"selected";} ?> > Bị khóa</option>
								</select>                      
								<button class="b_search"  name="sider" value="user"><i class="fa fa-search"></i></button>
							</form>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="9" class="row" style="text-align: right;">
						<a href="index.php?sider=user&user=add" ><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
					</td>
				</tr>
				<tr class="tr">
					<th>ID </th>
					<th>Ảnh </th>
					<th>Tên</th>
					<th>Giới Tính</th>
					<th>Email </th>
					<th>Tên Tk</th>
					<th>Mật Khẩu</th>
					<th>Trạng thái</th>
					<th width="100px">Sửa</th>
					<th width="100px">Khóa</th>
				</tr>
				
				
				
				
				<?php  
				$index = 1;
				if($result != null){
					while($customer = mysqli_fetch_array($result) ) { ?>
						
						<tr class="tr_1">
							<td><?php echo $index++ ?></td>
							<td><img src="../IMG/<?php if( $customer["Img"]==NULL){echo 'avatar-facebook-doc.jpg';}else{echo $customer["Img"];}?>" alt="" style="width: 100px;height: 112px;"></td>
							<td><?php echo $customer["CustomerName"] ?></td>

							<td><?php
							if($customer["Gender"] ==0){ 
								echo "Nam";
							}else{ 
								echo "Nữ"; 
							}

							?></td>

							<td><?php echo $customer["Email"] ?></td>

							<td><?php echo $customer["Username"] ?></td>

							<td><?php echo $customer["Password"] ?></td>
							<td><?php
							if($customer["Status"] ==0){ 
								echo "Đang sử dụng";
							}else if($customer["Status"] ==1){ 
								echo "Bị Khóa"; 
							}

							?></td>

							<td class="key">
								<a href="index.php?sider=user&user=update&id=<?php echo $customer['CustomerID']?>">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
								</a>
							</td>

							<td class="key">
								<a href="manage_user/delete.php?id=<?php echo $customer['CustomerID']?>" onclick="return confirm('ARE YOU SURE?')">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.3em" height="1.3em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><rect x="6.33" y="10.71" width="9.71" height="2.57" rx="1" ry="1" transform="rotate(-45 11.192 12.004)" class="clr-i-outline clr-i-outline-path-1" fill="#626262"/><path d="M23.35 16.8l.63-.63A5 5 0 0 0 24 9.1l-5.29-5.26a5 5 0 0 0-7.07 0l-8.55 8.55a5 5 0 0 0 0 7.07l5.26 5.26a5 5 0 0 0 7.07 0l.4-.4L18 26.48h3.44v3h3.69v1.63L28 34h6v-6.55zM32 32h-3.14l-1.77-1.76v-2.8h-3.68v-3H18.8l-3-3l-1.8 1.87a3 3 0 0 1-4.24 0L4.5 18a3 3 0 0 1 0-4.24l8.56-8.56a3 3 0 0 1 4.24 0l5.26 5.26a3 3 0 0 1 0 4.24l-2 2L32 28.28z" class="clr-i-outline clr-i-outline-path-2" fill="#626262"/></svg>
								</a>
							</td>

						</tr>
						

					<?php } } ?>
				</table>

				<div class="pagination">
					<?php if($trang>2){ ?>
						<a href="index.php?sider=user&trang=1">Đầu</a>
					<?php } ?>

					<?php if($trang>1){ ?>
						<a href="index.php?sider=user&trang=<?php echo $trang-1;?>">&laquo;</a>
					<?php } ?>

					<?php for($i=1;$i<=$sotrang;$i++) {?>
						<?php  if($i> $trang-2 && $i< $trang+2){ ?>
							<a href="index.php?sider=user&trang=<?php echo $i;?>"><?php echo"$i";?></a>
						<?php } ?>
					<?php } ?>

					<?php if($trang<$sotrang-1){ ?>
						<a href="index.php?sider=user&trang=<?php echo $trang+1;?>">&raquo;</a>
					<?php } ?>
				</div>
			</div>
		</div>		
	</body>
	</html>