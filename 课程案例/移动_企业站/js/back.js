/**
 * Created by Administrator on 2015/12/17.
 */
/*点击返回顶部*/
$(function(){
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            $('#scrollUp').fadeIn();
        } else {
            $('#scrollUp').fadeOut();
        }
    });
    $('#scrollUp').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, 200);
        return false;
    });
})