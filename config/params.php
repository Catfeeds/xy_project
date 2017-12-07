<?php

return [
	'title' => '翔游旅居微信应用',
	'domain' => [
		'www' => 'http://www.mada415.cn',
		'm' => 'http://www.mada415.cn/m',
		'web' => 'http://www.mada415.cn/web'
	],
	'upload' => [
		'avatar' => '/uploads/avatar',
		'brand' => '/uploads/brand',
		'book' => '/uploads/book',
	],
	'weixin' => [
		'appid' => 'wx21e9e86a4cf3fa9c',
		'sk' => '根据实际情况填写',
		'token' => '根据实际情况填写',
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
