
	var d_Value=$(".search input.txt").val();//获取到他的默认的值
	//获取焦点时
	$(".search input.txt").focus(function(){
	//$(this)同等于我们的 $(".search input.txt")
		if($(this).val()==d_Value){
			$(this).val("");//当前输入框的值设置为空
			//$(this).css("border","1px solid red");
		}
	});
	//失去焦点
	$(".search input.txt").blur(function(){
		if($(this).val()==""){
			$(this).val(d_Value);//给他赋他的初始值
		}
	});

	//二级菜单的实现
	$(".Nav .mainNav ul li").hover(function(){
		$(this).find(".menu").show();//显示 .menu 盒子
		$(this).addClass("hover");//给li添加 class="hover"
	},function(){
		$(this).find(".menu").hide();//隐藏
		$(this).removeClass("hover");//移除 li class="hover"
	});

	//=======广告轮播图的实现=======
	var _index=0;//初始化序列  
	var timePlay=null;
	$("#Adv .ImgList").eq(0).show().siblings("div").hide();//最开始显示第一张

	$("ul.button li").hover(function(){/*鼠标在上面*/ 
		clearInterval(timePlay);//清处定时播放器
		_index=$(this).index();//获取当前li序列号
		//alert(_index);//弹窗
		$(this).addClass("hover").siblings().removeClass("hover");//显示按扭
		//fadeIn  淡入  fadeOut 淡出  
		$("#Adv .ImgList").eq(_index).fadeIn().siblings("div").fadeOut();//显示图片
	},function(){/*鼠标移开*/
		autoPlay();//启用定时播放器
	});

	//自动轮播
	//构建自动轮播的函数
	function autoPlay(){
		//alert("sss");
		//设置定时器
		timePlay=setInterval(function(){
			_index++;
			if(_index<4){
				if(_index==3){_index=-1; }//变成-1 
				$("ul.button li").eq(_index).addClass("hover").siblings().removeClass("hover");//显示按扭
				$("#Adv .ImgList").eq(_index).fadeIn().siblings("div").fadeOut();//显示图片
				 
			}else{_index=-1;/*设置序列号为-1,跳到播放第一张图片*/}
		},2000);	
	};
	autoPlay();//调用和执行




	//路线推荐 图片文字滑动效果
	$("ul.sel_imgList li").hover(function(){
			$(this).find("p").stop().animate({height:"41px"},200)
	},function(){
			$(this).find("p").stop().animate({height:"0px"},200)
			});


//第一部分内容区广告轮播效果
var _index2=0;//定义了序列号变量
var timeInterval=null;
$("ul.Part_ScrollBut li").hover(function(){
		clearInterval(timeInterval);//清除定时器
		_index2=$(this).index();//获取当前的序列号
		$(this).addClass("hover").siblings().removeClass("hover");//当前li添加 class="hover" 其它li移除
		$(".Part_ScrollCon").animate({left:"-"+_index2*339+"px"},1000);
		$("ul.Part_ScrollTxt li").eq(_index2).show().siblings().hide();//序列相同的li显示，其它的隐藏
},function(){autoPlay2();
		
});

//自动轮播
function autoPlay2(){

		timeInterval=setInterval(function(){	
			_index2++;//序列号加1
			
			if(_index2==5){_index2=0;}
			if(_index2<=4){				
				$("ul.Part_ScrollBut li").eq(_index2).addClass("hover").siblings().removeClass("hover");//当前li添加 class="hover" 其它li移除
				$(".Part_ScrollCon").animate({left:"-"+_index2*339+"px"},1000);
				$("ul.Part_ScrollTxt li").eq(_index2).show().siblings().hide();
				 if(_index2==4){_index2=-1;}
			}else{_index2=-1;}//这个地方要不要
		},3000);

};
autoPlay2();


