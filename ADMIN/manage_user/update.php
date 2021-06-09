<?php
include("connect/open.php");
if(isset($_GET["id"])){
	$id=$_GET["id"];
	$search = "";
	$customer = "SELECT * FROM tbl_customers WHERE CustomerID = '$id' ";
	$resultcus = mysqli_query($con , $customer);
	if($resultcus != null){
		$num = mysqli_num_rows($resultcus);
	}
}

include("connect/close.php");

?>

<div class="wrapper _1">
	<section style=" width: 600px; ">
		<div class="content_content">
			<h1 class="text-center">Sửa Tài Khoản</h1>
			<form action="manage_user/update-process.php?id=<?php echo $_GET["id"]?>"  method="post" enctype="multipart/form-data">			
				<?php  
				if($resultcus != null){
					while($customer = mysqli_fetch_array($resultcus) ) { ?>
						
						<div class="form-group">
							<label for="fullname">Full Name:</label>
							<input type="text"  name="fullname" value="<?php echo $customer["CustomerName"] ?>" required="true">
						</div>

						<div class="form-group">
							<label for="gender">Gender:</label>
							
							<select class="form-control" name="gender" id="gender">
								<option value="0" <?php if($customer["Gender"]==0){echo 'selected';} ?>>Nam</option>
								<option value="1" <?php if($customer["Gender"]==1){echo 'selected';} ?>>Nữ</option>
							</select>
						</div>

						<div class="form-group">
							<label for="gender">Gender:</label>
							
							<select class="form-control" name="key" id="gender">
								<option value="0" <?php if($customer["Status"]==0){echo 'selected';} ?>>Mở khóa</option>
								<option value="1" <?php if($customer["Status"]==1){echo 'selected';} ?>>Khóa</option>
							</select>
						</div>

						<div class="form-group">
							<label for="email">Email:</label>
							<input type="text"  name="email" value="<?php echo $customer["Email"] ?>" required="true">
						</div>

						<div class="form-group">
							<label for="username">Username:</label>
							<input type="text"  name="username" value="<?php echo $customer["Username"] ?>" required="true">
						</div>

						<div class="form-group">
							<label for="password">Password:</label>
							<input type="text"  name="password" value="<?php echo $customer["Password"] ?>" required="true">
						</div>
						<a href="manage_user/update-process.php?id=<?php echo $customer['CustomerID']?>">
							<button class="btn"style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
						</a>
					<?php } } ?>
				</form>
			</div>
		</section>
	</div>