<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/8 0008
 * Time: 上午 10:20
 */
namespace app\modules\m\controllers;
use app\modules\m\controllers\common\BaseController;

class PlanController extends BaseController {
    public function actionIndex(){
        return $this->render('index');
    }
}