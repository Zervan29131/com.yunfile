$(function(){
	
	//$(document).scrollTop(0)
	$(".tl-content").find("li").hover(function(){
			var mindex = $(this).index();
			$(this).find("span").stop(true,true).css("background",Color()).animate({left:0});
			$("#Music").get(0).src="mp3/"+(mindex+1)+".mp3"; 
			$("#Music").get(0).play();
		},function(){
			$(this).find("span").stop(true,true).css("background",Color()).animate({left:290});
	});

	$(".header .nav li").hover(function(){
		$(this).find("span").css("background",Color()).stop(true,true).animate({height:"16px"},200);
		var _index=$(this).index();
		//alert(_index)
		$("#Music").get(0).src="mp3/"+(_index)+".mp3"; 
		$("#Music").get(0).play();
	},function(){
		$(this).find("span").css("background","#"+Color()).stop(true,true).animate({height:"0px"},200);
	});
	
	//创建随机颜色
	/*function Color(){
		var _color = Math.ceil(Math.random()*16777215).toString(16);
		return _color;
	} */
	
	//随机色
	function Color(){
		var r =Math.floor(Math.random() * 256);
		var g =Math.floor(Math.random() * 256);
		var b =Math.floor(Math.random() * 256);
		return "rgb("+r+","+g+","+b+")";
	}

/*	$("div").hover(function(){
		$("#Music").get(0).src="mp3/hov.mp3";  
		$("#Music").get(0).play();
	
	}); */

	var index1 = 0;
	var nowTime=new Date();
/*	$(".header .nav ul li").hover(function(){
		index1 = $(this).index();
		//alert(index1)
		if(index1 !=0)$(".header .sub-item").eq(index1-1).css("display","block");
	},function(){
		$(".header .sub-item").eq(index1-1).css("display","none");
	});
*/
	$(".header .nav ul li").mouseenter(function(){
		if(new Date()-nowTime>200){
			nowTime=new Date();
			index1 = $(this).index();
			//alert(index1);
			if(index1 !=0)$(".header .sub-item").eq(index1-1).stop().slideDown(100);
		}
	});

	$(".header .nav ul li").mouseleave(function(){
		index1 = $(this).index();
		//alert(index1);
		if(index1 !=0)$(".header .sub-item").eq(index1-1).stop().slideUp(50);
	});
	
	$(".header .sub-item").mouseenter(function(){
		$(this).stop();
	}).mouseleave(function(){
		$(this).slideUp(50);
	});

	/*吸顶盒*/
	var lastScrollTop = $(window).scrollTop();
	$(document).scroll(function(){
		var ScrollTop =$(window).scrollTop();
		if(ScrollTop-lastScrollTop<0){
			$(".nav-wrapper").addClass("fix-wrapper");
		}else{
			$(".nav-wrapper").removeClass("fix-wrapper");
		}
		if(ScrollTop==0){
			$(".nav-wrapper").removeClass("fix-wrapper");
		}
		lastScrollTop=$(window).scrollTop();
		
		

	});

	/*Banner-1无缝滚动开始*/
	
	bannerAuto( $('.index-slide .next-arrow') , $('.index-slide .pre-arrow') , $('.index-slide .pagination span') , $('.index-slide .swiper-wrapper') , $('.index-slide .main') );
	bannerAuto($('.invogue .next-arrow') , $('.invogue .pre-arrow') , $('.invogue .pagination span') , $('.invogue .swiper-wrapper') , $('.invogue .main'));
	bannerAuto($('.shoes .next-arrow') , $('.shoes .pre-arrow') , $('.shoes .pagination span') , $('.shoes .swiper-wrapper') , $('.shoes .main'));
	bannerAuto($('.discovery .next-arrow') , $('.discovery .pre-arrow') , $('.discovery .pagination span') , $('.discovery .swiper-wrapper') , $('.discovery'));
	bannerAuto($('.fasion .next-arrow') , $('.fasion .pre-arrow') , $('.fasion .pagination span') , $('.fasion .swiper-wrapper') , $('.fasion'));
	bannerAuto($('.features .next-arrow') , $('.features .pre-arrow') , $('.features .pagination span') , $('.features .swiper-wrapper') , $('.features'));
	bannerAuto($('.skincare .next-arrow') , $('.skincare .pre-arrow') , $('.skincare .pagination span') , $('.skincare .swiper-wrapper') , $('.skincare'));
	bannerAuto($('.party .next-arrow') , $('.party .pre-arrow') , $('.party .pagination span') , $('.party .swiper-wrapper') , $('.party'));
	bannerAuto($('.jewelry .next-arrow') , $('.jewelry .pre-arrow') , $('.jewelry .pagination span') , $('.jewelry .swiper-wrapper') , $('.jewelry'));
	bannerAuto($('.liking .next-arrow') , $('.liking .pre-arrow') , $('.liking .pagination span') , $('.liking .swiper-wrapper') , $('.liking'));
	function bannerAuto( $next , $prep , $span , $wrap , $box ){
		// 下一张按钮  前一张按钮 底部按钮 图片盒子 外层盒子
		
		var index = 0;
		var W = $wrap.children().width();
		var nowTime = new Date();
		var timer = null;
		auto();
		
		$next.click(function(){
			if ( new Date() - nowTime > 800 )
			{
				nowTime = new Date();
				index++;
				Play();
			}
		});
		$prep.click(function(){
			if ( new Date() - nowTime > 800 )
			{
				nowTime = new Date();
				index--;
				Play();
			}
		});
		$box.hover(function(){
			clearInterval( timer );
		},function(){
			auto();
		});
		$span.click(function(){
			index = $(this).index();
			//alert()
			Play();
		});

		function Play(){
			
			if ( index >= $span.length )
			{
				$span.eq(0).addClass('swiper-pagination-color').siblings().removeClass('swiper-pagination-color');
			}else if ( index < 0 )
			{
				$span.eq($span.length-1).addClass('swiper-pagination-color').siblings().removeClass('swiper-pagination-color');
			}else{
				$span.eq(index).addClass('swiper-pagination-color').siblings().removeClass('swiper-pagination-color');
			}
			
			$wrap.stop(true).animate({
				marginLeft : -W * (index+1) + 'px'
			},800,function(){
				if ( index >= $span.length )
				{
					index = 0;
					$(this).css('marginLeft' , -W*(index+1) + 'px')
				}else if ( index < 0 )
				{
					index = $span.length-1;
					$(this).css('marginLeft' , -W*(index+1) + 'px');
				}
			});
		};
		
		function auto(){
			timer = setInterval(function(){
				index++;
				Play();
			},2000);
		}
	}
	/*Banner-1无缝滚动结束*/
	/*Banner-1无缝滚动结束*/
	
	$(".designers .select i").hover(function(){
		$(this).parent().children(".shows-list").slideDown();
	});
	$('.designers .select .shows-list').mouseout(function(){
		$(this).css("display","none");
	});

	/*【3D轮播图】开始*/
		var initindex = 0;
		var Timer3D;
		$(".designers .bottom-des").html(
			$(".designers .swiper-container ul.3d li").eq(initindex).attr('data-des')
		);

		$('.designers .next-arrow').click(function(){
			if(new Date() - nowTime>500 ){
				nowTime = new Date();
				move(true);
			}
		});
		
		$('.designers .pre-arrow').click(function(){
			if(new Date() - nowTime>500 ){
				nowTime = new Date();
				move(false);
			}
		});
		
		$(".designers .swiper-container").hover(function(){
			clearInterval( Timer3D );
		},function(){
			auto3D();
		});

		function move( d ){
			var arrW = [],arrH = [],arrT = [],arrZ = [],arrO = [],arrL = []
			
			$(".designers .swiper-container ul li").each(function(i){
				arrW[i] = $(this).css('width');
				arrH[i] = $(this).css('height');
				arrT[i] = $(this).css('top');
				arrZ[i] = $(this).css('zIndex');
				arrO[i] = $(this).css('opacity');
				arrL[i] = $(this).css('left');
			});
			$(".designers .swiper-container ul li").each(function(i){
				var index3d;
				if( d ){
					index3d = i-1;
					if(index3d<0)index3d=7;
				}else{
					index3d = i+1;
					if(index3d>7)index3d=0;
				}
				$(this).css('z-index',arrZ[index3d]);
				$(this).animate({
					width : arrW[index3d],
					height : arrH[index3d],
					top : arrT[index3d],
					opacity : arrO[index3d],
					left : arrL[index3d]
				},500);
			});

			if( d ){
				initindex++;
				initindex%=8;
			}else{
				initindex--;
				if(initindex<0){
					initindex=7;
				}
			}

			$(".designers .bottom-des").html(
				$(".designers .swiper-container ul.3d li").eq(initindex).attr('data-des')
			);
			
		}

		
		//3D轮播开始
		auto3D();
		function auto3D(){
			Timer3D=setInterval(function(){
				move( true );
			},2500);
		}

	/*【3D轮播图】结束*/
	
	/*【楼梯式导航】*/
	$('#StairNav .StairMenu').hover(function(){
		$('#StairNav .SideNav').fadeIn();
		
		},function(){
		$('#StairNav .SideNav').fadeOut();
	});
	$('#StairNav .SideNav').hover(function(){
		$(this).stop();
	},function(){
		$(this).fadeOut();
	});	

	$('#StairNav .list').click(function(){
		var index = $(this).index() / 2;
		$(this).addClass('selected').siblings().removeClass('selected');
		var sTop = $('.ListNav').eq(index).offset().top;
		$('html,body').animate({
			scrollTop : sTop
		},500);
	});
	$(".to-top").click(function(){
		
		//$(document).scrollTop(0)
		$('html,body').animate({scrollTop:'0px'},1000);
	});
	/*【楼梯式导航】*/

	
	/*【登录弹窗】开始*/
/*	$(".header .login").click(function(){
		$("#mask").fadeIn(500);
		autoLogin();
	});
	$("#loginInterface .title a").click(function(){
		$("#mask").fadeOut(500);
	});
	var x=0,y=0,l=0,t=0;
	
	$(window).resize(function(){
		autoLogin();
	});
	function autoLogin(){
		var _left = ( $(window).width()-$("#loginInterface").width() ) / 2;
		var _top = ( $(window).height()-$("#loginInterface").height() ) / 2;
		$("#loginInterface").css({left:_left,top:_top});
	}
	
	$("#loginInterface .hold").click(function(){
		$(this).find("span").toggleClass("checked");
	});
*/
	/*【登录弹窗】结束*/

})




