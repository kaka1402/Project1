<?php  
include('../../funtion.php');
session_start();
if(isset($_GET['id'])){
	$idproduct= $_GET['id'];
}
$show7=MANG("SELECT*FROM tbl_products WHERE ProductID ='$idproduct'");
// var_dump($show7);
// die();
$checkorder= $show7['Number'];
$action=(isset($_GET['action']))? $_GET['action'] : 'add';
$item1=[
	'id'=>$show7['ProductID'],
	'name'=>$show7['ProductName'],
	'img'=>$show7['Img'],
	'price'=>$show7['Price'],
	'quantity'=>1
];

if($action=='add'){
	if(isset($_SESSION['Cart'][$idproduct])){
		if($_SESSION['Cart'][$idproduct]['quantity']<$checkorder){
			$_SESSION['Cart'][$idproduct]['quantity']+=1;
		}else{$_SESSION['Cart'][$idproduct]['quantity']=$checkorder;}
	}else{
		$_SESSION['Cart'][$idproduct]=$item1;
	}
	header('Location: ../../index.php?MENU=CRAT&cart=0');
}
if($action=='update'){
	if($_GET['count']<1){ 
		$count=1;
	}else if($_GET['count']>$checkorder){
		$count=$checkorder;
	}else{$count=$_GET['count'];}
		// echo $_SESSION['Cart'][$idproduct];
	if(isset($_SESSION['Cart'][$idproduct])){
		$_SESSION['Cart'][$idproduct]['quantity']=$count;
		
		// die();
		}// echo $_GET['count'];
		header('Location: ../../index.php?MENU=CRAT');
	}
	if($action=='delete'){
		unset($_SESSION['Cart'][$idproduct]);
		header('Location: ../../index.php?MENU=CRAT');
	}

	?>