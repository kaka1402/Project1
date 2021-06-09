<?php 
if(isset($_GET['not'])){
	if($_GET['not']=='attri'){?>
		<?php if(isset($_GET['id'])){
			$id=$_GET['id'];
			$sql9="SELECT * FROM `attribute` WHERE id_attribute ='$id'";
			$show9=returnnn($sql9);
		} ?>
	<div class="wrapper _1">
		<section style="  width: 600px;">
			<div class="content_content">
				<?php 
					$sql8="SELECT * FROM `category`";
					$show8=returnnn($sql8);
				 ?>
				<h1 class="text-center">SửaThuộc tính phần cứng</h1>
				<form action="hardware/update-process.php?where=<?php echo $id ?>"  method="post" enctype="multipart/form-data">

					<div class="form-group">
						<input type="hidden" value="attri" name="kaka">
						<label for="username"> Tên:</label>
						<input  type="text" class="form-control" id="mfname" name="attri" value="<?php echo $show9[0]['name_attribute']  ?>">
						<label for="username"> Thể loại:</label>
						<select name="cate" id="" class="form-control">
							<?php foreach ($show8 as $key8){?>
							<option value="<?php echo $key8['id_category'];?>" <?php if($show9[0]['Category']==$key8['id_category']){echo 'selected';} ?> ><?php echo $key8['name_category'];?></option>
							<?php } ?>
						</select>
					</div>
					<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
				</form>
				
			</div>
		</section>
	</div>
	<?php }else{?>
		
			<?php if(isset($_GET['id'])){
			$id=$_GET['id'];
			$sql9="SELECT * FROM `category` WHERE  id_category ='$id'";
			$show9=returnnn($sql9);
		} ?>
		<div class="wrapper _1">
		<section style="  width: 600px;">
			<div class="content_content">
				<h1 class="text-center">Sửa Thể loại phần cứng</h1>
				<form action="hardware/update-process.php?where=<?php echo $id ?>"  method="post" enctype="multipart/form-data">
					<input type="hidden" value="cate" name="kaka">
					<div class="form-group">
						<label for="username"> Tên thể loại:</label>
						<input  type="text" class="form-control" id="mfname" name="mfname" value="<?php echo $show9[0]['name_category'] ?>">
					</div>


					<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
				</form>
				
			</div>
		</section>
	</div>
	<?php }} ?>