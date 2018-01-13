<?php
	header("Content-Type:application/json;charset=utf-8;");
	require("../init.php");
	$fid=$_REQUEST["fid"];
	$sql="select eid,title,price,lname,category,(select md from eq_pic where eq_id=eid limit 1) as md,(select pic from eq_family where fid=$fid) as lg from eq_equip where family_id=$fid";
	$result=mysqli_query($conn,$sql);
	$rows=mysqli_fetch_all($result,1);
	echo json_encode($rows);
?>