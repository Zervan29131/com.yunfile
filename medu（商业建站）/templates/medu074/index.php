<?php defined('IN_MET') or exit('No permission'); ?>

<include file="head.php" />
<main>
     <!--服务区块-->
<if value="$_M['form']['pageset'] || $lang['serviceok'] eq 1">
     <div class="met-index-service text-xs-center met-index-body <if value="$lang['sevicebg_type'] eq 1">bgcolor<else/>bgpic</if>" m-id="met_index_service" m-type="nocontent">
        <div class="container">
            <if value="$lang['index_service_title']">
            <h2 class="m-t-0 invisible" data-plugin="appear" data-animate="slide-top" data-repeat="false">{$lang.index_service_title}</h2>
            </if>
            <if value="$lang['index_service_desc']">
                <p class="desc m-b-0 invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{$lang.index_service_desc}</p>
            </if>
            <ul class="
                <if value="$lang['index_service_column_xs'] eq 1">
                blocks-100
                <else/>
                blocks-xs-{$lang.index_service_column_xs}
                </if>
                blocks-md-{$lang.index_service_column_md} blocks-lg-{$lang.index_service_column_lg} blocks-xxl-{$lang.index_service_column_xxl} index-service-list">
                <tag action='category' cid="$lang['index_service_id']" num="all" type='son'>
                    <li>
                     <div class="service_img">
                        <img src="{$m.columnimg}" alt="{$m.name}"/>
                      </div>
                      <div class="service_des">
                         <h3 class='m-b-10 m-t-10'>{$m.name}</h3>
                         <p class='m-b-0 font-weight-300'>{$m.description}</p>
                     </div>
                    </li>
                </tag>
            </ul>
        </div>
    </div>
