	<?php
	include("connect/open.php");
	$search = "";
	if(isset($_GET["id"])){
		$id = $_GET["id"];
	}

	$admin = "SELECT * FROM tbl_accounts WHERE ID ='$id'";
	$resultsql = mysqli_query($con , $admin);
	if($resultsql != null){
		$num = mysqli_num_rows($resultsql);
	}
	include("connect/close.php");
	
	?>
	<div class="wrapper _1">
		<section style=" width: 600px; ">
			<div class="content_content">
				<h1 class="text-center">Sửa Tài Khoản</h1>
				<form action="manage_admin/update-process.php?id=<?php echo $_GET["id"]?>"  method="post" enctype="multipart/form-data">			
					<?php  
					if($resultsql != null){
						while($admin = mysqli_fetch_array($resultsql) ) { ?>
							<tr>
								<input type="hidden" name="id" value="<?php echo $admin["ID"] ?>">

								<div class="form-group">
									<label for="username">Username:</label>
									<input  type="text" class="form-control" id="username" name="username" value="<?php echo $admin["Username"] ?>" required="true">
								</div>

								
								<div class="form-group">
									<label for="password">Password:</label>

									<input  type="text" class="form-control" id="password" name="password" value="<?php echo $admin["Password"] ?>" required="true">
								</div>


								
								<div class="form-group">
									<label for="name">Name:</label>

									<input  type="text" class="form-control" id="name" name="name" value="<?php echo $admin["Name"] ?>" required="true">
								</div>


								
								<div class="form-group">
									<label for="email">Email:</label>

									<input  type="text" class="form-control" id="email" name="email"value="<?php echo $admin["Email"] ?>" required="true" >
								</div>

								
								<div class="form-group">
									<label for="numberphone">Numberphone:</label>

									<input  type="number" class="form-control" id="numberphone" name="numberphone" value="<?php echo $admin["Numberphone"] ?>" required="true">
								</div>


								
								<div class="form-group">
									<label for="address">Address:</label>

									<input  type="text" class="form-control" id="address" name="address" value="<?php echo $admin["Address"] ?>" required="true">
								</div>


								
						   <!--  <div class="form-group">
							  <label for="img">Img:</label>

							  <input  type="text" class="form-control"id="img" name="img" value="<?php echo $admin["Img"] ?>" required="true">
							</div> -->
							

							<div class="form-group">
								<label for="role">Role:</label>

								<select class="form-control" name="role" id="role" >
									<option value="1" <?php if($admin["Roles"]==1){echo"selected";} ?>>admin</option>
									<option value="0"  <?php if($admin["Roles"]==0){echo"selected";} ?>>super admin</option>
								</select>
							</div>



							<td>
								<a href="manage-admin/update-process.php?id=<?php echo $admin['ID']?>"> 
									<button class="btn" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
								</a>
							</td>

						</tr>

					<?php } } ?>
				</table>
			</form>
		</div>
	</section>
</div>

