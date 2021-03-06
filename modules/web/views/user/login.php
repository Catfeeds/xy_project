<?php
use \app\common\services\UrlService;
?>
<div class="loginColumns animated fadeInDown">
	<div class="row">

		<div class="col-md-6 text-center">
			<h2 class="font-bold">翔游旅居微信管理后台</h2>
			<p>
				<img src="<?=UrlService::buildWwwUrl("/images/common/qrcode.jpg");?>" width="300px"/>
			</p>
            <p class="text-danger">
                扫码关注立即开始旅居生活
            </p>
		</div>
		<div class="col-md-6">
			<div class="ibox-content">
				<form class="m-t" role="form" action="<?=UrlService::buildWebUrl("/user/login");?>" method="post">
                    <div class="form-group text-center">
                        <h2 class="font-bold">登录</h2>
                    </div>
					<div class="form-group">
						<input type="text" name="login_name" class="form-control" placeholder="请输入登录用户名">
					</div>
					<div class="form-group">
						<input type="password" name="login_pwd" class="form-control" placeholder="请输入登录密码">
					</div>
					<button type="submit" class="btn btn-primary block full-width m-b">登录</button>
                    <h3>扫描左侧二维码关注"<span class="text-danger">翔游旅居</span>"微信服务号 请使用"<span class="text-danger">管理员账号</span>"登录</h3>
				</form>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-6">
            翔游旅居管理系统 <a href="http://www.mada415.cn/" target="_blank"> 技术支持 </a>
		</div>
		<div class="col-md-6 text-right">
			<small>© <?=date("Y");?></small>
		</div>
	</div>
</div>