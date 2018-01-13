<?php
	require("../init.php");
	function getNewsByPage(){
		global $conn;
		$pno=$_REQUEST["pno"];
		if(!$pno){
			$pno=1;
		}
		$pageSize=5;
		$offset=($pno-1)*$pageSize;
		$sql="select count(*) from eq_dynamic where expire='0'";
		$result=mysqli_query($conn,$sql);
		$counts=mysqli_fetch_row($result)[0];
		$totalPage=ceil($counts/$pageSize);
		$sql="select * from eq_dynamic where expire='0' limit $offset,$pageSize";
		 $result=mysqli_query($conn,$sql);
		 $rows=mysqli_fetch_all($result,1);
		 $output=[
			"pageSize"=>5,
			"pno"=>$pno,
			"totalPage"=>$totalPage,
			"data"=>$rows
		 ];
		 echo json_encode($output);
	 }

?>