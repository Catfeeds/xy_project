<?php

return [
	'title' => '翔游旅居微信应用',
	'domain' => [
		'www' => 'http://madai8888.tunnel.echomod.cn',
		'm' => 'http://madai8888.tunnel.echomod.cn/m',
		'web' => 'http://madai8888.tunnel.echomod.cn/web'
	],
	'upload' => [
		'avatar' => '/uploads/avatar',
		'brand' => '/uploads/brand',
		'book' => '/uploads/book',
	],
	'weixin' => [
		'appid' => 'wx21e9e86a4cf3fa9c',
		'sk' => '1df20e24bdf4edc6a603457fd49c8535',
		'token' => 'xiangyouLvJu',
		'aeskey' => '根据实际情况填写',
		'pay' => [
			'key' => '根据实际情况填写',
			'mch_id' => '根据实际情况填写',
			'notify_url' => [
				'm' => '/pay/callback'
			]
		]
	]
];
