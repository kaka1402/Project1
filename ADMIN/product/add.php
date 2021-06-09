<link rel="stylesheet" type="text/css" href="../user/MAIN/style.css">
<?php
include("connect/open.php");

$products = "SELECT * FROM tbl_products";
$resultsql = mysqli_query($con , $products);
if($resultsql != null){
	$num = mysqli_num_rows($resultsql);
}

$mfname = "SELECT * FROM tbl_mfname";
$resultmfn = mysqli_query($con , $mfname);
if($resultmfn != null){
	$num = mysqli_num_rows($resultmfn);
}

include("connect/close.php");

?>
<style>
/* .text-center{
	position: relative;
	z-index: 100;
}
..text-center>h1{

}
.text-center:after {
	 content: "";
	  position: absolute;
	  top: 50%;
	  border: 1px solid black;
	  width: 40%;
	  height: 0.01px;
	  left: 12px;	 
}
*/
/* .detail{
	position: relative;
	} */
/* .detail:before {
  content: "";
  position: absolute;
  left: 0;
  top: -40px;
   width: 200px;
  height: 100px;
  background: red;
  } */

</style>

	<!-- <style>
		.content_content{
			
		}
		.form-group{
			margin-left: 10px;
			margin-top: 20px;
			margin-bottom: 20px;
		}
		.form-control{
			width: 300px;
			height: 30px;
		}

		label{
			float: left;
			width: 200px;
		}
	</style> -->
	<div class="wrapper _1">
		<h1 class="text-center"><span>Thêm Sản phẩm</span></h1>
		<section style=" background: #E1E0E0 ">
			<div class="content_content">
				<form action="product/add-process.php"  method="post" enctype="multipart/form-data">
					<!-- Name -->
					<div class="row">
						<div class="col l-6  c-12" style="background: white;">
							<div class="detail" style="margin-bottom: 99px;">
								<h1 class="text-center" style="z-index: 100;">Thông Tin Cơ Bản</h1>
								<div class="form-group">
									<label for="name">ProductName:</label>

									<input  type="text" class="form-control" id="name" name="name" required="">
								</div>

								<!-- Number -->
								<div class="form-group">
									<label for="number">Number:</label>

									<input  type="number" class="form-control" id="number" name="number" required="">
								</div>


								<!-- MfName -->
								<div class="form-group">
									<label for="MfName">MfName:</label>

									<select class="form-control" name="MfName" id="MfName" value="<?php echo $products["MfName"]?>">
										<?php while($mfname = mysqli_fetch_array($resultmfn)) {?>
											<option value="<?php echo $mfname["IdName"]?>">
												<?php echo $mfname["MfName"]?>
											</option>
										<?php }?>
									</select>
								</div>



								<!-- Price -->
								<div class="form-group">
									<label for="Price">Price:</label>

									<input  type="number" class="form-control" id="Price" name="Price" required="">
								</div>
								<!-- img -->
								<div class="form-group">
									<label for="img">Ảnh</label>
									<input  type="file" class="form-control" id="img" name="img" required="">
								</div>
								<!-- PI -->
								<div class="form-group" style="width: 100%;">
									<h1>Mô tả chung</h1>
									<textarea class="form-control" id="PI" name="PI" >
									</textarea><br>
								</div>
								<!-- Guarantee -->
				    <!-- <div class="form-group">
					  <label for="Guarantee">Guarantee:</label>
			
					   <select class="form-control" name="Guarantee" id="Guarantee" value="<?php echo $products["Guarantee"]?>">
							<?php while($guarantee = mysqli_fetch_array($resultgua)) {?>
								<option value="<?php echo $guarantee["IdGua"]?>">
							<?php echo $guarantee["Guarantee"]?>
								</option>
							<?php }?>
						</select>
					</div> -->
				</div>
				


				
				<div class="detail" style="margin-bottom: 99px;margin-top: 36px;">
					<!-- img nhiều--><h1 class="text-center">Ảnh mô tả sản phẩm</h1>
					<div class="form-group">
						<input  type="file" class="form-control" id="imgs" name="imgs[]" multiple="multiple" required="">
					</div>
				</div>

			</div>


			<div class="col l-6 c-12 " style="background: white;">
				<h1 class="text-center">Thuộc Tính Sản Phẩm</h1>
				<div class="detail" style="margin-bottom: 50px;margin-top: 20px;">
					<!-- img nhiều-->
					<div class="form-group" style="margin-top: 0;margin-bottom: 0;width: 700px; height: 30px;color: black;">
						
						<label>Tên thuộc tính</label>
						<label style="width: 300px;">Giá Trị</label>
						<label >Trạng thái</label>
						
					</div><br>
					<?php 
					include("connect/open.php");
					$catecory="SELECT * FROM `attribute`";
					$resultsqlll = mysqli_query($con ,$catecory );
					include("connect/close.php");
					?>
					<?php 
					while ($nummm = mysqli_fetch_array($resultsqlll)) {
						?>
						<div class="form-group" style="margin-top: 0;margin-bottom: 0;width: 700px;">
							
							<label><?php echo $nummm['name_attribute'] ?>:</label>
							<input  type="hidden" class="form-control" name="name_attribute[]" value="<?php echo $nummm['id_attribute'] ?>">
							<input  type="text" class="form-control" name="attribute[]" <?php if($nummm['id_attribute']=='35'||$nummm['id_attribute']=='39'||$nummm['id_attribute']=='43'||$nummm['id_attribute']=='45'){ ECHO 'required=""'; }?>>

							<select class="form-control" style="width: auto;" name="dfhd[]" >
								
								<option value="1">Hiện(Chính)</option>
								<option value="0">Hiện(Phụ)</option>
								<option value="2">Ẩn</option>
							</select>
							
						</div><br>
					<?php } ?>
				</div>
			</div></div>

			<button type="submit" class="btn" style="margin: auto;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;" name="submit">Thêm</button>   
		</form>

	</div>
</section>
<script>
	CKEDITOR.replace('PI', {
		filebrowserBrowseUrl: '../CKEditor & CKFinder/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl: '../CKEditor & CKFinder/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl: '../CKEditor & CKFinder/ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl: '../CKEditor & CKFinder/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl: '../CKEditor & CKFinder/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl: '../CKEditor & CKFinder/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
	});
</script>
</div>

