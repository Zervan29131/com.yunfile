/*
表单验证功能（需调用formvalidation插件）
 */
(function(){
    $(function(){
        $(document).on('submit', 'form', function() {
            $(this).formSubmitSet();
        });
        // 上传文件
        $(document).on('change keyup','.input-group-file input[type="file"]',function(){
            if(!$(this).parents('.input-group-btn').find('.file-input').length){// 如果没有加载file-input插件
                // 输入框文件路径更新
                var $text=$(this).parents('.input-group-file').find('input[type="text"]'),
                    value='';
                if(M.is_lteie9){
                    value=$(this).val();
                }else{
                    var $input_group_file=$(this).parents('.input-group-file');
                    if($(this)[0].files.length>10){
                        // 显示报错文字
                        if(!$input_group_file.next('small.form-control-label').length) $input_group_file.after('<small class="form-control-label"></small>');
                        $input_group_file.next('small.form-control-label').text('一次只能提交最多10张图片！');
                        $input_group_file.parents('.form-group').removeClass('has-success').addClass('has-danger');
                    }else{
                        $.each($(this)[0].files,function(i,file){
                            value +=value?','+file.name:file.name;
                        });
                        $input_group_file.next('small.form-control-label').html('');
                        $input_group_file.parents('.form-group').removeClass('has-danger');
                    }
                }
                if(value) $text.val(value).trigger('change');
            }
        });
        // 验证码点击刷新
        $(document).on('click',"#getcode,.met-getcode",function(){
            var src=$(this).attr("src"),
                random=Math.floor(Math.random()*9999+1);
            src=src.indexOf('&random')>0?src.split('&random')[0]:src;
            $(this).attr({src:src+'&random='+random}).parents('form').find('input[type="hidden"][name="random"]').val(random);
        });
    });
    $.fn.extend({
        // 表单验证通用
        validation:function(){
            $(this).each(function(index, el) {
                var $self=$(this),
                    order=$(this).attr('data-validate_order')&&$(this).attr('data-validate_order')!=''?$(this).attr('data-validate_order'):($(this).attr('id')?'#'+$(this).attr('id'):new Date().getTime()),
                    self_validation='';
                $(this).attr({'data-validate_order':order});
                function success(fun,afterajax_ok){
                    validate[order].ajax_submit=1;
                    self_validation.on('success.form.fv', function(e) {
                        e.preventDefault();
                        if($self.find('[name="submit_type"]').length && $self.find('table tbody tr td .checkall-item').length && $self.find('[name="allid"]').val()=='') return false;
                        var ajax_ok=typeof afterajax_ok != "undefined" ?afterajax_ok:true;
                        if(ajax_ok){
                            setTimeout(function(){formDataAjax(e,fun)},0);
                        }else{
                            $self.data('formValidation').resetForm();
                            if (typeof fun==="function") window.form_data_ajax=fun(e,$self);
                            setTimeout(function(){
                                if(typeof form_data_ajax =='undefined') $self.data('formValidation').defaultSubmit();
                            },100)
                        }
                    })
                }
                function formDataAjax(e,fun,data){
                    window.form_data_ajax=false;
                    var type=($self.attr('method')||'POST').toUpperCase(),
                        url=$self.attr('action');
                    if(type!='POST') url+=(url.indexOf('?')>0?'&':'?')+$self.serialize(e.target);
                    if(M.is_lteie9){
                        var formData = $self.serializeArray(e.target),
                            contentType='application/x-www-form-urlencoded',
                            processData=true;
                    }else{
                        var formData = new FormData(e.target),
                            // params   = $self.serializeArray(),
                            contentType=false,
                            processData=false;
                        // $.each(params, function(i, val) {
                        //     formData.append(val.name, val.value);
                        // });
                    }
                    if(data){
                        $.each(data, function(i, val) {
                            formData.append(i, val);
                        });
                    }
                    $.ajax({
                        url: url,
                        data: formData,
                        cache: false,
                        contentType: contentType,
                        processData: processData,
                        type: type,
                        dataType:'json',
                        success: function(result) {
                            $self.data('formValidation').resetForm();
                            if (typeof fun==="function") return fun(result,$self);
                        }
                    });
                }
                validate[order]={success:success,formDataAjax:formDataAjax};
                var that=typeof admin_module!='undefined'?$.extend(true,{},admin_module):'';
                (function(that1){
                    metui.use('formvalidation',function(){
                        self_validation=$self.formValidation({
                            locale:M.validation_locale,
                            framework:'bootstrap4'
                        });
                        if($self.data('submit-ajax')){
                            success(function(result,form){
                                var true_fun=false_fun='';
                                if(typeof validate_fun[order] != 'undefined' && typeof validate_fun[order].success != 'undefined'){
                                    if(typeof validate_fun[order].success.true_fun != 'undefined') true_fun=validate_fun[order].success.true_fun;
                                    if(typeof validate_fun[order].success.false_fun != 'undefined') false_fun=validate_fun[order].success.false_fun;
                                }
                                $self.find('.dataTable').length?$self.find('.dataTable').tabelAjaxFun(result):(function(){
                                    metAjaxFun({
                                        result: result,
                                        true_fun: true_fun,
                                        false_fun: false_fun
                                    });
                                    $('.met-pageset').length && parseInt(result.status) && $('.page-iframe').attr({'data-reload':1});
                                })();
                                $self.find('.file-input .kv-fileinput-error').hide();
                                $self.find('.file-input .kv-upload-progress').html('');
                                $self.find('.file-input').parents('.form-group:eq(0)').find('.form-control-label').text('');
                            });
                            !$self.find('.dataTable').length && metui.use('app_form',function(){
                                formSaveCallback(order,{
                                    true_fun:function(){
                                        that1 && that1.reload();
                                    },
                                    false_fun:function(){
                                        $self.find('.met-getcode').click();
                                    }
                                });
                            });
                        }
                    });
                })(that);
            });
        },
        // 表单提交前处理
        formSubmitSet:function(form){
            // 多选值组合
            var checkbox_val={},
                $form=form||$(this);
            $form.find('input[type="checkbox"][name]').each(function(index, el) {
                var name=$(this).attr('name'),
                    val=$(this).val(),
                    delimiter=$(this).data('delimiter')||'#@met@#';
                if(typeof checkbox_val[name] =='undefined') checkbox_val[name]='';
                if($(this).prop('checked') || $(this).data('plugin')=='switchery') checkbox_val[name]+=checkbox_val[name]!=''?(delimiter+val):val;
            });
            $.each(checkbox_val, function(index, val) {
                if(!$form.find('[name="'+index+'"][type="hidden"]').length) $form.append('<input type="hidden" name="'+index+'"/>');
                $form.find('[name="'+index+'"][type="hidden"]').val(val);
            });
        }
    });
    // formValidation多语言选择
    M.validation_locale='';
    if("undefined" != typeof M){
        M.validation_locale=M.synchronous+'_';
        switch(M.synchronous){
            case 'sq':M.validation_locale+='AL';break;
            case 'ar':M.validation_locale+='MA';break;
            // case 'az':M.validation_locale+='az';break;
            // case 'ga':M.validation_locale+='ie';break;
            // case 'et':M.validation_locale+='ee';break;
            case 'be':M.validation_locale+='BE';break;
            case 'bg':M.validation_locale+='BG';break;
            case 'pl':M.validation_locale+='PL';break;
            case 'fa':M.validation_locale+='IR';break;
            // case 'af':M.validation_locale+='za';break;
            case 'da':M.validation_locale+='DK';break;
            case 'de':M.validation_locale+='DE';break;
            case 'ru':M.validation_locale+='RU';break;
            case 'fr':M.validation_locale+='FR';break;
            // case 'tl':M.validation_locale+='ph';break;
            case 'fi':M.validation_locale+='FI';break;
            // case 'ht':M.validation_locale+='ht';break;
            // case 'ko':M.validation_locale+='kr';break;
            case 'nl':M.validation_locale+='NL';break;
            // case 'gl':M.validation_locale+='es';break;
            case 'ca':M.validation_locale+='ES';break;
            case 'cs':M.validation_locale+='CZ';break;
            // case 'hr':M.validation_locale+='hr';break;
            // case 'la':M.validation_locale+='IT';break;
            // case 'lv':M.validation_locale+='lv';break;
            // case 'lt':M.validation_locale+='lt';break;
            case 'ro':M.validation_locale+='RO';break;
            // case 'mt':M.validation_locale+='mt';break;
            // case 'ms':M.validation_locale+='ID';break;
            // case 'mk':M.validation_locale+='mk';break;
            case 'no':M.validation_locale+='NO';break;
            case 'pt':M.validation_locale+='PT';break;
            case 'ja':M.validation_locale+='JP';break;
            case 'sv':M.validation_locale+='SE';break;
            case 'sr':M.validation_locale+='RS';break;
            case 'sk':M.validation_locale+='SK';break;
            // case 'sl':M.validation_locale+='si';break;
            // case 'sw':M.validation_locale+='tz';break;
            case 'th':M.validation_locale+='TH';break;
            // case 'cy':M.validation_locale+='wls';break;
            // case 'uk':M.validation_locale+='ua';break;
            // case 'iw':M.validation_locale+='';break;
            case 'el':M.validation_locale+='GR';break;
            case 'eu':M.validation_locale+='ES';break;
            case 'es':M.validation_locale+='ES';break;
            case 'hu':M.validation_locale+='HU';break;
            case 'it':M.validation_locale+='IT';break;
            // case 'yi':M.validation_locale+='de';break;
            // case 'ur':M.validation_locale+='pk';break;
            case 'id':M.validation_locale+='ID';break;
            case 'en':M.validation_locale+='US';break;
            case 'vi':M.validation_locale+='VN';break;
            case 'zh':M.validation_locale='zh_TW';break;
            default:M.validation_locale='zh_CN';break;
        }
    }else{
        M.validation_locale='zh_CN';
    }
    window.validate=[];
    window.validate_fun=[];
    $('form').validation();
})();