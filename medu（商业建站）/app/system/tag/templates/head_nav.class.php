<?php

// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

class head_nav
{
    public function __construct()
    {
        global $_M;
    }

    public function parse($json, $ui, $data)
    {
        global $_M;
        $attr = json_decode($json, true);
        $c = $_M['config'];
        $html = '这是head_nav';

        return $html;
    }
}

// This program is an open source system, commercial use, please consciously to purchase commercial license.
// Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
