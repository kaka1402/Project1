<?php
include("connect/open.php");
if(isset($_GET["id"])){
	$id=$_GET["id"];
	$search = "";
	$mfname = "SELECT * FROM tbl_mfname WHERE IdName = '$id' ";
	$resultmfn = mysqli_query($con , $mfname);
	if($resultmfn != null){
		$num = mysqli_num_rows($resultmfn);
	}
}

include("connect/close.php");

?>

<div class="wrapper _1">
	<section style=" width: 600px; ">
		<div class="content_content">
			<h1 class="text-center">Sửa Thương Hiệu</h1>
			<form action="mfname/mfname-update-process.php?id=<?php echo $_GET["id"]?>"  method="post" enctype="multipart/form-data">			
				<?php  
				if($resultmfn != null){
					while($mfname = mysqli_fetch_array($resultmfn) ) { ?>
						
						<div class="form-group">
							<label for="fullname">Name:</label>
							<input type="text"  name="mfname" value="<?php echo $mfname["MfName"] ?>" required="true">
						</div>



						<a href="mfname/mfname-update-process.php?id=<?php echo $mfname['IdName']?>">
							<button class="btn"style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
						</a>
					<?php } } ?>
				</form>
			</div>
		</section>
	</div>