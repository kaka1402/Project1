	<?php
	$trang=1;
	if(isset($_GET['trang'])){
		$trang=$_GET['trang'];
	}
	include("connect/open.php");
	$search = "";
	$case="";
	if(isset($_GET["search"])){
		$search = $_GET["search"];
		$choose = $_GET["choose"];
		switch ($choose) {
			case '2':
			$case="";
			break;
					// case '3':
					// $case="WHERE ProductName  LIKE '%$search%'";
					// 	break;
			case '4':
			$case=" AND Roles = 1";
			break;
			case '5':
			$case=" AND Roles = 0";
			break;
			default:
			$case="";
			break;
		}
	}
	$me=$_SESSION["admin"];
	$admin1 = "SELECT * FROM tbl_accounts WHERE  Username LIKE '%$search%'"."$case"." AND Username !='$me'";
	// echo $admin1;
	$result1 = mysqli_query($con , $admin1);
	$num1 = mysqli_num_rows($result1);
				// phân trang
	$sotin1trang=10;
	$tongsotin=$num1;
	$sotrang=ceil($tongsotin/$sotin1trang);
	$from=($trang-1)*$sotin1trang;



	$admin = "SELECT * FROM tbl_accounts WHERE  Username LIKE '%$search%'"."$case"." AND Username !='$me'"." LIMIT $from,$sotin1trang";
	$result = mysqli_query($con , $admin);
	if($result != null){
		$num = mysqli_num_rows($result);
	}
	
	include("connect/close.php");
	
	?>
	<style type="text/css" media="screen">
		img{
			object-fit: cover;
		}
	</style>
	<div class="wrapper _1">
		<h1 class="text-center" style="text-align: center">Quản lý nhân viên</h1>
		
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
					<td colspan="11" class="row">
						<div style="text-align: right;">
							<form action="index.php?sider=admin">
								<input type="text" name="search"
								class="search" placeholder ="Search..." value="<?php if (isset($_GET["search"])) { echo $_GET["search"];} ?>">  
								<select name="choose" id="" class="b_search" style="width:auto;">
									<option value="2" <?php if(isset($_GET['choose']) && $choose==2){echo"selected";} ?> >---Mặc định(tên)---</option>
									<option value="4" <?php if(isset($_GET['choose']) &&$choose==4){echo"selected";} ?> > Admin</option>
									<option value="5" <?php if(isset($_GET['choose']) &&$choose==5){echo"selected";} ?> > Super Admin</option>
								</select>                
								<button class="b_search" name="sider" value="admin" ><i class="fa fa-search"></i></button>
							</form>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="11" class="row" style="text-align: right;">
						<a href="index.php?sider=admin&admin=add" ><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
					</td>
				</tr>
				<tr class="tr">
					<th>ID </th>
					<th>Ảnh</th>
					<th>Tên</th>
					<th>Tên Tk</th>
					<th>Mật Khẩu</th>
					<th>Email </th>
					<th>SĐT</th>
					<th>Địa chỉ</th>
					<th>Quyền</th>
					<th>Sửa</th>
					<th>Xóa</th>
				</tr>
				<?php  
				if($result != null){
					while($admin = mysqli_fetch_array($result) ) { ?>
						
						<tr class="tr_1">
							<td><?php echo $admin["ID"] ?></td>

							<td><img src="../IMG/<?php if(isset( $admin["Img"])){if( $admin["Img"]==NULL){echo 'avatar-facebook-doc.jpg';}else{echo  $admin["Img"];}}else{echo 'avatar-facebook-doc.jpg';}?>" style="width: 100px;height: 112px;" lt=""></td>

							<td><?php echo $admin["Name"] ?></td>

							<td><?php echo $admin["Username"] ?></td>

							<td><?php echo $admin["Password"] ?></td>
							
							<td><?php echo $admin["Email"] ?></td>

							<td><?php echo $admin["Numberphone"] ?></td>

							<td><?php echo $admin["Address"] ?></td>

							<td><?php echo $admin["Roles"] ?></td>

							<td class="key">
								<a href="index.php?sider=admin&admin=update&id=<?php echo $admin['ID']?>">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
								</a>
							</td>

							<td class="key">
								<a href="manage_admin/delete.php?id=<?php echo $admin["ID"]?>" onclick="return confirm('ARE YOU SURE?')">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
								</a>
							</td>

						</tr>
						

					<?php } } ?>
				</table>
				<div class="pagination">
					<?php if($trang>2){ ?>
						<a href="index.php?sider=admin&trang=1&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">Đầu</a>
					<?php } ?>

					<?php if($trang>1){ ?>
						<a href="index.php?sider=admin&trang=<?php echo $trang-1;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">&laquo;</a>
					<?php } ?>

					<?php for($i=1;$i<=$sotrang;$i++) {?>
						<?php  if($i> $trang-2 && $i< $trang+2){ ?>
							<a href="index.php?sider=admin&trang=<?php echo $i;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>"><?php echo"$i";?></a>
						<?php } ?>
					<?php } ?>

					<?php if($trang<$sotrang-1){ ?>
						<a href="index.php?sider=admin&trang=<?php echo $trang+1;?>&<?php if(isset($_GET['search']) && isset($_GET['choose'])){echo 'search='.$search.'&choose='.$choose;} ?>">&raquo;</a>
					<?php } ?>

					<!-- <?php if($trang<$sotrang-2){ ?>
						<a href=" DELL.php?MENU=<?php echo $_GET['MENU']?>&trang=<?php echo $sotrang;?>"> cuối</a>
					 <?php } ?>

					</div> -->
				</div>
			</div>