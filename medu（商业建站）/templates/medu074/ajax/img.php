<?php defined('IN_MET') or exit('No permission'); ?>
<if value="$c['met_img_page'] && $data['sub'] && !$_M['form']['search']">
<list data="$result" name="$m">
	<li class="widget">
		<div class="cover overlay overlay-hover">
			<a href='{$m.url}' title='{$m.name}' {$m.urlnew}>
				<img class="cover-image overlay-scale" <if value="$m['_index'] gt 3 || $data['page'] gt 1">data-original<else/>src</if>="{$m.columnimg|thumb:$c['met_imgs_x'],$c['met_imgs_y']}" alt="{$m.name}"/>
			</a>
		</div>
	    <div class="cover-title">
		  <h3><a href='{$m.url}' title='{$m.name}' {$m.urlnew}>{$m.name}</a></h3>
		</div>
	</li>
</list>
<else/>
<list data="$result" name="$p" num="$c[met_img_list]">
						<li class="portfolio-item-wrap" data-plugin="appear" data-animate="slide-bottom" data-repeat="false">
							<i></i>
							<div class="img">
								<a href="{$p.url}" title="{$p.title}" {$g.urlnew}>
									<img src="{$p.imgurl}" /></div>
								</a>
							<div class="text">
				            <div class="lh-business-a">
				            	<font class="iconfont icon-bus1"></font>
				              	<a href="{$p.url}" title="{$p.title}" class="after" {$g.urlnew}>
				              		<h2 class="lh-fonts">
				              			<if value="$p['_title']">{$p._title}<else/><span>{$p.title}</span></if>
				              		</h2>
				              	</a>
				              	<p class="lh-viewpoint-res">{$p.description|met_substr:0,150}<if value="mb_strlen($p['description']) gt 150">...</if></p>
				              	<a href="{$p.url}" class="lh-more" title="{$p.title}" {$g.urlnew}>
				              		<span>more</span>
				              		<i class="icon fa-long-arrow-right"></i>
				              	</a>
				          	</div>
				          </div>
				        </li>
					</list>
</if>