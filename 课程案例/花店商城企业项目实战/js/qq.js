$(".qq .qq_bot .close").click(function(){
	$(".qq").animate({right:"-168px"},300,function(){
		$(".qq_small").animate({right:"10px"},300);
	});
})
$(".qq_small").click(function(){
	$(".qq_small").animate({right:"-35px"},300,function(){
		$(".qq").animate({right:"10px"},300);
	});
})