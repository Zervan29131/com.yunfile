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
	//��ȡ����ǰli�µ���Ԫ��.subnavȻ�����»��� 
//�����»�������ִ��ǰ����֮ǰ���еĶ��������Ҹ���true,true��ʾ�ص����״̬
},function(){
	$(this).children(".subnav").stop(true,true).slideUp();
})