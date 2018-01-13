<?php
	header("Content-Type:application/json;charset=utf-8;");
	require("../init.php");
	session_start();
	@$uid=$_SESSION["uid"];
	if(!$uid){
		echo '{"code":-1,"msg":"您还未登录"}';
	}else{
		$sql="select user_name from eq_user where uid=$uid";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_fetch_row($result);
		echo json_encode($row[0]);
	}
?>