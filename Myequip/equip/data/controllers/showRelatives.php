<?php
	header("Content-Type:application/json;charset=utf-8;");
	require("../init.php");
	$eid=$_REQUEST["eid"];
	$sql="select family_id from eq_equip where eid=$eid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	$fid=$row[0];
	$sql="select eid,lname,price,(select sm from eq_pic where eid=eq_id limit 1) as sm from eq_equip where family_id=$fid and eid not in ($eid)";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_all($result,1);
	echo json_encode($row);
?>