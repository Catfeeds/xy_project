<script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.js"></script>
<?php
use \app\common\services\UrlService;
use \app\common\services\StaticService;
use \app\common\services\UtilService;
StaticService::includeAppJsStatic( "/js/m/default/index.js",\app\assets\MAsset::className() );

StaticService::includeAppJsStatic( "/js/m/default/hammer.min.js.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/carousel.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/jquery-2.1.0.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/jQuery.rTabs.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/jquery.lazyload.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/jquery.tabs.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/bootstrap.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/angular.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/angular-route.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/default/angular-touch.js",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/index.css",\app\assets\MAsset::className() );
?>

<!--轮播图开始-->

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active data-ride="carousel" data-interval="2000">
        <img src="<?=UrlService::buildPicUrl("carousel",'1.jpg' );?>">
    </div>
    <div class="item">
        <img src="<?=UrlService::buildPicUrl("carousel",'2.jpg');?>">
    </div>
    <div class="item">
        <img src="<?=UrlService::buildPicUrl("carousel",'3.jpg' );?>">
    </div>
</div>
</div>
<!--顶部导航-->
<div class="packet">
    <ul>
        <a href="#" class="iconfont icon-hongbao" style="color: red;"><p>领取红包</p></a>
        <a href="#" class="iconfont icon-shangcheng" style="color: orange;"><p>红包商城</p></a>
        <a href="<?=UrlService::buildMUrl("/product/index");?>" class="iconfont icon-juzhudi" style="color: #337AB7;"><p>翔游旅居精选</p></a>
        <a href="<?=UrlService::buildMUrl("/product/index");?>" class="iconfont icon-mianfeilvyoujiaotongtu" style="color: green;"><p>免费游</p></a>
        <a href="<?=UrlService::buildMUrl("/product/index");?>" class="iconfont icon-cuxiao" style="color: red;"><p>精品促销</p></a>
        <a href="#" class="iconfont icon-gengduo" style="color: #272727;"><p>更多</p></a>
    </ul>
</div>
<!--推荐预定开始-->
<div class="recommend row">
    <ul>
        <li class="col-md-6"><h5>推荐预定</h5></li>
        <li class="col-md-6"><a href="#">更多</a></li>

    </ul>
    <div class="container-fluid" id="container">
        <div class="row">
            <div class="col-xs-12 col-lg-6" id="one">
                <div class="media" id="med">
                    <div class="media-left media-middle" id="med1">
                        <img class="media-object" src="<?=UrlService::buildPicUrl("jidi",'hainan12.jpg' );?>" alt="...">
                    </div>
                    <div class="media-body" id="med2">
                        <h4 class="media-heading"><a href="<?=UrlService::buildPicUrl("jidi",'hebei.jpg' );?>">蝶恋湾公寓</a></h4>
                        <p>理想型家庭滨海度假旅居养老场所</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-lg-6" id="one">
                <div class="media" id="med">
                    <div class="media-left media-middle" id="med1">
                        <img class="media-object" src="<?=UrlService::buildPicUrl("jidi",'hainan10.jpg' );?>" alt="...">
                    </div>
                    <div class="media-body" id="med2">
                        <h4 class="media-heading"><a href="#">三亚正扬国际度假酒店</a></h4>
                        <p>三亚正扬国际度假酒店位于三亚湾海坡旅游度假区，由深圳信广集团翻新改造、精心打造的一家滨海度假酒店</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="recommend row">
    <ul>
        <li class="col-md-6"><h5>我的旅居卡</h5></li>
        <li class="col-md-6"><a href="#">更多</a></li>

    </ul>
    <div class="card">
        <a href="#" class="experience">
            <img src="<?=UrlService::buildPicUrl("jidi",'chengdu1.png' );?>"/>
            <span>红树湾观鹭苑1-803室</span>
            <span>￥8680元/35天旅居卡</span>
            <span>￥1960元/7天体验卡</span>
        </a>
        <a href="#" class="experience1">
            <img src="<?=UrlService::buildPicUrl("jidi",'dali1.png' );?>"/>
            <span>红树湾碧云轩8-6A02室</span>
            <span>￥11130元/35天旅居卡</span>
            <span>￥2520元/7天体验卡</span>
    </div>
</div>
<div class="shop_header">
    <i class="shop_icon"></i>
    <strong><?=UtilService::encode($info['name']);?></strong>
</div>


<?php if( $image_list ):?>
<div id="slideBox" class="slideBox">
    <div class="bd">
        <ul>
            <?php foreach( $image_list as $_image_info ):?>
            <li><img style="max-height: 250px;" src="<?=UrlService::buildPicUrl("brand",$_image_info["image_key"]);?>" /></li>
            <?php endforeach;?>
        </ul>
    </div>
    <div class="hd"><ul></ul></div>
</div>
<?php endif;?>
<div class="fastway_list_box">
    <ul class="fastway_list">
        <li><a href="<?=UrlService::buildNullUrl();?>" style="padding-left: 0.1rem;"><span>品牌名称：<?=UtilService::encode( $info['name'] );?></span></a></li>
        <li><a href="<?=UrlService::buildNullUrl();?>" style="padding-left: 0.1rem;"><span>联系电话：<?=UtilService::encode( $info['mobile'] );?></span></a></li>
        <li><a href="<?=UrlService::buildNullUrl();?>" style="padding-left: 0.1rem;"><span>联系地址：<?=UtilService::encode( $info['address'] );?></span></a></li>
        <li><a href="<?=UrlService::buildNullUrl();?>" style="padding-left: 0.1rem;"><span>品牌介绍：<?=UtilService::encode( $info['description'] );?></span></a></li>
    </ul>
</div>