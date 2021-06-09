
<style>
	.main_1{
		margin: 20px;
	}
	.dell{
		border-radius: 5px;
		width: 100%;
		margin-top:10px;
	}
	.name{
		width: 100%;
		text-align: center;
		color: red;
		background: yellow;
		margin-top: 3px;
	}
	
	.item{
		width: 233px;
		height: 280px;
		margin: 7px;
		border-radius: 10px;
	}
	.item img{
		margin-left: 12px;
	}
	.link{
		text-align: center;
		color: red;
		margin-bottom: 5px;
	}
	.scrollmenu {
		overflow-x: auto;
		white-space: nowrap;
		scroll-snap-type: x mandatory;
		width:100%;
	}

	.scrollmenu div {
		display: inline-block;
		color: white;
		scroll-snap-align: start;
	}
	.scrollmenu::-webkit-scrollbar {
		width: 9px;
		height: 9px;
	}

	.scrollmenu::-webkit-scrollbar-thumb {
		background-color: rgba(0,0,0,0.4);
		border-radius: 10rem;
		border: 1px solid #23242D;
	}

	.overflow::-webkit-scrollbar {
		width: 9px;
		height: 9px;
	}

	.overflow::-webkit-scrollbar-thumb {
		background-color: rgba(0,0,0,0.4);
		border-radius: 10rem;
		border: 1px solid #23242D;
	}

	.card {
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		overflow: hidden;
		white-space: nowrap;
	}
	.container {
		/*  padding: 0 16px; */
	}
	.container>p,h2{
		color: black;
		margin-left: 5px;
	}
	.title {
		color: grey;
	}

	.button {
		border: none;
		outline: 0;
		display: inline-block;
		padding: 8px;
		color: white;
		background-color: #000;
		text-align: center;
		cursor: pointer;
		width: 100px;
		border-radius: 8px; 
		margin-left: 51px;
	}

	.button:hover {
		background-color: #555;
	}
	.card>p{
		text-overflow: ellipsis; 
		margin-left: 3px;
	}

</style>
<body class="overflow">
	<div class="main_1">
		<div class="dell">
			<?php
			$menu=returnnn("SELECT * FROM 	tbl_mfname WHERE Status='0'");
			foreach ($menu as $key) { $id=$key['IdName'];
			// $hai="SELECT * FROM tbl_products WHERE MfName='$id' and Status is Null";
			// echo $hai;
			$show1=returnnn("SELECT * FROM tbl_products WHERE MfName='$id' and Status='0'");
			// var_dump( $show1);
			$i=0;
			?>
			<?php 
			if($show1!=NULL){
				?>
				<div class="name"><h1><?php  echo $key['MfName']?></h1></div>
				<div class="scrollmenu">
					<?php foreach ($show1 as $key1) { if($i++ < 6){?>
						<div class="item card">
							<img src="IMG/<?php echo $key1['Img'] ?>" alt="Jane" style="width:90%;height: 150px; margin-top: 2px;" ><br>
							<div class="container">
								<p class="title" style="margin-top: 3px;margin-bottom: 3px; text-overflow:clip"><span ><?php echo $key1['ProductName'] ?></span></p>
								<p style="margin-top: 3px;margin-bottom: 3px;"><?php echo number_format($key1['Price']) ?>đ</p>
								<?php if($key1['Number']>0){ ?><p style="color: green;margin-top: 3px;margin-bottom: 3px;">Còn hàng</p><?php }else{ ?><p style="color:red;margin-top: 3px;margin-bottom: 3px;">Hết hàng</p><?php } ?>
								<form action="index.PHP?MENU=PRODUCT"  method="post">
									<input type="hidden" name="pr" value="<?php echo $key1['ProductID'] ?>">
									<button class="button" type="submitpr" name="submitpr" >Chi tiết</button>
								</form>
							</div>
						</div>
					<?php }}?>
				</div>
				<div class="link"><a  href="index.php?MENU=MF&MF=<?php echo $key['MfName']?>">Xem Thêm ❯❯❯</a></div>
				
			<?php }} ?>
		</div>
	</div>
</body>
<!-- <script>
            
    function ssss()
    {
        document.getElementById('kaka').innerHTML = '<marquee><?php echo $key1['ProductName'] ?></marquee>';
    }


     function ggg()
    {
        document.getElementById('kaka').innerHTML = '<span id="kaka"><?php echo $key1['ProductName'] ?></span>';
    }       
</script> -->
