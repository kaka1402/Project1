<?php
$trang=1;
if(isset($_GET['trang'])){
	$trang=$_GET['trang'];
}
include("connect/open.php");
$search = "";
if(isset($_GET["search"])){
	$search = $_GET["search"];
}
$mfname1 = "SELECT * FROM tbl_mfname WHERE Status='0'";
$result1 = mysqli_query($con , $mfname1);
$num1 = mysqli_num_rows($result1);
				// phân trang
$sotin1trang=10;
$tongsotin=$num1;
$sotrang=ceil($tongsotin/$sotin1trang);
$from=($trang-1)*$sotin1trang;


$mfname = "SELECT * FROM tbl_mfname WHERE Status='0' LIMIT $from,$sotin1trang";
$result = mysqli_query($con , $mfname);
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
	<h1 class="text-center" style="text-align: center">Quản lý Danh Mục Sản Phẩm</h1>
	<div class="content_content">
		
		
		<table align="center" width="97%" class="table" cellpadding="0" cellspacing="0">
			
			<tr>
				
				<td colspan="4" class="row" style="text-align: right;">
					<a href="index.php?sider=mfname&mfname=add" ><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
				</td>
			</tr>
			<tr class="tr">
				<th>ID </th>
				<th>Tên Thương Hiệu </th>
				<th width="100px">Sửa</th>
				<th width="100px">Xóa</th>
			</tr>



			<?php  
			$index = 1;
			if($result != null){
				while($mfname = mysqli_fetch_array($result) ) { ?>
					
					<tr class="tr_1">
						<td><?php echo $index++ ?></td>
						<td><?php echo $mfname["MfName"] ?></td>
						<td class="key">
							<a href="index.php?sider=mfname&mfname=update&id=<?php echo $mfname['IdName']?>">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
							</a>
						</td>

						<td class="key">
							<a href="mfname/mfname-delete.php?id=<?php echo $mfname['IdName']?>" onclick="return confirm('ARE YOU SURE?')">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
							</a>
						</td>

					</tr>
					

				<?php } } ?>
			</table>







			<div class="pagination">
				<?php if($trang>2){ ?>
					<a href="index.php?sider=mfname&trang=1">Đầu</a>
				<?php } ?>

				<?php if($trang>1){ ?>
					<a href="index.php?sider=mfname&trang=<?php echo $trang-1;?>">&laquo;</a>
				<?php } ?>

				<?php for($i=1;$i<=$sotrang;$i++) {?>
					<?php  if($i> $trang-2 && $i< $trang+2){ ?>
						<a href="index.php?sider=mfname&trang=<?php echo $i;?>"><?php echo"$i";?></a>
					<?php } ?>
				<?php } ?>

				<?php if($trang<$sotrang-1){ ?>
					<a href="index.php?sider=mfname&trang=<?php echo $trang+1;?>">&raquo;</a>
				<?php } ?>
			</div>
		</div>
	</div>		
</body>
</html>
