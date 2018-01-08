
<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/3 0003
 * Time: 上午 11:47
 */
use \app\common\services\UrlService;
use \app\common\services\StaticService;
StaticService::includeAppCssStatic( "/css/m/default/base.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/style.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/jquery-ui.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/iconfont.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/swiper.min.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/anicollection.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/dateRange.min.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/rooms.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/amazeui.min.css",\app\assets\MAsset::className() );
StaticService::includeAppCssStatic( "/css/m/default/app.css",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/jquery-2.1.1.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/base.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/swiper.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/style(1).css",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/Validform_v5.3.2.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/anijs-min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/jquery-1.10.2.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/app.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/amazeui.min.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/app.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/dateRange.js",\app\assets\MAsset::className() );
StaticService::includeAppJsStatic( "/js/m/plan/jweixin-1.0.0.js",\app\assets\MAsset::className() );

?>
<style type="text/css">
        .pop-bg{position:fixed;top:0;z-index:10;width:100%;height:150%; display:block;background:#000;opacity:.75;filter:alpha(opacity=75)}
		.pop{position:fixed;left:50%;top:50%;z-index:20;width:218px;height:113px;border-radius:8px;margin:-64px 0 0 -114px;background:#f8f8f8;line-height:1.5;text-align:left;font-size:16px;color:#686868;padding:10px}
		.pop p{padding-top:30px}
		.pop p.left1{text-align:left; padding:10px;font-size:.9em;}
		.pop p.right1{text-align:right; padding:10px;font-size:1em;}
		
        .pop2{position:fixed;left:5%; top:10%;z-index:2;width:85%;border-radius:6px;background:#f8f8f8;line-height:1.5;text-align:center;font-size:16px;color:#686868; padding:10px}        
		.pop2 p{padding-top:30px}
		.pop2 p.left1{text-align:left; padding:10px;font-size:.9em;}
		.pop2 p.right1{text-align:right; padding:10px;font-size:1em;}
        .pop1 p{padding-top:15px;color:#686868}
</style>
    <script>
        function errShow(content) {
            $('.error').html(content);
            $('.pop-bg').show();
            $('.pop1').show();
            setTimeout("errHide()", 3000);
        }

        function noteShow(content) {
            $('.error').html(content);
            $('.pop-bg').show();
            $('.pop1').show();
          
        }
        function listShow(content) {
    
            $('.box').show();
            setTimeout("errHide()", 3000);
        }

        //隐藏错误提示
        function errHide() {
            $('.pop-bg').hide();
            $('.pop1').hide();
            $('.box').hide();
            $('.error').text('');
            //$("#error").html('');
        }

        //点击关闭错误提示
        $(document).on('click', '.pop-bg', function () {
            errHide();
        });

        //点击关闭错误提示
        $(document).on('click', '.pop', function () {
            errHide();
        });
        //点击关闭错误提示
        $(document).on('click', '.box', function () {
            errHide();
        });
    </script>

    <script>
        function clearTxt(Txtid) {
            document.getElementById(Txtid).value = "";
        }
    </script>
    
    
    
</head>
<body style="">
    <div class="pop-bg" style="display:none;"></div>
    <div class="pop pop1" style="display:none;">
        <p class="error"><br></p>
    </div>

<style>
    body{padding-right:0 !important}
    .scrollspy-nav {
        top: 0;
        z-index: 100;
        background: #0e90d2;
        width: 100%;
        padding: 0 10px;
    }
    .scrollspy-nav ul {
        margin: 0;
        padding: 0;
    }
    .scrollspy-nav li {
        display: inline-block;
        list-style: none;
    }
    .scrollspy-nav a {
        color: #eee;
        padding: 10px 20px;
        display: inline-block;
    }
    .scrollspy-nav a.am-active {
        color: #fff;
        font-weight: bold;
    }
    .am-panel {
        margin-top: 20px;
    }
    .sort-fix{position:fixed !important}
    .vrda{top:45px}
    .vrss-block{
        position: absolute;
        top: 46px;
        width: 100%;
        height: 30px;
        line-height: 30px;
        text-align: center;
        background: #fff;
        padding-bottom: 5px;
        box-sizing: unset;
        border-bottom: 1px solid #eaeaea;
    }
    .vrss-block a{
        background: #f0f0f0;
        display: inline-block;
        width: 30%;
        border-radius: 10px;
    }
    .vrss-block .block-active{
        background:#3bb4f2;
        color:#fff
    }
    #functionbox {
        position: fixed;left: 0;right: 0;
        bottom: 0;background-color: rgba(240, 240, 240, 0.8);
        height: 49px;overflow: hidden;
        z-index: 100;width: 100%;
    }
    #functionbox a{float:left;text-align:center;line-height:49px;position:relative;}
    #functionbox .addcontbox {padding-left:20px;background: rgba(51, 51, 51, 0.6);text-decoration:none;color:#fff}
    #functionbox .addcontbox a{color:#019dd8;}
    #functionbox .payment {
        display: block;width: 50%;height: 49px;background:#019dd8;line-height: 49px;
        font-size: 1.1em;text-align: center;color: #fff;
        right:0;filter: alpha(opacity=80);opacity: 0.8;
    }
    .clear0{text-align:center; color:#ccc; padding:10px}
    #gl_toast{position:fixed;top:0;right:0;bottom:0;left:0;z-index:50}
    #gl_toast div:first-child{position:absolute;width:100%;height:100%;background:rgba(0,0,0,0.5)}
    #gl_toast div:last-child{position:absolute;width:70%;left:15%;top:50%;margin-top:-75px;background:#fff;border-radius:8px;text-align:center;line-height:50px;color:#555;font-size:14px;word-wrap:break-word}
    /**列表新样式2018.01.01**/
.pro_imgbox{ margin-top:10px;margin-bottom:0px;}
.pro_imgbox img{ width:100%; height:100px; }
.pro_conbox h4,.pro_conbox p{ margin:0;}
.pro_conbox p {color:#666;font-size:0.9em;}
.pro_conbox p span{ display:block; float:left;width:60%}
.pro_conbox p span i{ color:red; font-size:1.5em; font-style: normal;}
.am-thumbnail{ margin-bottom:0px;}
hr{ margin:5px 0;}
</style>
<script>
    var bagStartDate = "";
    var bagEndDate = "";
    var cardBalance = 1;
    var sortTargetTop = -1;
    $(function () {
        if (sortTargetTop == -1) {
            sortTargetTop = $('.sort')[0].offsetTop;
        }
         var city = '458';
         if (city != null && city != '') {
             if (city == 460) {
                 $("#city").html("山东海阳");
             } else if (city == 458) {
                 $("#city").html("海南澄迈");
             } else if (city == 122) {
                 $("#city").html("福建三明");
             } else {
                 $("#city").html("按区域选");
             }
             if (city == 460 || city == 458 || city == 122) {
                 $('#ulCity').children('li').removeClass('active').filter(function () { return $(this).attr('data-city') == city; }).addClass('active');
             }
         }
         var houseroom = '0';
         if (houseroom != null && houseroom != '') {
             if (houseroom == 1) {
                 $("#houseroom").html("一室");
             } else if (houseroom == 2) {
                 $("#houseroom").html("二室");
             } else if (houseroom == 3) {
                 $("#houseroom").html("三室以上");
             } else {
                 $("#houseroom").html("按户型选");
             }
             if (houseroom == 1 || houseroom == 2 || houseroom == 3) {
                 $('#ulRooms').children('li').removeClass('active').filter(function () { return $(this).attr('data-houseroom') == houseroom; }).addClass('active');
             }
         }
    });
    function bc(buytype,houseid, labelid, cid, pid) {
        var url = "/Vac/RoomBuyCard?id=" + houseid + "&houseid=" + houseid + "&labelid=" + labelid + "&sdate=&edate=&tel=&vid=&cid=" + cid + "&pid=" + pid + "&userid=fb70120c-cf5a-432d-8eea-8876ea462451&name=马达&phone=17602183362";
        if (buytype == 2 && 2==2 && cardBalance > 0){
            $.yesno('检查到你旅租卡内尚有余额，您购买体验卡后，原卡片内的余额也将启用体验价。是否继续？', function () {
                location.href = url;
            }, '是', '否');
            return;
        }
        location.href = url;
    }
    function bk(_this, a, b, c, d, e) {
        //var url = '/vac/roomshow?houseid=' + b + '&labelid=' + c + '&sdate=&edate=&cid=' + d + '&pid=' + e + '&userid=fb70120c-cf5a-432d-8eea-8876ea462451&name=马达&phone=17602183362';
        if(bagStartDate == ""){
            var url = '/vac/orderroom/' + b + '|2018-01-08|2018-01-11|' + d + '|fb70120c-cf5a-432d-8eea-8876ea462451|3';
        }
        else{ var url = '/vac/orderroom/' + b + '|||' + d + '|fb70120c-cf5a-432d-8eea-8876ea462451|3';
        }
        if (a == 0) {
            var num = 2, time = 0;
            if (2 == 1 && cardBalance>0) {
                num = 1;
                time = 2000;
                errShow("体验卡不能享受正式会员的优惠价！")
            } else if (2 == 3 || cardBalance==0) {
                errShow("请先购卡，再享受优惠价！");
                var $that = $(_this).prev();
                setTimeout(function () {
                    $that.click()
                }, 2000);
                return;
            }
            setTimeout(function () {
                location.href = url;
            }, time)
        } else if(a==1) {
            if (2==3 || cardBalance==0) {
                errShow('请先购卡，再享受优惠价！');
                var $that = $(_this).prev();
                setTimeout(function () { $that.click() }, 2000);
                return;
            }
            location.href = url;
        } else {
            location.href= url;
        }
    }
    window.onscroll = function () {
        var sortTarget = $('.sort');
        var vrdaElement = $('.opacity');
        if (sortTarget.length != 0) {
            if (vrdaElement.length != 0 && vrdaElement.css('display') =='block') {
                return;
            }
            if (sortTargetTop == -1) {
                sortTargetTop = sortTarget[0].offsetTop;
            }
            var scrollHeight = $(document).scrollTop();
            if (scrollHeight >= sortTargetTop) {
                sortTarget.css({'position':'fixed'});
            } else {
                sortTarget.css({ 'position': 'relative' });
            }
        }
    };
</script>
<script>
    wx.config({
        debug: false,
        appId: 'wxc48ce8f1ba427c51',
        timestamp: '1515405449',
        nonceStr: 'Sq04jnUsAjodfuDauEweJBn85B6uxodG',
        signature: '0f80774e103cb0881ed234274cebabdb12f86652',
        jsApiList: ['checkJsApi','onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ','onMenuShareWeibo','hideMenuItems','showMenuItems','hideAllNonBaseMenuItem','showAllNonBaseMenuItem','translateVoice','startRecord','stopRecord','onRecordEnd','playVoice','pauseVoice','stopVoice','uploadVoice','downloadVoice','chooseImage','previewImage','uploadImage','downloadImage','getNetworkType','openLocation','getLocation','hideOptionMenu','showOptionMenu','closeWindow','scanQRCode','chooseWXPay','openProductSpecificView','addCard','chooseCard','openCard']
    });
    wx.ready(function () {
        wx.checkJsApi({jsApiList: ['onMenuShareAppMessage','onMenuShareTimeline','previewImage'],success: function (res) {}});
        // 分享给朋友
        wx.onMenuShareAppMessage({
            title: '马达推荐富氧富硒海南富力红树湾',
           
            desc: '海南澄迈富力红树湾，健康养生圣地，一起释放压力/调理身心。',
            link: 'https://m.5u588.com/Vac/Rooms/a0_c458_r0_s0_p0_j0?userid=fb70120c-cf5a-432d-8eea-8876ea462451&name=%e9%a9%ac%e8%be%be&phone=17602183362' + '',
            imgUrl: 'https://m.5u588.com/Content/images/hsw20.jpg',
            trigger: function (res) {},
            success: function (res) {},
            cancel: function (res) {},
            fail: function (res) {}
        });
        // 分享到朋友圈
        wx.onMenuShareTimeline({
            title: '马达推荐富氧富硒海南富力红树湾',
            desc: '海南澄迈富力红树湾，健康养生圣地，一起释放压力/调理身心。',
            link: 'https://m.5u588.com/Vac/Rooms/a0_c458_r0_s0_p0_j0?userid=fb70120c-cf5a-432d-8eea-8876ea462451' + '',
            imgUrl: 'https://m.5u588.com/Content/images/hsw20.jpg',
            trigger: function (res) {},
            success: function (res) {},
            cancel: function (res) {},
            fail: function (res) {}
        });
        // 分享到QQ
        wx.onMenuShareQQ({
            title: '马达推荐富氧富硒海南富力红树湾',
            desc: '海南澄迈富力红树湾，健康养生圣地，一起释放压力/调理身心。',
            //title: '挑一套您喜欢的公寓去旅居吧！',
            //desc: '买卡可一卡旅居全球！\n马达(17602183362)推荐',
            link: 'https://m.5u588.com/Vac/Rooms/a0_c458_r0_s0_p0_j0?userid=fb70120c-cf5a-432d-8eea-8876ea462451' + '',
            imgUrl: 'https://m.5u588.com/Content/images/hsw20.jpg',
            trigger: function (res) {},
            complete: function (res) {},
            success: function (res) {},
            cancel: function (res) {},
            fail: function (res) {}
        });
    });
    wx.error(function (res) { });
</script>
<header class="header yapiskan">
    <nav>
        <div class="title">旅居之家</div>
        <a class="back left" href="javascript:history.back();"></a>
    </nav>
    <a href="https://m.5u588.com/search/r2" class="search vrsr iconfont"></a>
        <a href="ljcf://share?key=3" class="new-a-share2"><span>分享</span></a>
</header>
<section>
    <div style="margin-top:45px;display:block"></div>
                <div id="vrsq" style="position:relative">
                    <img src="<?=UrlService::buildPicUrl("jidi",'bannerhsw.jpg' );?>">
                    <div class="vrif" style="top:7%">
                        <p style="color:#496802">海南•澄迈</p>
                        <p style="color:#496802"><strong>海南富力红树湾</strong></p><p style="color:#496802">世界长寿之乡-8000亩长寿养生度假区</p>
                        <p class="into"><a href="#">&lt;&lt; 社区度假指南 &gt;&gt;</a></p>
                      
                    </div>
                    <div class="moreJC">
                        <span style="width:180px"><b>房源列表</b></span>
                        <img src="<?=UrlService::buildPicUrl("jidi",'RoomsPrice.png' );?>" style="width:100%">
                       
                    </div>
                </div>
                <div class="sort selectcon" style="position: fixed; margin-top: 0px; padding-top: 5px; top: 0px; box-sizing: unset;">
                    <!--区域特色-->
                    <ul>
                        <li class="vrfo">
                            <p> <span id="city">海南澄迈</span><i></i></p>
                            <div class="arw"></div>
                        </li>
                        <li class="vrfo">
                            <p> <span id="houseroom">按户型选</span><i></i></p>
                            <div class="arw"></div>
                        </li>
                        <li class="vrfo">
                            <div>
                                <p>
                                    <span id="date1"></span>
                                    <span id="date0">按日期选 <i></i></span>
                                </p>
                                <div class="arw"></div>
                            </div>
                            <script type="text/javascript">
                                $(function () {
                                    if (bagStartDate != "") {
                                        $("#date1").html(bagStartDate + "至" + bagEndDate);
                                        $("#date0").html("住" + bagStartDate.split('-')[1] + "." + bagStartDate.split('-')[2] + "-离" + bagEndDate.split('-')[1] + "." + bagEndDate.split('-')[2] + " <i></i>");
                                    }
                                });
                            </script>
                        </li>
                    </ul>
                    <!--3个tab开始-->
                    <div class="vrsf vrsd" style="z-index:6">
                        <div class="vrtp"><p>地区</p></div>
                        <div class="vrsc fixed">
                            <ul id="ulCity">
                                <li class="" data-city="0"><span>不限</span></li>
                                <li data-city="460"><span>山东海阳避暑踏浪</span></li>
                                <li data-city="458" class="active"><span>海南澄迈长寿养生</span></li>
                                <li data-city="122"><span>福建三明温泉度假</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrsc fixed" style="display: none;">
                            <h1>类型</h1>
                            <ul id="ulStar">
                                <li class="active" data-value="-1"><span>不限</span></li>
                                <li data-value="1"><span>滨海度假</span></li>
                                <li data-value="3"><span>温泉度假</span></li>
                                <li data-value="4"><span>山水度假</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrsc fixed" style="display: none;">
                            <h1>社区特色</h1>
                            <ul id="ulSpec">
                                <li class="active" data-keyword="0"><span>不限</span></li>
                                <li data-keyword="海景"><span>海景房</span></li>
                                <li data-keyword="大床"><span>大床房</span></li>
                                <li data-keyword="双床"><span>双床房</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrsc fixed" style="display:none">
                            <h1>社区细分</h1>
                            <ul id="ulSpec1">
                                <li class="active" data-keyword="0"><span>不限</span></li>
                                <li><span><a href="https://m.5u588.com/search/r2/?q=%E8%A7%82%E9%B9%AD%E8%8B%91">观鹭苑</a></span></li>
                                <li><span><a href="https://m.5u588.com/search/r2/?q=%E7%A2%A7%E4%BA%91%E8%BD%A9">碧云轩</a></span></li>
                                <li><span><a href="https://m.5u588.com/search/r2/?q=%E6%8F%BD%E7%BF%A0%E4%BA%AD">揽翠亭</a></span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrbt"><button class="sure">确定</button></div>
                    </div>
                    <div class="vrss vrsd" style="z-index:6">
                        <div class="vrtp"><p>户型</p></div>
                        <div class="vrsc fixed">
                            <ul id="ulRooms">
                                <li class="active" data-houseroom="0"><span>不限</span></li>
                                <li data-houseroom="1"><span>一室</span></li>
                                <li data-houseroom="2"><span>两室</span></li>
                                <li data-houseroom="3"><span>三室及以上</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrsc fixed" style="display:none">
                            <h1>面积</h1>
                            <ul id="ulArea">
                                <li class="active" data-housearea="0"><span>不限</span></li>
                                <li data-housearea="0-50"><span>50平米以下</span></li>
                                <li data-housearea="50-80"><span>50-80平米</span></li>
                                <li data-housearea="80-120"><span>80-120平米</span></li>
                                <li data-housearea="120-1000"><span>120平米以上</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrsc fixed" style="display:none">
                            <h1>日价</h1>
                            <ul id="ulJiage1">
                                <li class="active" data-price="0"><span>不限</span></li>
                                <li data-price="0-300"><span>300以下</span></li>
                                <li data-price="300-600"><span>300-600</span></li>
                                <li data-price="600-900"><span>600-900</span></li>
                                <li data-price="900-100000"><span>900以上</span></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="vrbt"><button class="sure">确定</button></div>
                    </div>
                    <div class="vrss vrsd"></div>
                    <!--3个结束-->
                    <!--房源end-->
                          <div class="vrss-block">
                            <a href="https://m.5u588.com/vac/rooms/a0_c458_r0_s0_p0_j0_b1#rooms" class="">观鹭苑</a>
                            <a href="https://m.5u588.com/vac/rooms/a0_c458_r0_s0_p0_j0_b2#rooms" class="">碧云轩</a>
                            <a href="https://m.5u588.com/vac/rooms/a0_c458_r0_s0_p0_j0_b3#rooms" class="">揽翠亭</a>
                        </div>
                </div>
            <div class="am-container" id="rooms">
                 <a href="https://m.5u588.com/vac/roomshow?num=3&amp;houseid=1410&amp;labelid=154&amp;sdate=&amp;edate=&amp;tel=&amp;vid=&amp;cid=6566&amp;pid=28&amp;userid=fb70120c-cf5a-432d-8eea-8876ea462451">
                    <div class=" am-u-sm-4 am-thumbnail pro_imgbox">
                            <img src="<?=UrlService::buildPicUrl("jidi",'20160407141153906.jpg' );?>" style="height:100px">
                    </div>
                    <div class=" am-u-sm-8 am-thumbnail-caption pro_conbox">
                           <h4>海南富力红树湾 观鹭苑5号楼6A01室</h4>
                           <p>2室1厅 64平米 床:1.5m+1.8m</p>
                           <p><span><i>￥248</i>元/晚起</span>
                             <i class="am-badge am-badge-warning  am-radius" style="padding:5px 10px;margin-top:10px">详情</i>
                               </p>
                           
                     </div>
                 </a>
            </div>  
         <hr> 
            <div class="am-container" id="rooms">
                 <a href="https://m.5u588.com/vac/roomshow?num=3&amp;houseid=1415&amp;labelid=151&amp;sdate=&amp;edate=&amp;tel=&amp;vid=&amp;cid=6566&amp;pid=28&amp;userid=fb70120c-cf5a-432d-8eea-8876ea462451">
                    <div class=" am-u-sm-4 am-thumbnail pro_imgbox">
                            <img src="<?=UrlService::buildPicUrl("jidi",'20160223111117729.jpg' );?>" style="height:100px">
                    </div>
                    <div class=" am-u-sm-8 am-thumbnail-caption pro_conbox">
                           <h4>海南富力红树湾 观鹭苑5号楼13A02室</h4>
                           <p>2室1厅 63平米 床:1.8m+1.8m</p>
                           <p><span><i>￥248</i>元/晚起</span>
                             <i class="am-badge am-badge-warning  am-radius" style="padding:5px 10px;margin-top:10px">详情</i>
                               </p>
                           
                     </div>
                 </a>
            </div>
</section>
<div style="height:90px;"><div class="clear0">------我是有底线的------</div></div>
<input type="hidden" id="CurrentUserID" value="fb70120c-cf5a-432d-8eea-8876ea462451">
<input type="hidden" id="isbuycard" value="0">

    <script>
        (function () {
            var sortjs = $('.sort'), vrfo = sortjs.find('.vrfo'), opacity, vrbt = $('.vrbt');
            var sortJsTop = sortjs[0].offsetTop;
            vrfo.click(function () {
                var $index = $(this).index();
                if ($index < vrfo.length) {
                    if ($index == 3) { return; }
                    if (opacity == void 0) {
                        opacity = $('<div class="opacity"></div>');
                        opacity.click(function () {
                            opacity.hide();
                            sortjs.find('.vrsd,.arw').hide();
                            var scrollHeight = $(document).scrollTop();
                            if (scrollHeight >= sortJsTop) {
                                sortjs.css({ 'position': 'fixed' });
                            } else {
                                sortjs.css({ 'position': 'relative' });
                            }
                        });
                        $('body').append(opacity);
                    }
                    if ($(this).find('.arw').css('display') == 'none') {
                        vrfo.find('.arw').hide();
                        sortjs.find('.vrsd').hide().eq($index).show();
                        $(this).find('.arw').show();
                        opacity.show();
                        sortjs.css({ 'position': 'fixed' });
                    } else {
                        $(this).removeClass('active');
                        sortjs.find('.vrsd,.arw').hide();
                        opacity.hide();
                        var scrollHeight = $(document).scrollTop();
                        if (scrollHeight >= sortJsTop) {
                            sortjs.css({ 'position': 'fixed' });
                        } else {
                            sortjs.css({ 'position': 'relative' });
                        }
                    }
                } else {
                    if ($(this).attr("id") == "check") {
                        $(this).removeAttr("id");
                        $(this).removeClass('active');
                        if (setUseCoupon != "undefined") {
                            setUseCoupon(false);
                        }
                    } else {
                        $(this).attr("id", "check");
                        if (setUseCoupon != "undefined") {
                            setUseCoupon(true);
                        }
                    }
                }
            });
            vrbt.click(function () {
                if (opacity != void 0) {
                    opacity.hide();
                }
                vrfo.find('.vrsd,.arw').hide();
            });
            $(".vrsc li").click(function (event) {
                index = $(this).index();
                $(this).parents(".vrsc").find("li").removeClass('active');
                $(this).addClass('active');
            });
            $(".vrsd li").click(function (index) {
                var houseroom = $("#ulRooms li[class='active']").data('houseroom');     //户型
                var area = $("#ulArea li[class='active']").data('housearea');           //面积
                var city = city = $("#ulCity li[class='active']").data('city');         //区域
                var spec = $("#ulSpec li[class='active']").data('keyword');             //特色
                var price = $("#ulPrice li[class='sure active']").data('price');        //价格
                var jiage = $("#ulJiage1 li[class='active']").data('price');            //价格区间 暂改为日价
                if ($(this).parent().attr('id') == 'ulCity') {
                    houseroom = '0';
                }
                window.location.href = "/vac/rooms/a" + area + "_c" + city + "_r" + houseroom + "_s" + spec + "_p" + (price == undefined ? "0" : price) + "_j" + jiage + '' + '';
            });
        })();
        $(document).ready(function () {
            $('.new-a-share2').on('click', function () {
                if ($('#CurrentUserID').val() == '') {
                    errShow('请先登录');
                    setTimeout(function () {
                        window.location.href = "/account/login?returnUrl=" + encodeURIComponent(window.location.href);
                    }, 2000);;
                }
            });
        });
    </script>

    <style>
     .black_overlay {
            display: none;
            position: fixed;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=80);
        }

</style>
<script>
    //弹出隐藏层
    function ShowDiv(show_div, bg_div, area) {
        document.getElementById(show_div).style.display = 'block';
        document.getElementById(bg_div).style.display = 'block';
        var bgdiv = document.getElementById(bg_div);
        //bgdiv.style.width = document.body.scrollWidth;
        // bgdiv.style.height = $(document).height();
        $("#" + bg_div).height($(document).height());
        if (area == 28) {
            document.getElementById("danwangji").innerHTML = "<b>淡季下浮约30%：</b>每年5月1日-6月30日；<br /><b>旺季上涨约50%：</b>每年的农历腊月28-正月初六。";
        }
        else {
            document.getElementById("danwangji").innerHTML = "<b>淡季下浮约30%：</b>每年11月1日-次年3月31日；<br /><b>旺季上涨约50%：</b>每年7月1日-8月30日";
        }
    };
    //关闭弹出层
    function CloseDiv(show_div, bg_div) {
        document.getElementById(show_div).style.display = 'none';
        document.getElementById(bg_div).style.display = 'none';
    };
    </script>
	<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
    });
</script>
<div id="fade" class="black_overlay" onclick="CloseDiv(&#39;MyDiv&#39;,&#39;fade&#39;)"></div>
<div id="MyDiv" class="content" onclick="CloseDiv(&#39;MyDiv&#39;,&#39;fade&#39;)" style="display: none;position: absolute;top: 5%;z-index: 1002;overflow: auto; position:fixed;">
    <img src="./旅居之家售卡预订房源_files/share_mask_12.png" width="100%">
</div>

<div id="fade2" class="black_overlay" onclick="CloseDiv(&#39;MyDiv2&#39;,&#39;fade2&#39;)"></div>
<div id="MyDiv2" class="content" onclick="CloseDiv(&#39;MyDiv2&#39;,&#39;fade2&#39;)" style="display: none;position: absolute;top: 5%;z-index: 1002;overflow: auto; position:fixed;">
    <img src="./旅居之家售卡预订房源_files/share_mask_12.png" width="100%">
   

</div>
  
<div style="display:none">  
    <script src="./旅居之家售卡预订房源_files/z_stat.php" language="JavaScript"></script><script src="./旅居之家售卡预订房源_files/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1255662767" target="_blank" title="站长统计">站长统计</a>
</div>