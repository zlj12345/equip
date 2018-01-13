<?php
	header("Content-Type:application/json;charset:utf-8;");
	require("../init.php");
	$eid=$_REQUEST["eid"];//从前台传来的商品的id，前台需要为每个商品绑定一个id
	$sql="select category,lname from eq_equip where eid=$eid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	echo json_encode($row);
?>