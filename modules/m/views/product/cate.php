<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/21 0021
 * Time: 下午 1:25
 */
use \app\common\services\UrlService;
use \app\common\services\StaticService;
use \app\common\services\UtilService;
StaticService::includeAppCssStatic( "/css/m/product/cate.css",\app\assets\MAsset::className() );
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>分类</title>
	</head>
	<body>
		<!--开始-->
		<div class="box">
			<ul>
				<li>
					<a href="#" class="iconfont icon-juzhudi" style="color: blueviolet;"><p>旅居基地</p></a>
				</li>
				<li>
					<a href="#" class="iconfont icon-shangcheng" style="color: orange;"><p>翔游商城</p></a>
				</li>
				<li>
					<a href="#" class="iconfont icon-xunibi" style="color: #FEB900;"><p>虚拟价值商城</p></a>
				</li>
				<li>
					<a href="#" class="iconfont icon-yiliaojiankang" style="color: #F47050;"><p>健康医疗</p></a>
				</li>
			</ul>
		</div>
		<!--预定开始-->
		<div class="reserve">
			<img src="<?=UrlService::buildPicUrl("jidi",'bg.jpg' );?>"/>
			<div class="hainan">
				<h4>碧云轩8号楼1205室</h4>
				<h5>2室2厅 85平米 床：1.8m+1.5m</h5>
			</div>

			<div class="hainan1">
				<h4>11130元</h4>
				<h5>￥318/晚</h5>
				<div>
					<span>旅租卡，5年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan2">
				<h4>2520元</h4>
				<h5>￥360/晚</h5>
				<div>
					<span>体验卡，1年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan3">
				<h4>门市价</h4>
				<h5>￥458/晚</h5>
				<div>
					<span>原价入住</span>
					<ul>
						<a href="#">预订</a>
					</ul>
				</div>
			</div>
		</div>

		<div class="reserve">
			<img src="<?=UrlService::buildPicUrl("jidi",'bg.jpg' );?>"/>
			<div class="hainan">
				<h4>碧云轩8号楼1205室</h4>
				<h5>2室2厅 85平米 床：1.8m+1.5m</h5>
			</div>

			<div class="hainan1">
				<h4>11130元</h4>
				<h5>￥318/晚</h5>
				<div>
					<span>旅租卡，5年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan2">
				<h4>2520元</h4>
				<h5>￥360/晚</h5>
				<div>
					<span>体验卡，1年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan3">
				<h4>门市价</h4>
				<h5>￥458/晚</h5>
				<div>
					<span>原价入住</span>
					<ul>
						<a href="#">预订</a>
					</ul>
				</div>
			</div>
		</div>

		<div class="reserve">
			<img src="<?=UrlService::buildPicUrl("jidi",'bg.jpg' );?>"/>
			<div class="hainan">
				<h4>碧云轩8号楼1205室</h4>
				<h5>2室2厅 85平米 床：1.8m+1.5m</h5>
			</div>

			<div class="hainan1">
				<h4>11130元</h4>
				<h5>￥318/晚</h5>
				<div>
					<span>旅租卡，5年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan2">
				<h4>2520元</h4>
				<h5>￥360/晚</h5>
				<div>
					<span>体验卡，1年有效</span>
					<ul>
						<a href="classify/buy card/buy card.html">购卡</a>
						<a href="classify/buy card/buy card.html">会员预订</a>
					</ul>
				</div>
			</div>

			<div class="hainan3">
				<h4>门市价</h4>
				<h5>￥458/晚</h5>
				<div>
					<span>原价入住</span>
					<ul>
						<a href="#">预订</a>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
