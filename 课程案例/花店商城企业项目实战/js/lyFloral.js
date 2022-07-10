var time = 0; //存放定时函数
//鼠标移动到li上滑出span条
$(".pic ul li").hover(function(){
	$(this).children("span").stop().animate({width:"221px"},300);
},function(){
	//鼠标移出li收回span条
	$(this).children("span").stop().animate({width:"0px"},300);
})
//清除定时器
	$(".con div").hover(function(){
		clearInterval(time);
	},function(){
		time = setInterval("junFloral()",2500);
	})

//定时函数开始
function junFloral(){
	$(".pic ul").css("left","0px");
	$(".pic ul").animate({left:"-940px"},500);
}
time = setInterval("junFloral()",2500);
//定时函数结束
//点击左边prev按钮切换内容开始
$(".con .prev").click(function(){
	$(".pic ul").css("left","-940px");
	$(".pic ul").animate({left:"0px"},500);
})
//点击左边prev按钮切换内容结束
//点击右边next按钮切换内容开始
$(".con .next").click(function(){
	$(".pic ul").css("left","0px");
	$(".pic ul").animate({left:"-940px"},500);
})
//点击右边next按钮切换内容结束