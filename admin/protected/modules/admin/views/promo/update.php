<?php
$this->breadcrumbs=array(
	'Promo'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-suitcase',
	'title'=>'Promo',
	'subtitle'=>'Edit Promo',
);

$this->menu=array(
	array('label'=>'List Promo', 'icon'=>'th-list', 'url'=>array('index')),
	// array('label'=>'Add Promo', 'icon'=>'plus-sign', 'url'=>array('create')),
	// array('label'=>'View Promo', 'icon'=>'eye-open', 'url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>