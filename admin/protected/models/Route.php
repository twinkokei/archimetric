<?php

/**
 * This is the model class for table "route".
 *
 * The followings are the available columns in table 'route':
 * @property integer $id
 * @property integer $aktif
 * @property string $kapal_motor
 * @property string $grt
 * @property string $location
 */
class Route extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'route';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('aktif, kapal_motor, grt, location', 'required'),
			array('aktif', 'numerical', 'integerOnly'=>true),
			array('kapal_motor, grt, location', 'length', 'max'=>100),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, aktif, kapal_motor, grt, location', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'aktif' => 'Aktif',
			'kapal_motor' => 'Kapal Motor',
			'grt' => 'Grt',
			'location' => 'Location',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('aktif',$this->aktif);
		$criteria->compare('kapal_motor',$this->kapal_motor,true);
		$criteria->compare('grt',$this->grt,true);
		$criteria->compare('location',$this->location,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Route the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}