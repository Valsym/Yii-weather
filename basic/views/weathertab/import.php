<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\base\Widget;
use yii\bootstrap\DatePicker;
?>

<h2 id="import">Импорт прайс-листа</h2>

<div class="form">
<?php $form = ActiveForm::begin(['options' => ['id'=>'import_csv',
 'htmlOptions'=>array('enctype'=>'multipart/form-data'),
 'focus'=>array($weathertab,'weathertab_file')]]) ?>
    
<?= $form->field($weathertab, 'weathertab_file'); ?>

    
<div class="form-group">
<?= Html::submitButton('Отправить', ['class' => 'btn btn-primary']) ?>
</div>

<?php ActiveForm::end() ?>
</div>


