var tips;//对像变量
var theTop = 30; //头部距离值
var old = theTop;//
   function initFloatTips() {
      tips = document.getElementById('Kf');//获取到滚动的框
      moveTips();
   };
   
   function moveTips() {
      var tt=50;
      if (window.innerHeight) {//NS浏览器专用的
         pos = window.pageYOffset//滚动的高度
      }else if (document.documentElement && document.documentElement.scrollTop){
        pos = document.documentElement.scrollTop
    }else if (document.body) {
        pos = document.body.scrollTop;
    }


     pos=pos-tips.offsetTop+theTop;//设置于看得见得浏览器距理
     pos=tips.offsetTop+pos/10;
     if (pos < theTop) pos = theTop;
     if (pos != old) {
        tips.style.top = pos+"px";
        tt=10;
    }
   old = pos;
   setTimeout(moveTips,tt);
       }
          initFloatTips();
