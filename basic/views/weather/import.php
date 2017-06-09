<h2 id="import_price">Импорт прайс-листа</h2>
 
<div class="form"><?php $form1=$this->beginWidget('CActiveForm', array(
 'id'=>'import_csv',
 'htmlOptions'=>array('enctype'=>'multipart/form-data'),
 'focus'=>array($price,'weather_file'),
 )); ?>
 <?php echo CHtml::errorSummary($price); ?>
 <?php echo CHtml::activeFileField($price, 'price_file'); ?>
 
 <?php echo CHtml::submitButton('Импорт'); ?>
<?php $this->endWidget(); ?></div>