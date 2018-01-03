<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/3 0003
 * Time: 上午 11:45
 */
namespace app\modules\m\controllers;

use app\common\services\ConstantMapService;
use app\common\services\DataHelper;
use app\common\services\QueueListService;
use app\common\services\UrlService;
use app\common\services\UtilService;
use app\models\book\Book;
use app\modules\m\controllers\common\BaseController;
use app\common\services\AreaService;


class BriefController extends BaseController {

    public function actionIndex(){
        return $this->render('index');
    }
}
