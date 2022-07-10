


var tabTop=document.getElementById("demoTop");
var tab3=document.getElementById("demo3");
var tab4=document.getElementById("demo4");
tab4.innerHTML=tab3.innerHTML;


var speed=20;

function Marquee2(){
if(tabTop.scrollTop>=tab4.offsetHeight)
tabTop.scrollTop-=tab3.offsetHeight
else{
tabTop.scrollTop++;
}
}
//Download by http://www.codefans.net


var MyMar2=setInterval(Marquee2,speed);



tabTop.onmouseover=function() {clearInterval(MyMar2)};
tabTop.onmouseout=function() {MyMar2=setInterval(Marquee2,speed)};




