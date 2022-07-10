/**
 * Created by Administrator on 2016/3/28.
 */
/**
 * Created by Administrator on 2016/3/26.
 */
function  toSubmit(){
    var user_dw=document.getElementById('user_dw').value;
    var user_name=document.getElementById('user_name').value;
    var user_phone=document.getElementById('user_phone').value;
    var user_email=document.getElementById('user_email').value;
    var numb=/^0?1[3|4|5|8][0-9]\d{8}$/;
    var reyrule=  /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/ //邮箱
    if( user_dw==""){
        alert("对不起，单位名称不能为空！");
        return false;
    }else if(user_name==""){
        alert("对不起，注册用户名不能为空！");
        return false;
    }else if(user_name.length<4||user_name.length>12){
        alert("对不起，用户名长度限制为：4-16位之间 ");
        return false;
    }else if(user_phone==""){
        alert("对不起，电话不能为空！");
        return false;
    }else if(!numb.test(user_phone)){
        alert("对不起，电话格式不正确！");
        return false;
    }else if(user_email==""){
        alert("对不起，注册邮箱不能为空！");
        return false;
    }else if (!reyrule.test(user_email)){
        alert("对不起，您输入的邮箱格式不正确！！");
        return false;
    }
    //如果上述表单元素都通过，则提交表单
    document.getElementById("myform").submit();
}