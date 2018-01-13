<?php
	header("Content-Type:application/json;charset=utf-8;");
	require("../init.php");
	$uname=$_REQUEST["uname"];
	$upwd=$_REQUEST["upwd"];
	$email=$_REQUEST["email"];
	$phone=$_REQUEST["phone"];
	$sql="insert into eq_user(uname,upwd,email,phone) values('$uname','$upwd','$email','$phone')";//全部为字符串
	$result=mysqli_query($conn,$sql);
	$row=mysqli_affected_rows($conn);
	if($row>0){
		echo '{"code":1,"msg":"注册成功"}';
	}else{
		echo '{"code":-1,"msg":"注册失败"}';
	}
?>