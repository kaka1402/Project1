
<?php
include("connect/open.php");
if(isset($_GET["id"])){
	$id=$_GET["id"];
	$search = "";
	if(isset($_GET["search"])){
		$search = $_GET["search"];
	}
	$sql = "SELECT * FROM tbl_banner WHERE BannerID = '$id' ";
	$result = mysqli_query($con , $sql);
	if($result != null){
		$num = mysqli_num_rows($result);
	}
}

include("connect/close.php");

?>
<style>
	section {
		display: block;
		width: 600px;
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
</style>
<div class="wrapper _1">
	<section>
		<h1 class="text-center">Sửa Banner</h1>
		<div class="content">
			<div class="content_content">	
				<?php  
				$index = 1;
				if($result != null){
					while($banner = mysqli_fetch_array($result) ) { ?>
						<img src="../IMG/<?php echo $banner["LinkBanner"] ?>" alt="" width="500px" height="150px">
					<?php } } ?>
					<?php if(isset($_GET["id"])){

						?>
						<form action="banner/update-process.php?id=<?php echo $_GET["id"]?>"  method="post" enctype="multipart/form-data">
							Choose a new file
							<!-- thumbnail -->
							<div class="form-group">
								<label for="image">Image:</label>
								
								<input required="true" type="file" class="form-control" id="image" name="image"  onchange="updateImage()">
								
							</div>
							<button class="btn" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Cập Nhật</button>
						</form>
					<?php } ?>
				</div>
			</div>
		</section>
	</div>		
</body>
</html>