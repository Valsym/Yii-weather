<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\models\Setting;
use app\models\EntryFormTemp;
use app\models\Weather;

class WeatherController extends Controller
{
    public function actionIndex()
    {
        //$this->from = mktime(0, 0, 0, 4, 1, 2017);
        //$this->to = mktime(0, 0, 0, 6, 3, 2017);
        $model = new EntryFormTemp();
        $query = Weather::find();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            // данные в $model удачно проверены
            $from = $model->from;
            $to = $model->to;
            //$model->save(false);
            //$this->redirect(['view/weather/index', 'from' => $from, 'to' => $to]);
            $this->findmaxweeks($from, $to);
            $this->findmaxmonths($from, $to);

            
            $weather = $query
                ->where(['between', 'date', $from, $to])
                ->all();
            

            return $this->render('index', [
                'weather' => $weather,
            ]);
            //return $this->render('entrytemp-confirm', ['model' => $model]);
        } else {
            // либо страница отображается первый раз, либо есть ошибка в данных
            return $this->render('entrytemp', ['model' => $model]);
        }
   
    }
    
    public function findmaxweeks($from, $to)
    {
        $query = Weather::find();
        
        $startline = Weather::find()->select('nweek')->where(['date' => $from])->one();
        $endline = Weather::find()->where(['date' => $to])->one();
        $i = $startline->nweek;

        $log = " i=".$i." from=".$from. " to=".$to;
        $this->_log($log, true);
            
        $endweek = $endline->nweek;
        $currentweek = strftime("%W", time());

        $log .= "   endweek=".$endweek.
        "\n currentweek=".$currentweek.
        "\n i=".$i;
        
        while ($i <= $endweek) {
            $iweekdata = Weather::find()->where(['nweek' => $i])->andWhere(['>=', 'date', $from])->all();
            $max = 0;
            foreach ($iweekdata as $item){
                if (strtotime($item->date) > time()) {
                    continue;
                }
                $delta = $item->tday - $item->tnight;
                $oldmax = $max;
                $max = $max <  $delta ?  $delta : $max;
                $id = $item->id;
                if ($oldmax < $max) {
                    $maxidate = $item->date;
                }
                if ($i == $currentweek) {
                    $item->delmaxweek = false;
                    $item->save();
                }
                $log .= "\n max=".$max." delta=".$delta." i=".$i." id=".$id." maxidate=".$maxidate;
                
            }
            
            if ($max > 0) {
                $line = Weather::find()->where(['date' => $maxidate])->one();
                //$query->select('nweek')->where(['date' => $idate])->one();//
                //$line = Weather::findOne($idate);
                
                $line->delmaxweek = true;
                $line->save();
            }
            $i++;
        }
        //$this->_log($log, true);
    }
    
    public function findmaxmonths($from, $to)
    {
        $query = Weather::find();
        
        $firstmonth = strftime("%m", strtotime($from));
        $lastmonth = strftime("%m", strtotime($to));
        $i = $firstmonth;
        $currentmonth = strftime("%m", time());
        $log = "currentmonth=".$currentmonth.
        "\n firstmonth=".$firstmonth.
        "\n lastmonth=".$lastmonth;
        $this->_log($log, true);
        while ($i <= $lastmonth) {
            $imonthdata = Weather::find()->where(['month' => $i])->andWhere(['>=', 'date', $from])->all();
            $max = 0;
            $maxidate = 0;
            foreach ($imonthdata as $item){
                if (strtotime($item->date) > time()) {
                    continue;
                }
                $delta = $item->tday - $item->tnight;
                $oldmax = $max;
                $max = $max <  $delta ?  $delta : $max;
                if ($oldmax < $max) {
                    $maxidate = $item->date;
                }
                
                if ($i == $currentmonth) {
                    $item->delmaxmonth = false;
                    $item->save();
                }
            }
            if ($max && $maxidate) {
                $line = Weather::find()->where(['date' => $maxidate])->one();
                $line->delmaxmonth = true;
                $line->save();
            }
            $i++;
        }
        
    }
    
    public function _log($var, $clear=FALSE, $path=NULL)
    {
        if ($var) {
            $date = '====== '.date('Y-m-d H:i:s')." =====\n";
            $result = $var;
            if (is_array($var) || is_object($var)) {
                $result = print_r($var, 1);
            }
            $result .="\n";
            if(!$path)
                $path = dirname($_SERVER['SCRIPT_FILENAME']) . '/mylog.txt';
            if($clear)
                file_put_contents($path, '');
            @error_log($date.$result, 3, $path);
            return true;
        }
        return false;
    }


}