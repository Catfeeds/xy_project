<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/25 0025
 * Time: 下午 2:25
 */
use \app\common\services\UrlService;
use \app\common\services\StaticService;
StaticService::includeAppCssStatic( "/css/m/product/base.css",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/product/index.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/product/jquery-2.1.1.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/product/jquery.lazyload.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/product/jquery.tabs.js",\app\assets\MAsset::className() );
?>
<div class="search_header">
    <a href="<?=UrlService::buildNullUrl();?>" class="category_icon"></a>
    <input name="kw" type="text" class="search_input" placeholder="请输入您搜索的关键词" value="<?=$search_conditions['kw'];?>" />
    <i class="search_icon"></i>
</div>
<div class="sort_box">
    <ul class="sort_list clearfix">
        <li>
            <a href="<?=UrlService::buildNullUrl();?>" <?php if(  $search_conditions['sort_field'] == "default" ) :?> class="aon" <?php endif;?> data="default">
                <span>默认</span>
            </a>
        </li>
        <li>
            <a href="<?=UrlService::buildNullUrl();?>" <?php if(  $search_conditions['sort_field'] == "month_count" ) :?> class="aon" <?php endif;?> data="month_count">
                <span>月销量
                    <?php if(  $search_conditions['sort_field'] == "month_count" ) :?>
                        <?php if( $search_conditions['sort'] == "asc" ):?>
                            <i class="lowly_icon"></i>
                        <?php else:?>
                            <i class="high_icon"></i>
                        <?php endif;?>
                    <?php else:?>
                        <i></i>
                    <?php endif;?>
                </span>
            </a>
        </li>
        <li>
            <a href="<?=UrlService::buildNullUrl();?>" <?php if(  $search_conditions['sort_field'] == "view_count" ) :?> class="aon" <?php endif;?> data="view_count">
                <span>人气
                    <?php if(  $search_conditions['sort_field'] == "view_count" ) :?>
                        <?php if( $search_conditions['sort'] == "asc" ):?>
                            <i class="lowly_icon"></i>
                        <?php else:?>
                            <i class="high_icon"></i>
                        <?php endif;?>
                    <?php else:?>
                        <i></i>
                    <?php endif;?>
                </span>
            </a>
        </li>
        <li>
            <a href="<?=UrlService::buildNullUrl();?>" <?php if(  $search_conditions['sort_field'] == "price" ) :?> class="aon" <?php endif;?> data="price">
                <span>价格
                    <?php if(  $search_conditions['sort_field'] == "price" ) :?>
                        <?php if( $search_conditions['sort'] == "asc" ):?>
                            <i class="lowly_icon"></i>
                        <?php else:?>
                            <i class="high_icon"></i>
                        <?php endif;?>
                    <?php else:?>
                        <i></i>
                    <?php endif;?>
                </span>
            </a>
        </li>
    </ul>
</div>
<div class="projects">
    <div class="box demo2">
        <ul class="tab_menu">
            <li class="current">海南</li>
            <li>山东</li>
            <li>江苏</li>
            <li>四川</li>
            <li>云南</li>
            <li>广西</li>
            <li>贵州</li>
            <li>河北</li>
        </ul>
    </div>
</div>
<div class="probox">
    <?php if( $list ):?>
        <ul class="prolist">
            <?php foreach( $list as $_item ):?>
                <li>
                    <a href="<?=UrlService::buildMUrl("/product/info",[ 'id' => $_item['id'] ]);?>">
                        <i><img src="<?=$_item['main_image_url'];?>"  style="width: 100%;height: 200px;"/></i>
                        <span><?=$_item['name'];?></span>
                        <b><label>月销量<?=$_item['month_count'];?></label>¥<?=$_item['price'];?></b>
                    </a>
                </li>
            <?php endforeach;?>
        </ul>
    <?php else:?>
        <div class="no-data">
            暂无图书
        </div>
    <?php endif;?>
</div>
<script>
    function box(){
        window.history.back()
    }
    //项目介绍
    $(function(){
        $("img[original]").lazyload({ placeholder:"images/color3.gif" });
        $('.demo2').Tabs({
            event:'click'
        });
        //部分区域图片延迟加载
        function lazyloadForPart(container) {
            container.find('img').each(function () {
                var original = $(this).attr("original");
                if (original) {
                    $(this).attr('src', original).removeAttr('original');
                }
            });
        }
    });
</script>