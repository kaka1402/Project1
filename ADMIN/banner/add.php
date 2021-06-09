
<div class="wrapper _1" style="height: 470px;">
	<section style=" width: 600px; ">
		<h1 class="text-center">Thêm Banner</h1>
		<div class="content">
			<div class="content_content">
				<form action="banner/add-process.php"  method="post" enctype="multipart/form-data">
					<!-- thumbnail -->
					<div class="form-group">
						<label for="image">Banner:</label>
						
						<input required="true" type="file" class="form-control" id="image" name="image"  onchange="updateImage()">
						
					</div>
					<button class="btn" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Cập nhật</button>
				</form>
			</div>
		</section>
	</div>