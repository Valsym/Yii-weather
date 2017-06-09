<?php
use yii\helpers\Html;
?>
<p>Вы ввели следующую информацию:</p>

<ul>
    <li><label>From</label>: <?= Html::encode($model->from) ?></li>
    <li><label>To</label>: <?= Html::encode($model->to) ?></li>
</ul>