<?php

namespace app\models\member;

use Yii;

/**
 * This is the model class for table "member_detail".
 *
 * @property integer $id
 * @property integer $uid
 * @property string $name
 * @property integer $sex
 * @property integer $height
 * @property string $origin
 * @property integer $age
 * @property string $record
 * @property string $cred_type
 * @property string $cred_id
 * @property string $hobby
 * @property string $urgent_name
 * @property string $urgent_tel
 * @property string $health
 * @property string $bankcard
 * @property integer $live_alone
 * @property string $sensitive_source
 * @property string $religion
 * @property string $account
 * @property integer $points
 */
class Member_detail extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'member_detail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'uid', 'name', 'sex', 'height', 'origin', 'age', 'record', 'cred_type', 'cred_id', 'hobby', 'urgent_name', 'urgent_tel', 'health', 'bankcard', 'live_alone', 'sensitive_source', 'religion', 'account', 'points'], 'required'],
            [['id', 'uid', 'sex', 'height', 'age', 'live_alone', 'points'], 'integer'],
            [['account'], 'number'],
            [['name', 'origin'], 'string', 'max' => 255],
            [['record', 'cred_type', 'cred_id', 'hobby', 'urgent_name', 'sensitive_source', 'religion'], 'string', 'max' => 60],
            [['urgent_tel'], 'string', 'max' => 13],
            [['health', 'bankcard'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'uid' => 'Uid',
            'name' => 'Name',
            'sex' => 'Sex',
            'height' => 'Height',
            'origin' => 'Origin',
            'age' => 'Age',
            'record' => 'Record',
            'cred_type' => 'Cred Type',
            'cred_id' => 'Cred ID',
            'hobby' => 'Hobby',
            'urgent_name' => 'Urgent Name',
            'urgent_tel' => 'Urgent Tel',
            'health' => 'Health',
            'bankcard' => 'Bankcard',
            'live_alone' => 'Live Alone',
            'sensitive_source' => 'Sensitive Source',
            'religion' => 'Religion',
            'account' => 'Account',
            'points' => 'Points',
        ];
    }
}
