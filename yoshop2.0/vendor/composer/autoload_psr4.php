<?php

// autoload_psr4.php @generated by Composer

$vendorDir = dirname(dirname(__FILE__));
$baseDir = dirname($vendorDir);

return array(
    'think\\worker\\' => array($vendorDir . '/topthink/think-worker/src'),
    'think\\trace\\' => array($vendorDir . '/topthink/think-trace/src'),
    'think\\app\\' => array($vendorDir . '/topthink/think-multi-app/src'),
    'think\\' => array($vendorDir . '/topthink/think-helper/src', $vendorDir . '/topthink/think-orm/src', $vendorDir . '/topthink/framework/src/think'),
    'edward\\captcha\\' => array($vendorDir . '/edward1108/edward-captcha/src'),
    'app\\' => array($baseDir . '/app'),
    'Workerman\\' => array($vendorDir . '/workerman/workerman'),
    'Symfony\\Polyfill\\Php80\\' => array($vendorDir . '/symfony/polyfill-php80'),
    'Symfony\\Polyfill\\Php72\\' => array($vendorDir . '/symfony/polyfill-php72'),
    'Symfony\\Polyfill\\Mbstring\\' => array($vendorDir . '/symfony/polyfill-mbstring'),
    'Symfony\\Component\\VarDumper\\' => array($vendorDir . '/symfony/var-dumper'),
    'Symfony\\Component\\EventDispatcher\\' => array($vendorDir . '/symfony/event-dispatcher'),
    'Qiniu\\' => array($vendorDir . '/qiniu/php-sdk/src/Qiniu'),
    'Psr\\SimpleCache\\' => array($vendorDir . '/psr/simple-cache/src'),
    'Psr\\Log\\' => array($vendorDir . '/psr/log/Psr/Log'),
    'Psr\\Container\\' => array($vendorDir . '/psr/container/src'),
    'Psr\\Cache\\' => array($vendorDir . '/psr/cache/src'),
    'OSS\\' => array($vendorDir . '/aliyuncs/oss-sdk-php/src/OSS'),
    'MyCLabs\\Enum\\' => array($vendorDir . '/myclabs/php-enum/src'),
    'Lvht\\' => array($vendorDir . '/lvht/geohash/src'),
    'League\\Flysystem\\Cached\\' => array($vendorDir . '/league/flysystem-cached-adapter/src'),
    'League\\Flysystem\\' => array($vendorDir . '/league/flysystem/src'),
    'Grafika\\' => array($vendorDir . '/kosinix/grafika/src/Grafika'),
    'GatewayWorker\\' => array($vendorDir . '/workerman/gateway-worker/src'),
);