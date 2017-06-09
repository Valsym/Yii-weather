<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Weather</h1>

<table class="table table-hover table-bordered">
<?php 
$month = '';
$week = '';
$dayweek = '';    
foreach ($weather as $item) {
    $date = strtotime($item->date);
//    Yii::$app->formatter->locale = 'ru-RU';
//echo Yii::$app->formatter->asDate('2014-01-01'); // выведет: 1 января 2014 г.

    if ($item->month != $month) {
        $month = $item->month;
        $week = '';
        echo '<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>'
        .'<tr bgcolor="#9FC5E8"><td bgcolor="#FFFFFF"></td><td></td><td>'.strftime("%B %Y", $date).'</td><td></td><td></td><td></td><td></td><td></td></tr>'
        .'<tr bgcolor="#B6D7A8"><td bgcolor="#9FC5E8">неделя</td><td>пн</td><td>вт</td><td>ср</td><td>чт</td><td>пт</td><td>сб</td><td>вс</td></tr>';
    }
    
    $dplus = $item->tday > 0 ? '+': '';
    $nplus = $item->tnight > 0 ? '+': '';
    $bgweek = $item->delmaxweek ? "#FFD966" : "#FFFFFF";
    $bgweek = $item->delmaxmonth ? "#E06666" : $bgweek;
    if ($item->nweek != $week) {
        $week = $item->nweek;

        echo '<tr><td bgcolor="#FCE5CD">'.$week.'</td>';
        for ($i = 1; $i < 8; $i++) {
            if ($i == $item->dweek) {
                echo '<td bgcolor="'.$bgweek.'">'.strftime("%d %B", $date)."<br/>(".$nplus.$item->tnight."/<br/>".$dplus.$item->tday.")</td>";
                break;
            } else {
                echo '<td></td>';
            }
            if ($i == 7) {
                echo '</tr>';
            }
        }
    } else {
            echo '<td bgcolor="'.$bgweek.'">'.strftime("%d %B", $date)."<br/>(".$nplus.$item->tnight."/<br/>".$dplus.$item->tday.")</td>";
            if (strftime("%u", $date) == 7) {
                    echo '</tr>';
            }
    }
}
?>

</table>
<!--<?php //LinkPager::widget(['pagination' => $pagination]) ?>-->
<?php 
//function strftime_fix($format, $locale, $timestamp = time()){
//    // Fix %e for windows
//    if (strtoupper(substr(PHP_OS, 0, 3)) == 'WIN') {
//        $format = preg_replace('#(?<!%)((?:%%)*)%e#', '\1%#d', $format);
//    }
//    // convert
//    $date_str = strftime($format, $timestamp);
//    if (stripos($locale, "1251") !== false) {
//      return iconv("windows-1251","utf-8", $date_str);
//    } elseif (stripos($locale, "1252") !== false) {
//      return iconv("windows-1252","utf-8", $date_str);
//    } else {
//      return $date_str;
//    }
//}
?>