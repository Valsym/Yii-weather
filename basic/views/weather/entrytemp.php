<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;


$this->title = 'Среднесуточные температуры';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Введите диапазон дат для расчета среднесуточных температур по дням:</p>
    
<?php $form = ActiveForm::begin([
        'id' => 'date-form',
    ]); ?>

    <?= $form->field($model, 'from')->label('От - дата в формате Y-m-d (год-месяц-день)') ?>

	<?= $form->field($model, 'to')->label('До - дата в формате Y-m-d (год - номер месяца - день месяца)') ?>

    <div class="form-group">
        <?= Html::submitButton('Отправить', ['class' => 'btn btn-primary']) ?>
    </div>

<?php ActiveForm::end(); ?>
</div>