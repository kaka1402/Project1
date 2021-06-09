			<?php
			include("connect/open.php");
			
			$customers = "SELECT * FROM tbl_customers";
			$resultcus = mysqli_query($con , $customers);
			if($resultcus != null){
				$num = mysqli_num_rows($resultcus);
			}

			include("connect/close.php");
			
			?>
			
			
			<div class="wrapper _1">
				<section style="  width: 600px;">
					<div class="content_content">
						<h1 class="text-center">Thêm Tài Khoản</h1>
						<form action="manage_user/add-process.php"  method="post" enctype="multipart/form-data">
							
							<div class="form-group">
								<label for="username">Full Name:</label>
								<input  type="text" class="form-control" id="fullname" name="fullname" >
							</div>

							
							<div class="form-group">
								<label for="password">Gender:</label>

								<select class="form-control" name="gender" id="gender">
									<option value="0">Male</option>
									<option value="1">Female</option>
								</select>
							</div>


							
							<div class="form-group">
								<label for="name">Email:</label>

								<input  type="text" class="form-control" id="email" name="email" >
							</div>


							
							<div class="form-group">
								<label for="email">Username:</label>

								<input  type="text" class="form-control" id="username" name="username" >
							</div>

							
							<div class="form-group">
								<label for="numberphone">Password:</label>

								<input  type="text" class="form-control" id="password" name="password" >
							</div>

							
			    <!-- <div class="form-group">
				  <label for="img">Img:</label>

				  <input  type="text" class="form-control"id="img" name="img" >
				</div> -->
				
				<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Save</button>
			</form>
			
		</div>
	</section>
</div>
