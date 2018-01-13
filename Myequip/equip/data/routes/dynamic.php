<?php
	header("Content-Type:application/json;charset:utf-8;");
	require("../controllers/dynamic_controller.php");
	getNewsByPage();
?>