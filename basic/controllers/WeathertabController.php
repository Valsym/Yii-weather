<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\models\Setting;
use app\models\Weathertab;

class WeathertabController extends Controller
{
    public function actionImport()
    {
     //присваиваем id текущего пользователся
     $usr_id=Yii::$app->user->id;
     //создаем экземпляр класса Weathertab со сценарием import_csv
     $weathertab= new Weathertab();//'import_csv');

      if(/*$weathertab->validate() &&*/ $weathertab->import_weather('',$usr_id/*$file,$usr_id*/)) {
          $this->redirect(Yii::$app->homeUrl);
      }  
        
        
        
     //проверка была ли кнопка Импорт нажата
//     if(isset($_POST['weather_file']))
//     {
//       //если кнопка нажата и файл выбран
//       if ($file = CUploadedFile::getInstance($weathertab,'weathertab'))
//       {
//         //проводим валидацию полученного файла, если все ОК, то переходим на главную страницу
//         $weathertab->weather_file=$file;
//         if(/*$weathertab->validate() &&*/ $weathertab->import_weather($file,$usr_id))
//         {
//          $this->redirect(Yii::app()->homeUrl);
//         }
//       }
//     }
     $this->render('import',['weathertab'=>$weathertab]);
    }
}