//第三部分 Part3选项卡样式   
function partComm(selBut,imgCon,Con){
		//alert(selBut+"---"+imgCon +Con);
		var _index3=0;
		$(selBut).mouseover(function(){
		_index3=$(this).index();
		$(this).addClass("hover").siblings().removeClass("hover");
		$(imgCon).eq(_index3).show().siblings().hide();
		$(Con).eq(_index3).show().siblings().hide();
});

};

//把通用的代码，封装在函数，通传参的方式，来调用
partComm("#Part3 p.title a.sel_a","#Part3 .part3Con .Part3ConL img","#Part3 .Part3ConR .Part3ConR_comm");
partComm("#Part4 p.title a.sel_a","#Part4 .part3Con .Part3ConL img","#Part4 .Part3ConR .Part3ConR_comm");


function partComm2(selBut,Con){
		//alert(selBut+"---"+imgCon +Con);
		var _index3=0;
		$(selBut).mouseover(function(){
		_index3=$(this).index();
		$(this).addClass("hover").siblings().removeClass("hover");
		$(Con).eq(_index3).show().siblings().hide();
});

};

partComm2("#part5 ul.part5_selbut li","#part5 .part5_Con .part5_content");
//路线推荐先项卡效果
//鼠标滑上去的效果 mouseover
partComm2("ul.select_but li",".select_con .select_content");

$(".part5_content .part5Comm").hover(function(){
	//$(this).find("p").stop().slideUp();//从下往上收缩
		$(this).find("p").stop(true,true).slideDown();//从上向下慢慢展开
},function(){
		$(this).find("p").stop(true,true).slideUp();//从下往上收缩
		//$(this).find("p").stop().slideDown();//从上向下慢慢展开
});


//微信二维码显示
$("#fixedBox_Con ul li.li4 a.wxrelative").hover(function(){
		$(this).find("img.erm").show();
},function(){
		$(this).find("img.erm").hide();
});


//横浮广告显示

$(window).scroll(function(){
	var Top=$(window).scrollTop();//滚动的高度
	if(Top>1000){
		$("#fixedBox").addClass("scrollDisplay");	//当他滚动高度大于1000 就加上样式 class="scrollDisplay"
	}else{
			$("#fixedBox").removeClass("scrollDisplay");
	}
});


//在线客服关闭功能
$("#Kf img.but_close").click(function(){
	$("#Kf").hide();//隐藏	
});


//内页图片左右切换效果
	//左按扭切换效果
	var click_num=0;//点击次数
	var setTime3=null;//向左定时器
	var setTime4=null;//向右定时器
	var len=$("#webPart2_Scroll .webPart2_ScrollCon dl").length;//获取有多少个 dl(图片列表)
$("#webPart2_r img.dirl").click(function(){
		clearInterval(setTime3);//清除定时器
		click_num++;// 点击次数加1
		//alert(click_num);
		if(click_num<len-2){
		$("#webPart2_Scroll .webPart2_ScrollCon").animate({left:-168*click_num+"px"},1000);
		}else{alert("到头了"); click_num=len-3;}
});

	//右切换按扭效果
	$("#webPart2_r img.dirr").click(function(){
			clearInterval(setTime3);//清除定时器
			click_num--;//点击次数减1 
			//alert(click_num);
		if(click_num>=0){
			$("#webPart2_Scroll .webPart2_ScrollCon").animate({left:-168*click_num+"px"},1000);
		}else{alert("右边到头了!!"); click_num=0;}
	});

	//自动轮播

function autoPlay3(){
		setTime3=setInterval(function(){
			//alert("ss");
			click_num++;// 点击次数加1
			if(click_num<len-2){
				$("#webPart2_Scroll .webPart2_ScrollCon").animate({left:-168*click_num+"px"},1000);
			}else{click_num=len-3; autoPlay4();clearInterval(setTime3);//清除定时器 
				}
		},1000);

			
			//alert("自动轮播");
			}
autoPlay3();//调用函数

