/**
 * Created by Administrator on 2016/3/26.
 */
$(function(){
    /*Search*/
    $(".znsousu").hide();
    $(".fktp").click(function() {
        if($(".znsousu").css("display")=="none"){
            $('.znsousu').slideDown(400);
        }else{
            $('.znsousu').slideUp(400);
        }

    });
})