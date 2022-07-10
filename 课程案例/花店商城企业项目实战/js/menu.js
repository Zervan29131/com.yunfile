	var a_flag = 0;
$(".menu .m_w1000 ul li").click(function(){
	$(this).children("a").addClass("bg");
	$(this).siblings().children("a").removeClass("bg");
})
$(".menu .m_w1000 ul li .subnav").hover(function(){
	a_flag = 1;
})
$(".menu .m_w1000 ul li").hover(function(){
	$(this).children(".subnav").stop(true,true).slideDown(); 
	//获取到当前li下的子元素.subnav然后向下滑出 
//在向下滑出动画执行前结束之前所有的动画，并且跟上true,true表示回到最初状态
},function(){
	$(this).children(".subnav").stop(true,true).slideUp();
})