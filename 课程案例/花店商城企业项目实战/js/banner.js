
			var b = 1;  //之前最后一次点击的li的下标
			var a = 1; //当前鼠标点击的li的下标
			var time = 0; //time变量存放setInterval函数
			function junmper(){
				a++;
				if(a>4)
				a = 0;
				$(".banner .banner_con ul li").eq(a).stop(true,true).css("left","1921px");
					$(".banner .banner_con ul li").eq(a).stop(true,true).animate({left:"0px"},500);
					$(".banner .banner_con ul li").eq(b).stop(true,true).animate({left:"-1921"},500);
					b = a;
				
			}
			time = setInterval("junmper()",5000);
			
			$(".next_left").click(function(){
					a++;
				if(a>4)
				a = 0;
				$(".banner .banner_con ul li").eq(a).stop(true,true).css("left","1921px");
					$(".banner .banner_con ul li").eq(a).stop(true,true).animate({left:"0px"},500);
					$(".banner .banner_con ul li").eq(b).stop(true,true).animate({left:"-1921"},500);
					b = a;

			})
			$(".next_right").click(function(){
					a--;
				if(a<0)
					 a =4;
				$(".banner .banner_con ul li").eq(a).css("left","-1921px");
					$(".banner .banner_con ul li").eq(a).stop(true,true).animate({left:"0px"},500);
					$(".banner .banner_con ul li").eq(b).stop(true,true).animate({left:"1921"},500);
					b = a;

			})
		   $(".next_right").hover(function(){
			clearInterval(time);
		   },function(){
			time = setInterval("junmper()",5000);
		   })
		   $(".next_left").hover(function(){
			clearInterval(time);
		   },function(){
			time = setInterval("junmper()",5000);
		   })
			
		  
		    