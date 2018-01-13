<?php
	require("../init.php");
	$uname=$_REQUEST["uname"];
	$sql="select uid from eq_user where uname='$uname'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	//如果存在同名，输出1，否则输出0
	if($row){
		echo 1;
	}else {
		echo 0;
	}
?>