/*---------弹性运动开始---------*/
	window.onload = function(){
		var oLogin = document.getElementById('headerLogin');
		var oTitle = document.getElementById('title');
		var oClose = document.getElementById('Close');
		var oMask = document.getElementById('mask');
		var oLoginface = document.getElementById('loginInterface');
		var aInput = oLoginface.getElementsByTagName('input');
		var aLabel = oLoginface.getElementsByTagName('label');
		var aHold = document.getElementById('hold');
		var aSpan = aHold.getElementsByTagName('span')[0];
		var moveTimer = null;
		var onOff = true;
		var disX = 0;
		var disY = 0;
		
		var prevX = 0;
		var prevY = 0;
		var iSpeedX = 0;
		var iSpeedY = 0;
		
		oLogin.onclick = function()
		{
			oMask.style.display = "block";
			autoCenter();
		}
		
		oClose.onclick = function()
		{
			oMask.style.display = "none";
		}
		

		for (var i=0;i<aInput.length-1;i++ )
		{
			aInput[i].index=i;
			aInput[i].onfocus = function()
			{
				var This = this;
				aLabel[This.index].style.display = "none";
			}

			aInput[i].onblur = function(){
				if ( this.value == "" )
				{
					aLabel[this.index].style.display = "block";
				}
			}
		}

		aHold.onclick = function(){
			
			if (onOff)
			{
				aSpan.className = "checked";
				onOff = false;

			}else{
				aSpan.className = "";
				onOff = true;
			}
		
		}

		window.onresize = function(){
			oLoginface.style.left = ( document.documentElement.clientWidth - oLoginface.offsetWidth )/2 + 'px';
			oLoginface.style.top = ( document.documentElement.clientHeight - oLoginface.offsetHeight )/2 + 'px';
		}

		function autoCenter(){
			oLoginface.style.left = ( document.documentElement.clientWidth - oLoginface.offsetWidth )/2 + 'px';
			oLoginface.style.top = ( document.documentElement.clientHeight - oLoginface.offsetHeight )/2 + 'px';
			toChange(460);

		}

		
		
		
		function toChange(iTarget){
			
			var offsetL = oLoginface.offsetLeft;
			var offsetT = oLoginface.offsetTop;
			var oSpeed =10;
			var moveTimer = setInterval(function(){
				if(oLoginface.offsetWidth == iTarget){
					clearInterval(moveTimer);
					startMove();
				}
				else{
					oLoginface.style.width = oLoginface.offsetWidth + oSpeed + 'px';
					oLoginface.style.height = oLoginface.offsetHeight + oSpeed + 'px';
					oLoginface.style.left = offsetL - oLoginface.offsetWidth/2 + 'px';
					oLoginface.style.top = offsetT - oLoginface.offsetHeight/2 + 'px';
				}
			},30);
			
			
		}
		
		
		oTitle.onmousedown = function(ev){
			var ev = ev || window.event;
			disX = ev.clientX - oLoginface.offsetLeft;
			disY = ev.clientY - oLoginface.offsetTop;
			
			prevX = ev.clientX;
			prevY = ev.clientY;
			
			clearInterval(moveTimer);
			
			document.onmousemove = function(ev){
				var ev = ev || window.event;
				oLoginface.style.left = ev.clientX - disX + 'px';
				oLoginface.style.top = ev.clientY - disY + 'px';
				
				iSpeedX = ev.clientX - prevX;
				iSpeedY = ev.clientY - prevY;
				
				prevX = ev.clientX;
				prevY = ev.clientY;
				
			};
			
			document.onmouseup = function(){
				document.onmousemove = document.onmouseup = null;
				startMove();
				
			};
			
			return false; //阻止默认事件
			
		};
		
		function startMove(){
			
			clearInterval(moveTimer);
			moveTimer = setInterval(function(){
			
				iSpeedY += 3;
			
				var L = oLoginface.offsetLeft + iSpeedX;
				var T = oLoginface.offsetTop + iSpeedY;
			
				if(T>document.documentElement.clientHeight - oLoginface.offsetHeight){
					T = document.documentElement.clientHeight - oLoginface.offsetHeight;
					iSpeedY *= -1;
					iSpeedY *= 0.75;
					iSpeedX *= 0.75;
					
				}
				else if(T<0){
					T = 0;
					iSpeedY *= -1;
					iSpeedY *= 0.75;
				}
				
				if(L>document.documentElement.clientWidth - oLoginface.offsetWidth){
					L = document.documentElement.clientWidth - oLoginface.offsetWidth;
					iSpeedX *= -1;
					iSpeedX *= 0.75;
				}
				else if(L<0){
					L = 0;
					iSpeedX *= -1;
					iSpeedX *= 0.75;
				}
			
				oLoginface.style.left = L + 'px';
				oLoginface.style.top = T + 'px';
				
			},30);
		}
		
		
		

	};
		
	/*---------弹性运动结束---------*/