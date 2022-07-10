$(function(){
	$(document).scrollTop()
	console.log()
	var arrZh = [];
	var arrEn = ['FASHION','BEAUTY','STAR','LOHAS','PLASTIC','VIDEO','MODETEN'];
	var $a = $(".biglogo .top-nav .nav-list a");
	var $sub_nav = $(".biglogo .sub-nav")
	var $sub_navLi = $(".biglogo .sub-nav li");
	var $sub_navLia = $(".biglogo .sub-nav li a");
	var $biglogo =$(".biglogo");
	var index = 0;
	$a.each(function(){//遍历  push 往数组里面添加
		arrZh.push( $(this).html() );
	});
	
	//console.log( arrZh[6] )
	//鼠标移入到顶级栏目
	$a.mouseenter(function(){
		$a.eq(index).html( arrZh[index] ).removeClass('hover');
		//获取 a的索引 用来去数组里面获取对应的内容
		//index = $(this).index() / 2;  如果有多个i标签，那就获取不到了
		index = $(this).index( ".nav-list a" )  //用这个
		//console.log( index )
		//addClass()添加Class名字
		$(this).addClass("hover").html( arrEn[index] );
		$sub_nav.stop().slideDown();
		$sub_navLi.eq(index).show().siblings().hide();
		
	});
	
	//鼠标从二级导航移开，执行
	$sub_nav.mouseleave(function(){
		$(this).stop().slideUp();
		$a.removeClass('hover');
		$a.eq(index).html( arrZh[index] );
	});
	
	$biglogo.mouseleave(function(){
		$sub_nav.stop().slideUp();
		$a.removeClass('hover');
		$a.eq(index).html( arrZh[index] );
	});
	$sub_navLia.hover(function(){
		$(this).css('color','#e50a80');
	},function(){
		$(this).css('color','#676566');
	});

	//搜索部分
	$(".biglogo .search-bg").click(function(){
		$(this).css('background-position','0 660px')
		$(".biglogo .text").css({"display":"block"}).animate({"width":"140px"})
		$(".biglogo .text").focus();  //获取焦点
		
	});
	//失去焦点
	$(".biglogo .text").blur(function(){
			$(this).animate({width:0},200,function(){
			$(".search-bg").css('background-position','0 620px');
			$(this).css('display','none');
		})
	});
	
	
	
	//轮播图方法 happylife 
	bannerAuto( $(".modern .tbody-right .tab a") , null , $(".modern .tbody-right .slide-wrap ul") , $(".modern .tbody-right .slide") , "mouseenter" ,$(".modern .tbody-right .slide-wrap") , 2000 );
	bannerAuto( $(".modern .tbody-left .tab a") , $(".modern .tbody-left .btn a") , $(".modern .tbody-left .slide-wrap ul") , $(".modern .tbody-left .slide") , "mouseenter" ,$(".modern .tbody-left .slide-wrap") , 2000 );
	bannerAuto( $(".plastic .tbody-right .tab a") , $(".plastic .tbody-right .btn a") , $(".plastic .tbody-right .slide-wrap ul") , $(".plastic .tbody-right .slide") , "mouseenter" ,$(".plastic .tbody-right .slide-wrap") , 2000 );
	bannerAuto( $(".plastic .tbody-left .tab a") , $(".plastic .tbody-left .btn a") , $(".plastic .tbody-left .slide-wrap ul") , $(".plastic .tbody-left .slide") , "mouseenter" ,$(".plastic .tbody-left .slide-wrap") , 2000 );
	bannerAuto( $(".happylife .tbody-left .tab a") , $(".happylife .tbody-left .btn a") , $(".happylife .tbody-left .slide-wrap ul") , $(".happylife .tbody-left .slide") , "mouseenter" ,$(".happylife .tbody-left .slide-wrap") , 2000 );
	bannerAuto( $(".beautiful .tbody-right .tab a") , $(".beautiful .tbody-right .btn a") , $(".beautiful .tbody-right .slide-wrap ul") , $(".beautiful .tbody-right .slide") , "mouseenter" ,$(".beautiful .tbody-right .slide-wrap") , 2000 );
	bannerAuto( $(".beautiful .tbody-left .tab a") , $(".beautiful .tbody-left .btn a") , $(".beautiful .tbody-left .slide-wrap ul") , $(".beautiful .tbody-left .slide") , "mouseenter" ,$(".beautiful .tbody-left .slide-wrap") , 2000 );
	bannerAuto( $(".fashion .tab a") , $(".fashion .btn a") , $(".fashion .slide-wrap ul") , $(".fashion .slide") , "mouseenter" ,$(".fashion .slide-wrap") , 2000 );
	bannerAuto( $(".modBox .tab a") , $(".modBox .btn a") , $(".modBox .slide-wrap ul") , $(".modBox .slide") , "click" ,$(".modBox .slide-wrap") , 2000 );
	bannerAuto( $(".todayFocus .tab a") , $(".todayFocus .btn a") , $(".todayFocus .slide-wrap ul") , $(".todayFocus .slide") , "click" ,$(".todayFocus .slide-wrap") , 2000 );
	bannerAuto( $(".banner .tab a") , $(".banner .btn a") , $(".banner .slide-wrap ul") , $(".banner") , "click" ,$(".banner .slide-wrap") , 3000 );
	function bannerAuto( $tabA , $btnA , $wrapUl , $box , event , $w , T ){
		var index1 = 0;
		var nowDate = new Date();
		var timer = null;
		var W = $w.width();
		
		$tabA[event](function(){
			index1 = $(this).index();
			$(this).addClass("active").siblings().removeClass("active");
			//console.log(index1)
			$wrapUl.animate({"marginLeft":-W*(index1+1)},500);
		});
		
		if($btnA){
			$btnA.click(function(){
				if(	new Date() - nowDate > 600 ){
					nowDate = new Date();
					var n = $(this).index();
					//n=0 代表左按钮 n=1 右按钮
					/*if( n ){
						index1++;
					}else{
						index1--;
					}
					*/
					n?index1++:index1--;

					play();
				}
			});
		}
		
		
		$box.hover(function(){//鼠标移入
			clearInterval(timer);
		},function(){//鼠标移开
			timeAuto();
		});

		
		timeAuto();
		function timeAuto(){
			timer = setInterval(function(){
				index1++;
				play();
			},T);
		};

		function play(){
			var aindex = index1;
			//console.log($tabA.length)
			if( aindex == $tabA.length){
				aindex = 0;
			}else if(aindex < 0){
				aindex = $tabA.length-1;
			}
			$tabA.eq(aindex).addClass("active").siblings().removeClass("active");
			
			$wrapUl.animate({"marginLeft":-W*(index1+1)},500,function(){
				if(index1 == $tabA.length){
					$wrapUl.css("marginLeft",-W+"px");
					index1 = 0
				}else if(index1 < 0){
					$wrapUl.css("marginLeft",-W*( $tabA.length )+"px");
					index1 = $tabA.length-1;
				}
			});
		}
	};
	
	//今日焦点
	
	todayFocus( $(".todayFocus .scroll-wrap ul") , $(".todayFocus .scroll-wrap ul li") , $(".todayFocus .scroll-wrap") );
	function todayFocus( $wrapUl ,$tabA , $box ){
		
		var index2 = 0 ;
		var timeToday = null;

		timeAuto();
		function timeAuto(){
			timeToday = setInterval(function(){
				index2++;
				play();
			},2000);
		};
		
		$box.hover(function(){
			clearInterval(timeToday);
		},function(){
			timeAuto();
		});

		function play(){
			$wrapUl.animate({"marginTop":-31*(index2+1)},500,function(){
				if(index2 == $tabA.length - 2){
					$wrapUl.css("marginTop",-31+"px");
					index2 = 0
				}
			});
		}


	};

	//大明星淡入淡出
	var index3 = 0;
	var timer3;
	var starSlide = $(".star .tbody .slide");
	var starTabA = $(".star .tbody .tab a");
	var starTbodySlideLi = $(".star .tbody .slide-wrap li");
	var starTbodySmallImg = $(".star .tbody .smallImg");
	starSlide.hover(function(){
		starTbodySmallImg.stop().animate({"bottom":"0px"},500);
	},function(){
		starTbodySmallImg.stop().animate({"bottom":"-86px"},500);
	});
	
	starSlide.hover(function(){
		clearInterval(timer3);
	},function(){
		timer3=setInterval(function(){
			index3++;
			index3%=5;
			//console.log(index3);
			starTabA.eq(index3).addClass("active").siblings().removeClass("active");
			starTbodySlideLi.eq(index3).fadeIn(500).siblings().fadeOut(500)
		},1000);
	});
	$(".star .tbody .smallImg li").mouseenter(function(){
		index3 = $(this).index();
		//alert( index3 );
		starTbodySlideLi.eq(index3).stop().fadeIn(500).siblings().stop().fadeOut(500);
		//$(this).find("i").css("display","block").parent().siblings().find("i").css("display","none");
		$(this).find("i").stop().fadeIn().parent().siblings().find("i").stop().fadeOut();
	});

	timer3=setInterval(function(){
		index3++;
		index3%=5;
		//console.log(index3);
		starTabA.eq(index3).addClass("active").siblings().removeClass("active");
		starTbodySlideLi.eq(index3).fadeIn(500).siblings().fadeOut(500)
	},1000);


	
	//视觉
	var n = 0;
	var ii = 0;
	function Random(n){
		//Math.random() 0~1 之间 Math.floor向下取整 Math.ceil 向下取整 Math.round 4舍5入
		
		return Math.floor( Math.random()*n )
	}
	
	var arrSee = [];
	var iW = 0;
	var iH = 0;
	$(".see .tbody .hover").hover(function(){
		iW = $(this).width();
		iH = $(this).height();
		
		arrSee = [{
			"top":-iH+'px',
			"opacity":"0"
		},{
			"left":iW+'px',
			"opacity":"0"
		},{
			"top":iH+'px',
			"opacity":"0"
		},{
			"left":-iW+'px',
			"opacity":"0"
		}];

		$(this).find("a:last span").stop(true,false).animate({bottom:0});
	},function(){
		ii = Random(4)
		$(this).find("a:last span").stop(true,false).animate({bottom:-65});

		$(this).find("a:last").stop().animate(arrSee[ii],600,function(){
			$(this).css({"top":"0","left":"0","opacity":"1"});
			$(this).prependTo($(this).parent());
		});
	});


	//百科选项卡
	TabAuto( $(".commend .tab a") , "click" , $(".commend .tbody .slide-wrap li"));
	TabAuto( $(".baike .thead .nav-list a") , "mouseenter" , $(".baike .tbody .tab-box"));
	function TabAuto( $navA , event , $tabBox){
		var index4 = 0;
		$navA[event](function(){
			index4 = $(this).index();
			console.log(index4)
			$(this).addClass("active").siblings().removeClass("active");
			$tabBox.eq(index4).show().siblings().hide();
		});
	};

	//楼梯式导航
	/*$(".StairNav .StairMenu").hover(function(){
		$(".StairNav .sideNav").stop(true,true).fadeIn();
	},function(){
		$(".StairNav .sideNav").stop(true,true).fadeOut();
	});
	

	$(".StairNav .sideNav").hover(function(){
		$(this).stop();
	},function(){
		$(this).fadeOut();
	});
	*/
	//鼠标移上
	$(".list").mouseenter(function(){
		$(this).find('h3').html( $(this).find('h3').attr("en") )
	});
	//鼠标移开
	$(".list").mouseleave(function(){
		$(this).find('h3').html( $(this).find('h3').attr("zh") );
	});

	$(".StairNav .StairMenu").click(function(){
		$(".StairNav .sideNav").toggle();
	});
	
	var onOFF = true;
	$(".StairNav .list").click(function(){
		onOFF = false;
		var index5 = $(this).index( ".StairNav .list" );
		console.log(index5)
		$(this).addClass("active").siblings().removeClass("active");
		var sTop = $(".Stair").eq(index5).offset().top;
		$("html,body").animate({scrollTop:sTop},500,function(){
			onOFF = true;
		});
	});
	
	$(".StairNav .to-top").click(function(){
		//$(document).scrollTop(0)
		$('html,body').animate({scrollTop:'0px'},1000);
	});
	
	
	$(window).scroll(function(){
		
		if ( onOFF ){
			$(".StairNav .sideNav").fadeIn();
			var scrollTop = $(document).scrollTop();
			for ( var i=0;i<$(".Stair").length;i++ ){
				console.log('滚动条高度'+':'+ scrollTop+'--'+'盒子的距离整个文档高度'+':'+($(".Stair").eq(i).offset().top))
				
				if ( scrollTop < $(".Stair").eq(i).offset().top )
				{
					//console.log(i)
					var index5 = i-1;
					//console.log('盒子'+ index5 );
					if ( index5 < 0 )
					{
						index5 = 0;
						$(".StairNav .list").removeClass('active');
					}else
					{
						$(".StairNav .list").eq(index5).addClass('active').siblings().removeClass('active');
					}
					break;
				}else{
					$(".StairNav .list:last").addClass('active').siblings().removeClass('active');
				}
				
			}
		}
		
		
		
	});
	
	$("html,body").css('height','20000px') 
	//console.log( $(document).scrollTop() )
	//console.log( $(".Stair").eq(5).offset().top  )
	
	
});