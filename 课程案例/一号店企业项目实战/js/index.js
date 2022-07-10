$(function(){//浏览器加载完html文档再调用js
	//alert($);//弹出jquery的代理函数$=jquery

	//头部banner动画
	var mark = 1;
	$("#hd_header_wrap div.banner p").click(function(){
		if(mark == 1){
			$(this).children("span").html("收缩");
			$(this).children("i").css({
				"border-bottom-color":"#fff",
				"border-top-color":"transparent",
				"margin-top":"-5px"
			});
			$(this).siblings().attr("src","images/banner2.jpg").animate({
				"height":"300px"
			},1000);
			mark = 0;
		}else{
			$(this).children("span").html("展开");
			$(this).children("i").css({
				"border-bottom-color":"transparent",
				"border-top-color":"#fff",
				"margin-top":"0px"
			});
			$(this).siblings().animate({
				"height":"60px"
			},1000,function(){
				$(this).attr("src","images/banner1.jpg");
			});
			mark = 1;
		}
	});

	//头部搜素框动画
	var $input = $(".search div.form input");
	$input.click(function(){
		$(this).siblings("label").css("color","#ccc");
		var $this = $(this);
		setTimeout(function(){
			$this.siblings("div.search_con").show();
		},500);
	});

	$(".search div.form div.search_con").mouseout(function(){
		$(this).hide();
	});

	$input.keydown(function(){//键盘键按下
		$(this).siblings("label").hide();
		$(this).focus(function(){//有焦点
			$(this).siblings("label").hide();
		});
	});

	
	$input.blur(function(){//失去焦点
		if($input.val()==""){//判断内容是否为空
			$(this).siblings("label").show();
		}
	});

	//搜索框前面小箭头滚动特效
	$(".search div.form div.form_shop").hover(function(){
		$(this).children("i").animate({
			"background-positionY":"-70px"
		},500);
		//alert(1);
	},function(){
		$(this).children("i").animate({
			"background-positionY":"-60px"
		},500);
	});
	
	//右侧导航切换特效
	var index = 0;
	$(".layout div.app ul li").hover(function(){
		index = $(this).index();
		//alert(index);
		$(this).addClass("first").siblings().removeClass("first");
	$(".layout div.app div").eq(index).show().siblings("div").hide();
		//$(this).children("div").show().parent().siblings().children("div").hide();
	});

	//banner轮播特效
	var i = 0;
	var $box_li = $(".box ul li");
	var $ban_li = $(".banner ul li");
	var time = null;
	$box_li.hover(function(){
		i = $(this).index();//i = 0-7
		play();
	});
	
	$("#banner").hover(function(){//鼠标移进来
		$(".btn").show();//显示
		clearInterval(time);
	},function(){//鼠标移开
		$(".btn").hide();//隐藏
		autoPlay1();
	});

	$(".next").click(function(){//鼠标点击
		i++;//i = i+1;
		play();
	});

	$(".pre").click(function(){
		i--;
		play();
	});

	function play(){
		i%=8;//i=i%8余多少
		$box_li.eq(i).addClass("curr").siblings().removeClass("curr");
		$ban_li.eq(i).fadeIn().siblings().fadeOut();
	}

	function autoPlay1(){
		time = setInterval(function(){
			i++;
			play();
		},2000);
	}
	autoPlay1();

	//内容部分的banner轮播
	var n = 0;
	var timer = null;
	var $p2_li = $(".part2 div.b_con ul.icon_box li");
	var $p2_ul = $(".part2 div.b_con ul.img");
	var $p2_con = $(".part2 div.b_con");
	function autoPlay0($a,$b,$c){
		$a.hover(function(){
			n = $(this).index();
			$(this).addClass("big").siblings().removeClass("big");
			$(this).children().css("width","30px").parent().siblings().children().css("width","0px");
			$b.animate({"left":-n*330+"px"},200);
			//console.log("li:"+n);
			n+=1;
		});
		//鼠标移进移出
		$c.hover(function(){
			$a.eq(n-1).children().stop().css("width","30px");
			clearInterval(timer);
		},function(){
			$a.eq(n-1).children().stop().css("width","0px");
			n-=1;//n = n-1;
			auto();
			autoPlay2();
			//console.log("div:"+n);
		});

		//自动轮播
		function autoPlay2(){
			timer = setInterval(auto,2200);//调用auto()
		}
		autoPlay2();
		//红色背景移动特效
		function auto(){
			$a.eq(n).addClass("big").siblings().removeClass("big");
			$a.eq(n).children().animate({"width":"30px"},2000,function(){
				$(this).css("width","0px");
				$b.animate({"left":-n*330+"px"},200);
			});
			n++;
			n%=3;
		}
	}
	
	autoPlay0($p2_li,$p2_ul,$p2_con);
	//右侧楼梯式导航特效
	
	var $index = 0;
	//var onOff = true;
	//点击滚动到相应的内容块
	$("#floor a").click(function(){
		//onOff = false;
		$index = $(this).index();
		if($index<10){
			var $top = $(".part2").eq($index).offset().top;//获取对应序列号的part2内容块相对于浏览器的上偏移量
			$("html,body").animate({"scrollTop":$top-70},1000);//让浏览器右侧滚动条滚动到相应内容的位置
		}else if($index==10){
			$("html,body").animate({"scrollTop":0},1000);
		}
	});
	
	//滚动条特效
	var h = $(window).height();//获取浏览器窗口的高度
	console.log("h:"+h/2);
	$(window).scroll(function(){
	
		var $t = $(window).scrollTop();
		console.log("$t:"+$t);
		if($t>0){
			$("#floor").show();
		}else if($t==0){
			$("#floor").hide();
		}
		
		for(var i = 0;i<10;i++){
			var top = $(".part2").eq(i).offset().top-$t;
			console.log(top);
			if(top>h/2){
				if(i==0){
					break;
				}else{
					$("#floor a").eq(i-1).children("span").fadeIn().parent().siblings().children("span").fadeOut();
					break;
				}
			}
		}
		
	});
	//返回顶部
	/*$("#floor a.top").click(function(){
		$(document).scrollTop(0);
	});*/

	//刷新页面 滚动条高度为0
	setTimeout(function(){
		$(document).scrollTop(0);
	},30);
})

//window.onload = function(){}