<?php
	header("Content-Type:application/json;charset=utf-8;");
	require("../init.php");
	$kw=$_REQUEST["kw"];
	@$pno=$_REQUEST["pno"];
	if(!$pno){
		$pno=1;
	}
	$pageSize=8;
	$offset=($pno-1)*$pageSize;
	$sql="select count(*) from eq_equip";
	$p="";
	if($kw){
  		$kws=explode(" ",$kw);
  		for($i=0;$i<count($kws);$i++){
  			$kws[$i]=" lname like '%".$kws[$i]."%' ";
  		}
  		$p.=" where ".implode(" and ",$kws);
  	}
  $sql.=$p;
  $result=mysqli_query($conn,$sql);
  $counts=mysqli_fetch_row($result)[0];
  $totalPage=$counts/$pageSize;
	$sql="select lname,price,eid,(select md from eq_pic where eid=eq_id limit 1) as md from eq_equip ";
	$sql.=$p;
	$sql.=" order by sold_count desc";
	$sql.=" limit $offset,$pageSize";
	$result=mysqli_query($conn,$sql);
	$data=mysqli_fetch_all($result,1);
	$output=[
		"pno"=>$pno,
		"pageSize"=>$pageSize,
		"totalPage"=>$totalPage,
		"data"=>$data
	];
	echo json_encode($output);
?>