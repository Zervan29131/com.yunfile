	var i = 0; //���nav�����������li���±�
	var j = -1; //���but_liСԲ�㵼�����li���±�
	var time = 0; //���showTopLeft��ʱ����
	var time2 = 0; //���showTopRight��ʱ����
	var time3 = 0;//���showBottom��ʱ����
//���nav�����li��ʾ��Ӧ��con_img����
$(".nav ul li").click(function(){
		j = -1;
		i =$(this).index();
		$(this).addClass("bg").siblings().removeClass("bg");
		$(".con .con_img").eq(i).show().siblings().hide();
})

//������.but_liСԲ�������li��ʾ��Ӧ��con_img����
//��.pic���Ӧ��img����
$(".but_li ul li").hover(function(){
		clearInterval(time);  //����li�������ʱ��
		j =$(this).index();
		$(this).css("background","#972022")
			   .siblings().css("background","#fff");
		$(".con .con_img").eq(i).find(".pic img").eq(j).show()
						  .siblings().hide();
},function(){
	time = setInterval("junm()",3000); //�뿪li������ʱ��
})
//showTopLeft��ʱ������ʼ
var d = 0; //��ʾ��굱ǰ�����li�±�
var range = 0; //��ʾ���֮ǰ�����li�±�
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
//showTopLeft��ʱ��������
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
		clearInterval(time2);  //����li�������ʱ��
},function(){
	time2 = setInterval("junm2()",2000); //�뿪li������ʱ��
})
//showTopRight��ʱ������ʼ
	function junm2(){
		d++;
	 if(d>2)
		 d=0;
	 range =d*-320;
	 $(".rightCon ul").animate({top:range+'px'},200);
	}
time2 = setInterval("junm2()",2000);
//showTopRight��ʱ��������

//showBottom��ʱ������ʼ
var n = 0;  //���showBottom��ul�ƶ��Ĵ��� 
var s = 0; //���showBottom��ul�ƶ����ܾ��� 
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
//showBottom��ʱ��������

//showBottom btn����ʼ
//showBottom btn btnLeft����ʼ
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
//showBottom btn btnLeft�������
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
//showBottom btn btnRight����ʼ

//showBottom btn btnRight�������
	$(".btn span").hover(function(){
		clearInterval(time3);
	},function(){
		time3 = setInterval("junm3()",2000);
	})
//showBottom btn�������