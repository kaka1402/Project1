<?php 
if(isset($_GET['not'])){
	if($_GET['not']=='attri'){?>
	<div class="wrapper _1">
		<section style="  width: 600px;">
			<div class="content_content">
				<?php 
					$sql8="SELECT * FROM `category`";
					$show8=returnnn($sql8);
				 ?>
				<h1 class="text-center">Thêm Thuộc tính phần cứng</h1>
				<form action="hardware/add-process.php"  method="post" enctype="multipart/form-data">

					<div class="form-group">
						<input type="hidden" value="attri" name="kaka">
						<label for="username"> Tên:</label>
						<input  type="text" class="form-control" id="mfname" name="attri" >
						<label for="username"> Thể loại:</label>
						<select name="cate" id="" class="form-control">
							<?php foreach ($show8 as $key8){?>
							<option value="<?php echo $key8['id_category'];?>"><?php echo $key8['name_category'];?></option>
							<?php } ?>
						</select>
					</div>
					<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
				</form>
				
			</div>
		</section>
	</div>
	<?php }else{?>
		<div class="wrapper _1">
		<section style="  width: 600px;">
			<div class="content_content">
				<h1 class="text-center">Thêm Thể loại phần cứng</h1>
				<form action="hardware/add-process.php"  method="post" enctype="multipart/form-data">
					<input type="hidden" value="cate" name="kaka">
					<div class="form-group">
						<label for="username"> Tên thể loại:</label>
						<input  type="text" class="form-control" id="mfname" name="mfname" >
					</div>


					<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
				</form>
				
			</div>
		</section>
	</div>
	<?php }} ?>