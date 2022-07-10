<?php
 header("content-type:text/html;charset=utf-8"); //编码格式
	include_once('./sql/db.php');	//引入连接数据的文件
	$rs=$mod->query("select * from iqiyi"); //查询iqiyi这个表格
	$d=$rs->fetchAll(PDO::FETCH_ASSOC); //取出数据，并且存在数组当中
	//把数组里面的内容，已HTML文档的格式输出 循环
	foreach ($d as $value){
		echo '<dl ><dt><a href=""><img src="'.$value["url"].'"/></a><i class="mark-1080p"></i><span class="title_right">02-25期</span></dt><dd><a href="">'.$value["title"].'</a></dd><dd class="padding-b5 "><a href="" class="color_6">'.$value["content"].'</a></dd></dl>';
	}
?>