function autoPlay4(){
		setTime4=setInterval(function(){

			click_num--;//点击次数减1 
		if(click_num>=0){
			$("#webPart2_Scroll .webPart2_ScrollCon").animate({left:-168*click_num+"px"},1000);
		}else{ click_num=0;autoPlay3();clearInterval(setTime4);//清除定时器
			}

		},1000);
}



//内页广告轮播器样式
var web_index=0;
var up_click=0;
var sjs=0;
var arrylist=null;
$("ul.webAdvbutton li").click(function(){
	web_index=$(this).index();//获取当前点击li的序列号，赋给变量 web_index;
	$(this).addClass("hover").siblings().removeClass("hover");//当前点击的加上 class="hover" 其它 li 移除class="hover"
	$(".webAdvcon img").eq(up_click).css("z-index","3");//把移走的那张图片调到最上面
	$(".webAdvcon img").eq(web_index).css("z-index","2")
	//文字动画效果
	$(".text dd").eq(web_index).show().siblings().hide();
		sjs=getRandom(4)-1;
		arrylist=[{"top":"-270px"},{"right":"-361px"},{"bottom":"-270px"},{"left":"-361px"}];
		
		if(up_click==web_index){}else{//当前面点击的序列号和现在点击的序列号不相等时，就执行
	//if(sjs==1){
			$(".webAdvcon img").eq(up_click).stop(true,true).animate(arrylist[sjs],500,function(){
			//$(".webAdvcon img").eq(0).css({"top":"0px","z-index":"0"});
			$(".webAdvcon img").eq(up_click).removeAttr("style");
			up_click=web_index;//保存发前按扭点击对应的序列号
			});
	//}
}

/*
	if(sjs==2){
		$(".webAdvcon img").eq(up_click).animate({"right":"-361px"},1000,function(){
		//$(".webAdvcon img").eq(up_click).css({"right":"0px","z-index":"0"});
		$(".webAdvcon img").eq(up_click).removeAttr("style");
		up_click=web_index;//保存发前按扭点击对应的序列号
		});	
	}

	if(sjs==3){
		$(".webAdvcon img").eq(up_click).animate({"bottom":"-270px"},1000,function(){
		//$(".webAdvcon img").eq(up_click).css({"bottom":"0px","z-index":"0"});
		$(".webAdvcon img").eq(up_click).removeAttr("style");
		up_click=web_index;//保存发前按扭点击对应的序列号
		});
		
	}

	if(sjs==0){
		$(".webAdvcon img").eq(up_click).animate({"left":"-361px"},1000,function(){
		//$(".webAdvcon img").eq(up_click).css({"left":"0px","z-index":"0"});	
		$(".webAdvcon img").eq(up_click).removeAttr("style");
		up_click=web_index;//保存发前按扭点击对应的序列号
		});	
		
	}
*/
});



//随机函数，获到到 0-n之间的整数
function getRandom(n){
		 return Math.floor(Math.random()*n+1)    
        }


//风景详细页的图片切换效果
partComm2(".Deltail_but img",".Deltail_img img");


/*签证页详细内容的滚动效果*/
var web_index=0;
var h1=0 //第一个按扭滚动的高度
var h2=h1+$(".Web_QzScrollCon").eq(0).height();//第二个按扭滚动的高度
var h3=h2+$(".Web_QzScrollCon").eq(1).height();//第三个按扭滚动的高度
var h4=h3+$(".Web_QzScrollCon").eq(2).height();//第四个按扭滚动的高度
var h5=h4+$(".Web_QzScrollCon").eq(3).height();//第五个按扭滚动的高度
var arrlis=[h1,h2,h3,h4,h5];

$(".Web_QzNav span").hover(function(){
		web_index=$(this).index();//获取到对应的序列号
		//alert(web_index);
		$(this).addClass("hover").siblings("span").removeClass("hover");
		$(".Web_QzScroll").stop(true,true).animate({scrollTop:arrlis[web_index-1]+"px"},500);

		
});