</if>
    <!-- 产品区块 -->
    <div class="met-index-product met-index-body text-xs-center <if value="$lang['bg_type'] eq 1">bgcolor<else/>bgpic</if>" m-id="met_index_product">
        <div class="container">
            <if value="$lang['index_product_title']">
            <h2 class="m-t-0 invisible" data-plugin="appear" data-animate="slide-top" data-repeat="false">{$lang.index_product_title}</h2>
            </if>
            <if value="$lang['index_product_desc']">
            <p class="desc m-b-0 invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{$lang.index_product_desc}</p>
            </if>
            <ul class="<if value="$lang['index_case_column_xs'] eq 1">
                blocks-100
                <else/>
                blocks-xs-{$lang.index_product_column_xs}
                </if>
                blocks-md-{$lang.index_product_column_md} blocks-lg-{$lang.index_product_case_column_lg} blocks-xxl-{$lang.index_product_column_xxl}  imagesize index-product-list clearfix" data-scale='{$lang.index_product_img_h}X{$lang.index_product_img_w}'>
                <tag action="list" cid="$lang['index_product_id']" num="$lang['index_product_allnum']" type="$lang['index_product_type']">
                    <li class=''>
                        <div class="card">
                            <figure class="card-header cover">
                                <a href="javascript:;" title="{$v.title}" class="block" {$g.urlnew}>
                                    <img class="cover-image lazy" data-original="{$v.imgurl|thumb:$lang[index_product_img_w],$lang[index_product_img_h]}" alt="{$v.title}" >
                                </a>
                            </figure>
                            <div class="block txt-info">
                                <h4 class="card-title m-0 p-x-10 text-shadow-none text-truncate">
                                    {$v._title}
                                </h4>
                                <span class="moreinfo">
                                    <a href="{$v.url}" title="{$v.title}" class="block" {$g.urlnew}>more >></a>
                                </span>
                            </div>
                        </div>
                         <p class="img-title <if value="$lang['img_titleposition'] eq 1"> titleleft <else/>tltlecenter</if>">
                            {$v.title}
                        </p>
                    </li>
                </tag>
            </ul>
        </div>
    </div>
    <!-- 简介区块 -->
    <div class="met-index-about met-index-body text-xs-center <if value="$lang['aboutbg_type'] eq 1">bgcolor<else/>bgpic</if>" m-id="met_index_about" m-type="nocontent">
        <if value="!$lang['home_about_img_ok']">
            <div class="about-img">
                 <if value="$c['met_mobile_logo']">
                 <img src="{$lang.home_about_imgurl}" class="pcimg"/>
                </if>
                <if value="$c['met_mobile_logo']">
                  <img src="{$lang.home_about_mbimgurl}" class="mbimg"/>
                </if>
            </div>
         </if>
        <div class="container abouttext">
            <if value="$lang['home_about_title']">
                <h2 class="m-t-0 invisible" data-plugin="appear" data-animate="slide-top" data-repeat="false">{$lang.home_about_title}</h2>
            </if>
            <if value="$lang['home_about_desc']">
                <p class="desc m-b-0 invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{$lang.home_about_desc}</p>
            </if>
            <div class="row">
                <div class="text met-editor">
                    {$lang.home_about_content}
                </div>
                <a class="about-more" href="about/">More</a>
            </div>
        </div>
    </div>
    <!-- 文章区块 -->
    <div class="met-index-news met-index-body swiper-slide" m-id="met_index_news">
        <div class="container">
            <div class="title-wrap text-xs-center">
                <if value="$lang['index_news_title']">
                <h2 class="m-t-0 invisible news-title" data-plugin="appear" data-animate=="fade" data-repeat="false">{$lang.index_news_title}</h2>
                </if>
                <if value="$lang['index_news_desc']">
                <p class="desc m-b-0  invisible title-text" data-plugin="appear" data-animate="fade" data-repeat="false">{$lang.index_news_desc}</p>
                </if>
            </div>
            <!--pc端-->    
            <div class="pc-wrapper news-container clearfix">
                  <!--右侧调用-->
                 <div class="swiper-container J-tab-con tab-list">
                        <ul class="swiper-wrapper text-xs-center">
                            <tag action="category" type="son" cid="$lang['home_news_id']">
                                <li class="transition swiper-slide tab-item <if value='$m[_index] eq 0'>active</if>">{$m.name}</li>
                            </tag>
                        </ul>
                    </div>
                    <div class="cut-container J-cut-con" style="<if value='!$lang[more_text]'>padding-bottom: 0;</if>">
                        <div class="swiper-container cut-scroll J-news-scroll">
                            <div class="swiper-wrapper">
                                <tag action="category" type="son" cid="$lang['home_news_id']">
                                    <div class="swiper-slide transition cut-content <if value='$m[_index] eq 0'>active</if>">
                                    <ul class="
                                        <if value="$lang['index_news_column_xs'] eq 1">
                                        blocks-100
                                        <else/>
                                        blocks-xs-{$lang.index_news_column_xs}
                                        </if>
                                        blocks-md-{$lang.index_news_column_md} blocks-lg-{$lang.index_news_column_lg} blocks-xxl-{$lang.index_news_column_xxl}">
                                        <tag action="list" type="all" cid="$m['id']" num="$lang[home_news_num]">
                                        <li>
                                            <a href="{$v.url}" title="{$v.title}" {$v.urlnew} class="transition list-item clearfix">
                                                <div class="list-detail">
                                                    <h4 class="transition list-title">
                                                        <p><if value="$v['_title']">{$v._title}<else/>{$v.title}</if></p>
                                                     </h4>
                                                    <p class="time-text">{$v.updatetime}</p>
                                                        <p class="list-msg">{$v.description}</p>
                                                </div>
                                            </a>
                                        </li> 
                                        </tag>
                                    </ul>
                                    </div>
                                </tag>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    <!-- 服务案例区块 -->
    <div class="met-index-case met-index-body text-xs-center <if value="$lang['casebg_type'] eq 1">bgcolor<else/>bgpic</if>" m-id="met_index_case" m-type="nocontent">
        <div class="container">
            <if value="$lang['home_case_title']">
                <h2 class="m-t-0 invisible" data-plugin="appear" data-animate="slide-top" data-repeat="false">{$lang.home_case_title}</h2>
            </if>
            <if value="$lang['home_case_desc']">
                <p class="desc m-b-0 invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{$lang.home_case_desc}</p>
            </if>
        <!--调用列表内容-->
        <ul class="m-t-20
                <if value="$lang['index_case_column_xs'] eq 1">
                blocks-100
                <else/>
                blocks-xs-{$lang.index_case_column_xs}
                </if>
                blocks-md-{$lang.index_case_column_md} blocks-lg-{$lang.index_case_column_lg} blocks-xxl-{$lang.index_case_column_xxl} index-case-list" swiper-animate-effect="slideInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0">
            <tag action="list" type="all" cid="$lang['home_case_id']" num="$lang[home_case_num]">
                <li class="case-item ani" swiper-animate-effect="slideInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0" style="animation-delay: {$time}s;">
                         <div class="case-img">
                            <img data-original="{$v.imgurl|thumb:$lang[caseimg_x],$lang[caseimg_y]}" alt="{$v.title}"/ alt="{$v.name}" class="transition"/>
                            <p class="img-title"><span>{$v.title}</span></p>
                        </div>
                        <a href="{$v.url}" title="{$v.name}" {$v.urlnew} class="case-link pull-xs-left">
                        <div class="bototm-content">
                            <p class="case-title transition m-t-15">{$v.title}</p>
                             <if value="$v['description']">
                                <p class="m-b-10 m-t-10 case-desc">{$v.description}</p>
                            </if>
                        </div>
                    </a>
                </li>
            </tag>
        </ul>
    <!--调用列表内容end-->
        </div>
    </div>
</main>
<include file="foot.php" />