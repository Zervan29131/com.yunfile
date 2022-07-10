$(function(){
	$(".but img.imgface").click(function(e){
		//alert("清心老师真牛逼！！");
		$(".face").slideDown();//慢慢向下展开
		e.stopPropagation();//阻冒泡
	});

	$(document).click(function(){
		$(".face").slideUp();//向上收缩
	});


	//点击发表
	$(".but span.msg_but").click(function(){
		var txt=$(".edit").html();
		if(txt==""){
			$(".edit").focus();//获取焦点
		}else{
			$(".MsgBox").append("<div class='MsgInfo'><dl><dt><img src='images/logo.png' width='50' height='50'/></dt><dd>追梦老师</dd></dl><div class='Con'>"+txt+"</div></div>");
			$(".edit").html("");
		}

	});

	$(".face ul li").click(function(){
		var img=$(this).find("img").clone();
		$(".edit").append(img);//添加
	});
});
	
	