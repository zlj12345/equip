<?php
	require("../init.php");
	//获得商品详情的函数
	function getpDetailById(){
		$eid=$_REQUEST["eid"];
		global $conn;
		$sql="select lname,title,category,promise,price from eq_equip where eid=$eid";
		$result=mysqli_query($conn,$sql);
		$rows=mysqli_fetch_all($result,1);
		echo json_encode($rows);
	}
	//加载商品左侧大中小图片，放大镜效果
	function loadPicById(){
		$eid=$_REQUEST["eid"];
		global $conn;
		$sql="select sm,md,lg from eq_pic where eq_id=$eid";
		$result=mysqli_query($conn,$sql);
		$rows=mysqli_fetch_all($result,1);
		echo json_encode($rows);
	}
?>