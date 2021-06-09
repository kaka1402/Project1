			<?php
			include("connect/open.php");
			
			$accounts = "SELECT * FROM tbl_accounts";
			$resultsql = mysqli_query($con , $accounts);
			if($resultsql != null){
				$num = mysqli_num_rows($resultsql);
			}

			include("connect/close.php");
			
			?>
			
			
			<div class="wrapper _1">
				<section style="  width: 600px;">
					<div class="content_content">
						<h1 class="text-center">Thêm Nhân Viên</h1>
						<form action="manage_admin/add-process.php"  method="post" enctype="multipart/form-data">
							
							<div class="form-group">
								<label for="username">Username:</label>
								<input  type="text" class="form-control" id="username" name="username" >
							</div>

							
							<div class="form-group">
								<label for="password">Password:</label>
								<input  type="text" class="form-control" id="password" name="password" >
							</div>


							
							<div class="form-group">
								<label for="name">Name:</label>
								<input  type="text" class="form-control" id="name" name="name" >
							</div>


							
							<div class="form-group">
								<label for="email">Email:</label>
								<input  type="text" class="form-control" id="email" name="email" >
							</div>

							
							<div class="form-group">
								<label for="numberphone">Numberphone:</label>
								<input  type="number" class="form-control" id="numberphone" name="numberphone" >
							</div>


							
							<div class="form-group">
								<label for="address">Address:</label>
								<input  type="text" class="form-control" id="address" name="address" >
							</div>

							

							<div class="form-group">
								<label for="role">Role:</label>
								<select class="form-control" name="role" id="role">
									<option value="1">admin</option>
									<option value="0">super admin</option>
								</select>
							</div>
							<button class="btn" type="submit" name="submit" style="margin: 20px 0;width: 80px; height: 35px; background: tomato;border: none; border-radius: 12px;">Thêm</button>
						</form>
						
					</div>
				</section>
			</div>
			
