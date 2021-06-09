<?php 
function noreturn($sql){
	$con=mysqli_connect("localhost","root","","atp2");
	mysqli_query($con,$sql);
	mysqli_close($con);
}

function returnnn($sql){
	$con=mysqli_connect("localhost","root","","atp2");
	$run=mysqli_query($con,$sql);
	$list=array();
	while ($row=mysqli_fetch_array($run,1)) {
		$list[]=$row;
	}
	mysqli_close($con);
	return $list;
}
function counttt($sql){
	$con=mysqli_connect("localhost","root","","atp2");
	$run=mysqli_query($con,$sql);
	$row=mysqli_num_rows($run);
	mysqli_close($con);
	return $row;
}
function MANG($sql){
	$con=mysqli_connect("localhost","root","","atp2");
	$run=mysqli_query($con,$sql);
	$row=mysqli_fetch_assoc($run);
	mysqli_close($con);
	return $row;
}
function lastid($sql){
	$con=mysqli_connect("localhost","root","","atp2");
	$run=mysqli_query($con,$sql);
	$last_id = mysqli_insert_id($con);
	mysqli_close($con);
	return $last_id;
}