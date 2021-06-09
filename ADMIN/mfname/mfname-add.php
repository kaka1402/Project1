	<?php
	include("connect/open.php");
	
	$mfname = "SELECT * FROM tbl_mfname";
	$resultmfn = mysqli_query($con , $mfname);
	if($resultmfn != null){
		$num = mysqli_num_rows($resultmfn);
	}

	include("connect/close.php");
	
	?>

	<div class="wrapper _1">
		<section style="  width: 600px;">
			<div class="content_content">
				<h1 class="text-center">Thêm Thương Hiệu</h1>
				<form action="mfname/mfname-add-process.php"  method="post" enctype="multipart/form-data">

					<div class="form-group">
						<label for="username"> Name:</label>
						<input  type="text" class="form-control" id="mfname" name="mfname" >
					</div>


					<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
				</form>
				
			</div>
		</section>
	</div>
