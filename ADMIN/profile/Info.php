<!--  -->
<div class="content-w3ls">
	<div style="background:#fff; text-align: center"><h1>THÔNG TIN CÁ NHÂN</h1></div>
	<div class="content-agile1">
		<img src="../../IMG/<?php if($g[0]['Img']==NULL){echo 'avatar-facebook-doc.jpg';}else{echo $g[0]['Img'];}?>" alt="avarta">
		<label for="file" style="display: flex;justify-content: center;">Avartar</label>
	</div>
	<div class="content-agile2" style="background: gray;">
		<form action="info-process.php" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $g[0]['ID'] ?>">
			<div class="form-control "> 
				<input type="text" class="lock" name="firstname" value="<?php echo $g[0]['Name'] ?>" title="Please enter your First Name" required="">
			</div>

			<div class="form-control "> 
				<input type="text" class="lock" name="username" value="<?php echo $g[0]['Username'] ?>" title="Please enter your First Name" required="">
			</div>

			<div class="form-control ">	
				<input type="text" class="lock" name="password" value="<?php echo $g[0]['Password'] ?>" id="password1" required="">
			</div>	

			<div class="form-control ">	
				<input type="email" class="lock" name="email" value="<?php echo $g[0]['Email'] ?>" title="Please enter a valid email" required="">
			</div>

			<div class="form-control kaka">	
					<input type="file" class="lock" name="img" placeholder="Password" id="file">
			</div>	

			<div class="form-control" style="margin: 40px 0px;">	
				<span for="" style="color: white;margin-left: 58px;">
				Admin:<input type="radio"  name="gender" <?php if ($g[0]['Roles'] == 1) {echo "checked";}?> readonly>                                          
				Super admin:<input type="radio"  name="gender" <?php if ($g[0]['Roles'] == 0) {echo "checked";}?> readonly>
				</span>
			</div>			
			
			<input type="submit" class="register" name="update" value="Cập nhật">
		</form>
	</div>
	<div class="clear"></div>
</div>
