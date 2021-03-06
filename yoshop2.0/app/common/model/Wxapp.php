<?php
// +----------------------------------------------------------------------
// | 萤火商城系统 [ 致力于通过产品和服务，帮助商家高效化开拓市场 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017~2021 https://www.yiovo.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed 这不是一个自由软件，不允许对程序代码以任何形式任何目的的再发行
// +----------------------------------------------------------------------
// | Author: 萤火科技 <admin@yiovo.com>
// +----------------------------------------------------------------------
declare (strict_types = 1);

namespace app\common\model;

use think\facade\Cache;
use app\common\exception\BaseException;

/**
 * 微信小程序模型
 * Class Wxapp
 * @package app\common\model
 */
class Wxapp extends BaseModel
{
    // 定义表名
    protected $name = 'wxapp';

    // 定义主键名
    protected $pk = 'id';

    /**
     * 获取小程序信息
     * @param null $storeId
     * @return array|static|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public static function detail($storeId = null)
    {
        return (new static)->find($storeId);
    }

    /**
     * 从缓存中获取小程序信息
     * @param null $storeId
     * @return array
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public static function getWxappCache($storeId = null)
    {
        // 小程序id
        is_null($storeId) && $storeId = static::$storeId;
        if (!$data = Cache::get("wxapp_{$storeId}")) {
            // 获取小程序详情, 解除hidden属性
            $detail = self::detail($storeId);
            empty($detail) && throwError('未找到当前小程序信息');
            // 写入缓存
            $data = $detail->hidden([])->toArray();
            Cache::tag('cache')->set("wxapp_{$storeId}", $data);
        }
        return $data;
    }

}
