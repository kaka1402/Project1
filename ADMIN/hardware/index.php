
<?php
include("connect/open.php");

$mfname1 = "SELECT * FROM `category`";
$result = mysqli_query($con , $mfname1);
$mfname2 = "SELECT * FROM `attribute`INNER JOIN category ON attribute.Category=category.id_category";
$result2= mysqli_query($con , $mfname2);
include("connect/close.php");

?>
<style type="text/css" media="screen">
	img{
		object-fit: cover;
	}
	.haha::-webkit-scrollbar {
				width: 9px;
				height: 9px;
			}
			.haha::-webkit-scrollbar-thumb {
				background-color: rgba(0,0,0,0.4);
				border-radius: 10rem;
				border: 1px solid #23242D;
			}
</style>
<div class="wrapper _1">
	
	<div class="content_content haha" style="background: white;width: 65%;float: left;overflow-y:scroll;height: 600px;">
		<h1 class="text-center" style="text-align: center">Quản lý thuộc tính phần cứng</h1>
		
		<table align="center" width="97%" class="table" cellpadding="0" cellspacing="0" height="300px">
			
			<tr>
				
				<td colspan="5" class="row" style="text-align: right;">
					<a href="index.php?sider=hard&hard=add&not=attri" ><label for="input" style="float: right"><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></label></a>
				</td>
			</tr>
			<tr class="tr">
				<th>ID </th>
				<th>Tên thuộc tính </th>
				<th> Thể Loại </th>
				<th width="100px">Sửa</th>
				<th width="100px">Xóa</th>
			</tr>

			<?php  
			$index = 1;
			if($result != null){
				while($ka = mysqli_fetch_array($result2) ) { ?>
					
					<tr class="tr_1">
						<td><?php echo $index++ ?></td>
						<td><?php echo $ka["name_attribute"] ?></td>
						<td><?php echo $ka["name_category"] ?></td>
						<td>
							<?php if($ka['id_attribute']!=35&&$ka['id_attribute']!=39&&$ka['id_attribute']!=43&&$ka['id_attribute']!=45){ ?>
							<a href="index.php?sider=hard&hard=update&id=<?php echo $ka["id_attribute"] ?>&not=attri">
								<label for="input" style="width: 100px;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg></label>
							</a>
						<?php } ?>
						</td>
						<td>
						<?php if($ka['id_attribute']!=35&&$ka['id_attribute']!=39&&$ka['id_attribute']!=43&&$ka['id_attribute']!=45){ ?>
						
							<a href="hardware/delete_attri.php?id=<?php echo $ka['id_attribute']?>" onclick="return confirm('ARE YOU SURE?')">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
							</a>
						<?php } ?>
						</td>

					</tr>
				<?php } } ?>
			</table>
		</div>





	<div class="content_content haha" style="background: white;width: 34.1%;float: left;margin-left: 10px;height: 600px;overflow-y:auto">
		<h1 class="text-center" style="text-align: center">Quản lý thể loại phần cứng</h1>
		<table align="center" width="97%" class="table" cellpadding="0" cellspacing="0">
			
			<tr>
				<td colspan="4" class="row" style="text-align: right;">
					<a href="index.php?sider=hard&hard=add&not=cate" ><span class="add"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1024 1024"><defs/><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z" fill="#fff"/><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z" fill="#fff"/></svg>Thêm</span></a>
				</td>
			</tr>
			<tr class="tr">
				<th>ID </th>
				<th>Tên thể loại</th>
				<th width="100px">Sửa</th>
				<th width="100px">Xóa</th>
			</tr>

			<?php  
			$index = 1;
			if($result != null){
				while($mfname = mysqli_fetch_array($result) ) { ?>
					
					<tr class="tr_1">
						<td><?php echo $mfname["id_category"] ?></td>
						<td><?php echo $mfname["name_category"] ?></td>
						<td class="key">
							<a href="index.php?sider=hard&hard=update&not=cate&id=<?php echo $mfname['id_category']?>">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><g fill="none" stroke="#626262" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1l1-4l9.5-9.5z"/></g></svg>
							</a>
						</td>

						<td class="key">
							<?php if($mfname["id_category"] !=1&&$mfname["id_category"] !=2&&$mfname["id_category"] !=3&&$mfname["id_category"] !=4) {?>
							<a href="hardware/delete_cate.php?id=<?php echo $mfname['id_category']?>" onclick="return confirm('Cảnh báo.Xóa thành phần này sẽ ảnh hưởng đến chức năng của từng sản phẩm .Bạn có chắc ???')">
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1.5em" height="1.5em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 20 20"><g fill="none"><path d="M10 1.25a2.75 2.75 0 0 1 2.739 2.5H17a.75.75 0 0 1 .102 1.493L17 5.25h-.583L15.15 16.23A2 2 0 0 1 13.163 18H6.837a2 2 0 0 1-1.987-1.77L3.582 5.25H3a.75.75 0 0 1-.743-.648L2.25 4.5a.75.75 0 0 1 .648-.743L3 3.75h4.261A2.75 2.75 0 0 1 10 1.25zM8.5 7.5c-.245 0-.45.155-.492.359L8 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359L9 14.062V7.939l-.008-.08C8.95 7.656 8.745 7.5 8.5 7.5zm3 0c-.245 0-.45.155-.492.359L11 7.938v6.125l.008.078c.042.204.247.359.492.359s.45-.155.492-.359l.008-.079V7.939l-.008-.08c-.042-.203-.247-.358-.492-.358zM10 2.75c-.605 0-1.11.43-1.225 1h2.45c-.116-.57-.62-1-1.225-1z" fill="#626262"/></g></svg>
							</a>
						<?php } ?>
						</td>

					</tr>
				<?php } } ?>
			</table>
		</div>
	</div>		
</body>
</html>
 <?php if(isset($_GET['erro'])&&$_GET['erro']==1){ ?>
 	<script>
 		window.alert("Không thực hiện được. Hãy thử lại thao tác!!");
 	</script>
 <?php } ?>