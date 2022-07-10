	var i = 0; //存放nav导航条里面的li的下标
	var j = -1; //存放but_li小圆点导里面的li的下标
	var time = 0; //存放showTopLeft定时函数
	var time2 = 0; //存放showTopRight定时函数
	var time3 = 0;//存放showBottom定时函数
//点击nav里面的li显示对应的con_img内容
$(".nav ul li").click(function(){
		j = -1;
		i =$(this).index();
		$(this).addClass("bg").siblings().removeClass("bg");
		$(".con .con_img").eq(i).show().siblings().hide();
})

//滑动到.but_li小圆点里面的li显示对应的con_img里面
//的.pic里对应的img内容
$(".but_li ul li").hover(function(){
		clearInterval(time);  //滑动li上清除定时器
		j =$(this).index();
		$(this).css("background","#972022")
			   .siblings().css("background","#fff");
		$(".con .con_img").eq(i).find(".pic img").eq(j).show()
						  .siblings().hide();
},function(){
	time = setInterval("junm()",3000); //离开li启动定时器
})
//showTopLeft定时函数开始
var d = 0; //表示鼠标当前点击的li下标
var range = 0; //表示鼠标之前点击的li下标
function junm(){
	$(".con .con_img").eq(i).show().siblings().hide();
	j++;
	$(".con .con_img").eq(i).find(".pic img").eq(j).show().siblings().hide();
	$(".con .con_img").eq(i).find(".but_li ul li")
					  .eq(j).css("background","#972022").siblings().css("background","#fff");
	if(j>1)
		j=-1;
}
time = setInterval("junm()",3000);
//showTopLeft定时函数结束
$(".rightBut .s1").click(function(){
	 d--;
	 if(d<0)
		 d=2;
	  range =d*-320;
	 $(".rightCon ul").animate({top:range+'px'},200);
})
$(".rightBut .s2").click(function(){
	 d++;
	 if(d>2)
		 d=0;
	 range =d*-320;
	 $(".rightCon ul").animate({top:range+'px'},200);
})
$(".rightBut span").hover(function(){
		clearInterval(time2);  //滑动li上清除定时器
},function(){
	time2 = setInterval("junm2()",2000); //离开li启动定时器
})
//showTopRight定时函数开始
	function junm2(){
		d++;
	 if(d>2)
		 d=0;
	 range =d*-320;
	 $(".rightCon ul").animate({top:range+'px'},200);
	}
time2 = setInterval("junm2()",2000);
//showTopRight定时函数结束

//showBottom定时函数开始
var n = 0;  //存放showBottom中ul移动的次数 
var s = 0; //存放showBottom中ul移动的总距离 
function junm3(){
	n++;
	if(n<8){
		s = n*-256;
		$(".showBottom ul").animate({left:s+'px'},500);
	}
	else{
		n = 1;
		$(".showBottom ul").css("left","0px");
		$(".showBottom ul").animate({left:"-256px"},500);
	}
}
time3 = setInterval("junm3()",2000);
//showBottom定时函数结束

//showBottom btn区域开始
//showBottom btn btnLeft区域开始
	$(".btn .btnLeft").click(function(){
		n++;
	if(n<8){
		s = n*-256;
		$(".showBottom ul").animate({left:s+'px'},500);
	}
	else{
		n = 1;
		$(".showBottom ul").css("left","0px");
		$(".showBottom ul").animate({left:"-256px"},500);
	}
	})
//showBottom btn btnLeft区域结束
$(".btn .btnRight").click(function(){
		n--;
	if(n>-1){
		s = n*-256;
		$(".showBottom ul").animate({left:s+'px'},500);
	}
	else{
		n = 6;
		$(".showBottom ul").css("left","-1792px");
		$(".showBottom ul").animate({left:"-1536px"},500);
	}
	})
//showBottom btn btnRight区域开始

//showBottom btn btnRight区域结束
	$(".btn span").hover(function(){
		clearInterval(time3);
	},function(){
		time3 = setInterval("junm3()",2000);
	})
//showBottom btn区域结束