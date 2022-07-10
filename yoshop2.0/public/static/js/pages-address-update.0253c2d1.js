(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-address-update"],{"020b":function(e,a,t){"use strict";var r=t("dbce"),n=t("4ea4");t("d3b7"),Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0;var i=n(t("e30e")),o=t("6c01"),s=r(t("8616")),d={name:[{required:!0,message:"请输入姓名",trigger:["blur","change"]}],phone:[{required:!0,message:"请输入手机号",trigger:["blur","change"]},{validator:function(e,a,t){return(0,o.isMobile)(a)},message:"手机号码不正确",trigger:["blur"]}],region:[{required:!0,message:"请选择省市区",trigger:["blur","change"],type:"array"}],detail:[{required:!0,message:"请输入详细地址",trigger:["blur","change"]}]},l={components:{SelectRegion:i.default},data:function(){return{form:{name:"",phone:"",region:[],detail:""},rules:d,isLoading:!0,disabled:!1,addressId:null}},onLoad:function(e){var a=e.addressId;this.addressId=a,this.getDetail()},onReady:function(){this.$refs.uForm.setRules(this.rules)},methods:{getDetail:function(){var e=this;s.detail(e.addressId).then((function(a){var t=a.data.detail;e.createFormData(t)}))},createFormData:function(e){var a=this.form;a.name=e.name,a.phone=e.phone,a.detail=e.detail,a.region=this.createRegion(e)},createRegion:function(e){return[{label:e.region.province,value:e.province_id},{label:e.region.city,value:e.city_id},{label:e.region.region,value:e.region_id}]},handleSubmit:function(){var e=this;if(e.disabled)return!1;e.$refs.uForm.validate((function(a){a&&(e.disabled=!0,s.edit(e.addressId,e.form).then((function(a){e.$toast(a.message),uni.navigateBack()})).finally((function(){return e.disabled=!1})))}))}}};a.default=l},"125e":function(e,a,t){"use strict";t.r(a);var r=t("020b"),n=t.n(r);for(var i in r)"default"!==i&&function(e){t.d(a,e,(function(){return r[e]}))}(i);a["default"]=n.a},1497:function(e,a,t){"use strict";t.d(a,"b",(function(){return n})),t.d(a,"c",(function(){return i})),t.d(a,"a",(function(){return r}));var r={uForm:t("9278").default,uFormItem:t("f0d8").default,uInput:t("b138").default,selectRegion:t("e30e").default},n=function(){var e=this,a=e.$createElement,t=e._self._c||a;return t("v-uni-view",{staticClass:"container"},[t("v-uni-view",{staticClass:"page-title"},[e._v("收货地址")]),t("v-uni-view",{staticClass:"form-wrapper"},[t("u-form",{ref:"uForm",attrs:{model:e.form,"label-width":"140rpx"}},[t("u-form-item",{attrs:{label:"姓名",prop:"name"}},[t("u-input",{attrs:{placeholder:"请输入收货人姓名"},model:{value:e.form.name,callback:function(a){e.$set(e.form,"name",a)},expression:"form.name"}})],1),t("u-form-item",{attrs:{label:"电话",prop:"phone"}},[t("u-input",{attrs:{placeholder:"请输入收货人手机号"},model:{value:e.form.phone,callback:function(a){e.$set(e.form,"phone",a)},expression:"form.phone"}})],1),t("u-form-item",{attrs:{label:"地区",prop:"region"}},[t("select-region",{model:{value:e.form.region,callback:function(a){e.$set(e.form,"region",a)},expression:"form.region"}})],1),t("u-form-item",{attrs:{label:"详细地址",prop:"detail","border-bottom":!1}},[t("u-input",{attrs:{placeholder:"街道门牌、楼层等信息"},model:{value:e.form.detail,callback:function(a){e.$set(e.form,"detail",a)},expression:"form.detail"}})],1)],1)],1),t("v-uni-view",{staticClass:"footer"},[t("v-uni-view",{staticClass:"btn-wrapper"},[t("v-uni-view",{staticClass:"btn-item btn-item-main",class:{disabled:e.disabled},on:{click:function(a){arguments[0]=a=e.$handleEvent(a),e.handleSubmit()}}},[e._v("保存")])],1)],1)],1)},i=[]},"202f":function(e,a,t){"use strict";t.r(a);var r=t("1497"),n=t("125e");for(var i in n)"default"!==i&&function(e){t.d(a,e,(function(){return n[e]}))}(i);t("f2bc"),t("5c0e");var o,s=t("f0c5"),d=Object(s["a"])(n["default"],r["b"],r["c"],!1,null,"0a9ee7a9",null,!1,r["a"],o);a["default"]=d.exports},2767:function(e,a,t){var r=t("78cd");"string"===typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);var n=t("4f06").default;n("1960766a",r,!0,{sourceMap:!1,shadowMode:!1})},"5c0e":function(e,a,t){"use strict";var r=t("2767"),n=t.n(r);n.a},"78cd":function(e,a,t){var r=t("24fb");a=r(!1),a.push([e.i,'@charset "UTF-8";\r\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\r\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\r\n/* 颜色变量 */\r\n/* 行为相关颜色 */\r\n/* 文字基本颜色 */\r\n/* 背景颜色 */\r\n/* 边框颜色 */\r\n/* 尺寸变量 */\r\n/* 文字尺寸 */\r\n/* 图片尺寸 */\r\n/* Border Radius */\r\n/* 水平间距 */\r\n/* 垂直间距 */\r\n/* 透明度 */\r\n/* 文章场景相关 */\r\n/* 引入uView全局scss变量文件 */.page-title[data-v-0a9ee7a9]{width:94%;margin:0 auto;padding-top:%?40?%;font-size:%?28?%;color:rgba(69,90,100,.6)}.form-wrapper[data-v-0a9ee7a9]{margin:%?20?% auto %?20?% auto;padding:0 %?40?%;width:94%;-webkit-box-shadow:0 %?1?% %?5?% 0 rgba(0,0,0,.05);box-shadow:0 %?1?% %?5?% 0 rgba(0,0,0,.05);-webkit-border-radius:%?16?%;border-radius:%?16?%;background:#fff}\r\n/* 底部操作栏 */.footer[data-v-0a9ee7a9]{margin-top:%?60?%}.footer .btn-wrapper[data-v-0a9ee7a9]{height:100%;display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;padding:0 %?20?%}.footer .btn-item[data-v-0a9ee7a9]{-webkit-box-flex:1;-webkit-flex:1;flex:1;font-size:%?28?%;height:%?100?%;line-height:%?100?%;text-align:center;color:#fff;-webkit-border-radius:%?50?%;border-radius:%?50?%}.footer .btn-item-main[data-v-0a9ee7a9]{background:-webkit-gradient(linear,left top,right top,from(#f9211c),to(#ff6335));background:-webkit-linear-gradient(left,#f9211c,#ff6335);background:linear-gradient(90deg,#f9211c,#ff6335)}.footer .btn-item-main.disabled[data-v-0a9ee7a9]{background:#ff9779}',""]),e.exports=a},"9e83":function(e,a,t){var r=t("c9e5");"string"===typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);var n=t("4f06").default;n("c1775b5e",r,!0,{sourceMap:!1,shadowMode:!1})},c9e5:function(e,a,t){var r=t("24fb");a=r(!1),a.push([e.i,"uni-page-body[data-v-0a9ee7a9]{background:#f7f8fa}body.?%PAGE?%[data-v-0a9ee7a9]{background:#f7f8fa}",""]),e.exports=a},f2bc:function(e,a,t){"use strict";var r=t("9e83"),n=t.n(r);n.a}}]);