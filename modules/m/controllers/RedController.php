<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/4 0004
 * Time: 下午 2:18
 */
namespace app\modules\m\controllers;

use app\modules\m\controllers\common\BaseController;


class RedController extends BaseController {

    public function actionIndex(){
        return $this->render('index');
    }
}
