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
declare (strict_types=1);

namespace app\api\service\user;

use app\api\model\Wxapp as WxappModel;
use app\common\exception\BaseException;
use app\common\library\wechat\WxUser;
use app\common\service\BaseService;
use app\api\model\UserOauth as UserOauthModel;

/**
 * 服务类: 第三方用户服务类
 * Class Avatar
 * @package app\api\service\user
 */
class Oauth extends BaseService
{
    /**
     * 保存第三方认证信息
     * @param int $userId 用户ID
     * @param array $partyData 第三方登录信息
     * @return bool
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function party(int $userId, array $partyData = [])
    {
        // 是否存在第三方用户
        $model = new UserOauthModel;
        $isExistOauthType = $model->isExistOauthType($userId, $partyData['oauth']);
        if ($isExistOauthType) {
            return true;
        }
        // 获取oauth_id和unionId
        $oauthInfo = $this->getOauthInfo($partyData);
        // 如果不存在oauth则写入
        return $model->add([
            'user_id' => $userId,
            'oauth_type' => $partyData['oauth'],
            'oauth_id' => $oauthInfo['oauth_id'],
            'unionid' => $oauthInfo['unionid'] ?? '',   // unionid可以不存在
            'store_id' => $this->storeId
        ]);
    }

    /**
     * 获取第三方用户session信息 (openid、unionid、session_key等)
     * @param array $partyData
     * @return mixed|null
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    private function getOauthInfo(array $partyData)
    {
        if ($partyData['oauth'] === 'MP-WEIXIN') {
            $wxSession = static::wxCode2Session($partyData['code']);
            return ['oauth_id' => $wxSession['openid'], 'unionid' => $wxSession['unionid'] ?? null];
        }
        return null;
    }

    /**
     * 微信小程序code换openid
     * @param string $code
     * @return mixed
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public static function wxCode2Session(string $code)
    {
        // 获取当前小程序信息
        $wxConfig = WxappModel::getWxappCache();
        // 微信登录 (获取session_key)
        $WxUser = new WxUser($wxConfig['app_id'], $wxConfig['app_secret']);
        $result = $WxUser->jscode2session($code);
        !$result && throwError($WxUser->getError());
        return $result;
    }

    /**
     * 根据openid获取用户ID
     * @param string $oauthId 第三方用户唯一标识 (openid)
     * @param string $oauthType 第三方登陆类型
     * @return mixed
     */
    public static function getUserIdByOauthId(string $oauthId, string $oauthType)
    {
        return UserOauthModel::getUserIdByOauthId($oauthId, $oauthType);
    }


}