<?php

// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

class product_list
{
    public function __construct()
    {
        global $_M;
    }

    public function parse($json, $ui, $data)
    {
        global $_M;
        $attr = json_decode($json, true);
        $html = '这是product_list';

        return $html;
    }
}

// This program is an open source system, commercial use, please consciously to purchase commercial license.
// Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
