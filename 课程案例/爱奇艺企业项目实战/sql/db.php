<?php
	 header("content-type:text/html;charset=utf-8"); //编码格式
	$dsn='mysql:host=localhost;dbname=phpword'; //链接到服务器的数据库
	 try {
		 $mod= new PDO($dsn, 'root', 'root'); //提供用户名和密码
		 $mod->exec("set names utf8");
		}catch (PDOException $e) { //链接数据库失败
			exit('数据库连接失败，错误信息：'. $e->getMessage());	
		}
?>