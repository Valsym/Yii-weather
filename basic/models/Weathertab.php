<?php

namespace app\models;

use yii\db\ActiveRecord;
use Yii;

/**
 * This is the model class for table "weathertab".
 *
 * @property integer $id
 * @property string $date
 * @property integer $month
 * @property integer $nweek
 * @property integer $dweek
 * @property integer $tday
 * @property integer $tnight
 * @property integer $delmaxweek
 * @property integer $delmaxmonth
 */
class Weathertab extends ActiveRecord
{
    
    //путь для временного хранения данных о погоде
    private $myPath = 'tmp';

    public function import_weather($file,$usr_id){

//     //назовем файл по id организации
//     $file->saveAs($this->myPath.'/'.$usr_id);
//     $patch = $this->myPath.'/'.$usr_id;

     //создаем sql запрос с необходимыми параметрами
     //$sql = "LOAD DATA LOCAL INFILE '".$patch."'
     $sql = "LOAD DATA INFILE 'f:/tmp/weather.csv'
     INTO TABLE weathertab
     FIELDS TERMINATED BY ','
     LINES TERMINATED BY '\n'
     IGNORE 1 LINES";
//    (id,date,month,nweek,dweek,day,nightdelmaxweek,delmaxmonth)
//     SET date_create = CURRENT_TIMESTAMP, id_user=".$usr_id;

     $connection=Yii::$app->db;//Yii::app()->db;
     if ($connection->createCommand($sql)->execute()) {
         $rez=true; 
     } else $rez=false;

     //удаляем файл после загрузки его в базу
     //unlink($patch);
     return $rez;

     }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'weathertab';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return true;
        return [
          'weather_file', 
          'file', 
          'allowEmpty' => false, 
          'types' => 'csv',
          'on'=>'import_csv',
          'wrongType'=>'Только расширение csv'];
    }


    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'month' => 'Month',
            'nweek' => 'Nweek',
            'dweek' => 'Dweek',
            'tday' => 'Tday',
            'tnight' => 'Tnight',
            'delmaxweek' => 'Delmaxweek',
            'delmaxmonth' => 'Delmaxmonth',
        ];
    }
}
