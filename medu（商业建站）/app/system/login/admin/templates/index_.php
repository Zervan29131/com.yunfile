<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
// dump($data);
$html_class=$body_class='h-100';
$html_class.=' met-login';
$body_class.=' d-flex align-items-center justify-content-center';
$met_title=$word['logintitle'];
$login_logo_filemtime=filemtime(str_replace($url['site'], PATH_WEB, $data['met_agents_logo_login']));
?>
<include file="pub/header"/>
<div>
	<div class="d-flex text-left align-items-center">
		<a href="{$data.met_agents_linkurl}" title="{$word.metinfo}" target="_blank">
			<img src="{$data.met_agents_logo_login}?{$login_logo_filemtime}" alt="{$word.metinfo}" width="200">
		</a>
		<form action="{$url.own_form}a=dologin" class="border-left pl-4 ml-5 met-login-form" style="border-color: #eee !important;" data-submit-ajax="1">
			<div class="row mb-4">
				<label class="col-form-label" style="width: 100px;"></label>
				<div class="mb-3">
					<h1 class="h5">{$word.loginadmin}</h1>
				</div>
			</div>
			<if value="$c['met_admin_type_ok']">
			<div class="row">
				<label class="col-form-label pr-3 text-right" style="width: 100px;">{$word.loginlanguage}</label>
				<div class="form-group mb-4">
					<select name="langset" data-checked="{$data.langset}" class="form-control" onchange="javascript:location.href=M.url.admin+'?langset='+this.value">
						<list data="$data['met_langadmin']" name="$v">
						<option value="{$v.mark}">{$v.name}</option>
						</list>
					</select>
				</div>
			</div>
			</if>
			<div class="row">
				<label class="col-form-label pr-3 text-right" style="width: 100px;">{$word.loginusename}</label>
				<div class="form-group mb-4">
					<input type="text" name="login_name" required class="form-control" style="width: 200px;">
				</div>
			</div>
			<div class="row">
				<label class="col-form-label pr-3 text-right" style="width: 100px;">{$word.loginpassword}</label>
				<div class="form-group mb-4">
					<input type="password" name="login_pass" required class="form-control" style="width: 200px;">
				</div>
			</div>
			<if value="$c['met_login_code']">
			<div class="row">
				<label class="col-form-label pr-3 text-right" style="width: 100px;">{$word.logincode}</label>
				<div class="form-group mb-4">
					<div class="input-group" style="width: 200px;">
						<input name='code' type='text' class='form-control' placeholder='{$word.memberImgCode}' required>
						<div class="input-group-append">
							<div class="input-group-text py-0 px-1"><img src='{$url.entrance}?m=include&c=ajax_pin&a=dogetpin' title='{$word.memberTip1}' align='absmiddle' role='button' class="met-getcode"></div>
						</div>
					</div>
				</div>
			</div>
			</if>
			<div class="row">
				<label class="col-form-label" style="width: 100px;"></label>
				<div class="">
					<button type="submit" class="btn btn-primary px-4">{$word.loginconfirm}</button>
					<a href="{$url.get_pass}" class="ml-3">{$word.loginforget}</a>
				</div>
			</div>
		</form>
	</div>
	<footer class="metadmin-foot text-grey text-center mt-5 pt-5">{$data.copyright}</footer>
</div>
<include file="pub/footer"/>