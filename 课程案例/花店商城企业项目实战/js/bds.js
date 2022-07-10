$("#bds_con").css({width:"222px",height:"222px"}); //加载页面就弹出百度信誉卡的区域
$("#bds_unfold").click(function(){
	$(this).hide(); //点击bds_unfold图标时把自己隐藏
	$("#bds_con").animate({width:"222px",height:"222px"},200);  
	//点击bds_unfold图标弹出bds_con区域
})
$("#bds_con .shouqi").click(function(){
	$("#bds_con").animate({width:"0px",height:"0px"},200,function(){
		$("#bds_unfold").show();  //点击收起区域把#bds_con收起,再显示bds_unfold图标
	});
})