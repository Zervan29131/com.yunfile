<?php

// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

class news_list
{
    public $version = '1.0';

    public function __construct()
    {
        global $_M;
    }

    public function parse($json, $ui, $data)
    {
        global $_M;
        $attr = json_decode($json, true);
        $c = $_M['config'];
        $num = isset($attr['num']) ? $attr['num'] : 10;
        $cid = isset($attr['cid']) ? $attr['cid'] : $ui['index_news_id'];
        $columnLabel = load::sys_class('label', 'new')->get('column');

        $column = $columnLabel->get_column_id($ui['index_news_id']);
        $module = load::sys_class('handle', 'new')->mod_to_name($column['module']);
        if (!$module) {
            return;
        }
        $news = load::sys_class('label', 'new')->get($module);
        $news->page_num = $num;
        $result = $news->get_list_page($cid, $data['page']);

        $html = <<<str
        <div class="news_list_met_16_1_{$ui['mid']} met-index-body bgcolor" m-id="{$ui['mid']}">
        <div class="container">
            <h2 class="m-t-0 text-xs-center font-weight-300 invisible" data-plugin="appear" data-animate="slide-top" data-repeat="false">{$ui['index_news_title']}</h2>
            <p class="desc m-b-0 text-xs-center font-weight-300 invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{$ui['index_news_desc']}</p><ul class="blocks-2 index-news-list imagesize" data-scale="100x160">
str;
        foreach ($result as $key => $item) {
            $item['thumb'] = thumb($item['imgurl'], $ui['img_w'], $ui['img_h']);
            $item['description'] = met_substr($item['description'], 0, $ui['desc_num']);
            $html .= <<<str
        <li class="media media-lg animation-slide-bottom appear-no-repeat" data-plugin="appear" data-animate="slide-bottom" data-repeat="false">
            <div class="media-left">
                <a href="{$item['url']}" title="{$item['title']}" target="_self">
                    <img class="media-object" data-original="{$item['thumb']}" alt="{$item['title']}" data-lazyload="true" src="{$item['thumb']}" style="display: block;"></a>
            </div>
            <div class="media-body">
                <h4 class="media-heading m-b-10">
                    <a href="{$item['url']}" title="{$item['title']}" target="_self">
                        <span style="color:#a10000 ;">{$item['title']}</span>
                    </a>
                </h4>
                <p class="des m-b-5 font-weight-300">{$item['description']}</p>
                <p class="info m-b-0 font-weight-300">
                    <span>{$item['updatetime']}</span>
                    <span class="m-l-10">{$item['issue']}</span>
                    <span class="m-l-10"> <i class="icon wb-eye m-r-5"></i>
                        {$item['hits']}
                    </span>
                </p>
            </div>
        </li>
str;
        }
        $html .= '</ul>';

        $column = load::sys_class('label', 'new')->get('column')->get_column_by_type('current', $ui['index_news_id'], $data);
        $html .= <<<str
<a href="{$column[0]['url']}" title="{$column[0]['name']}" class="more">{$ui['more']}</a>
</div></div>
str;

        return $html;
    }
}

// This program is an open source system, commercial use, please consciously to purchase commercial license.
// Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
