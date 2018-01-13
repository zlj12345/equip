<?php
	header("Content-Type:application/json;charset=utf-8;");
	$uname=$_REQUEST["uname"];
	$upwd=$_REQUEST["upwd"];
	require("../init.php");
	$sql="select uid from eq_user where uname='$uname' and binary upwd='$upwd' ";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	session_start();
	$_SESSION["uid"]=$row[0];
	if($row){
		echo '{"code":1,"msg":"登录成功！"}';
	}else{
		echo '{"code":-1,"msg":"用户名或密码不正确！"}';
	}
?>