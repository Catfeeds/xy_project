<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/4 0004
 * Time: 下午 2:19
 */
use \app\common\services\UrlService;
use \app\common\services\StaticService;
StaticService::includeAppJsStatic( "/js/m/default/jquery-2.1.1.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/red/red.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/red/zepto.min.js",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/red/csshake.min.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/red/style.css",\app\assets\MAsset::className() );
?>
<!-- 红包 -->
<div class="red"><!-- shake-chunk -->
    <span style="background-image: url(<?=UrlService::buildPicUrl("carousel",'red-w.png' );?>);"></span>
    <button class="redbutton" type="领取红包">拆红包</button>
    <div class="red-jg">
        <h1>恭喜您！</h1>
        <h5>获得iPhone 6s 16g手机一部</h5>
    </div>
</div>
<!-- End 红包 -->
<!-- 按钮 -->
<div class="t-btn">
    <button>立即领取</button>
</div>
<!-- End 按钮 -->
