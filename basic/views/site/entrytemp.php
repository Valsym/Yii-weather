<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'from')->label('От - дата в формате Y-m (год - номер месяца)') ?>

	<?= $form->field($model, 'to')->label('До - дата в формате Y-m (год - номер месяца)') ?>

    <div class="form-group">
        <?= Html::submitButton('Отправить', ['class' => 'btn btn-primary']) ?>
    </div>

<?php ActiveForm::end(); ?>