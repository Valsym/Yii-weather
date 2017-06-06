<?php

namespace app\models;

use yii\base\Model;

class EntryFormTemp extends Model
{
	public $from;
    public $to;

    public function rules()
    {
		
        return [
			[['from', 'to'], 'default', 'value' => function ($model, $attribute) {
				$month = date('n');
				$year = date('Y');
				$beforeMonth = $month > 1 ? $month - 1 : 12;
				$beforeTwoMonth = $beforeMonth > 1 ? $beforeMonth - 1 : 12;
				$daysBeforeMonth = date('t',mktime(0, 0, 0, $beforeMonth, 1, $year));
				$daysBeforeTwoMonth = date('t',mktime(0, 0, 0, $daysBeforeMonth, 1, $year));
				$count = date('j') + $daysBeforeMonth + $daysBeforeTwoMonth - 2;
				return date('Y-m-d', strtotime($attribute === 'to' ? '-0 days' : "-$count days"));
			}],
			//[['from', 'to'], 'date'],
            // встроенный валидатор определяется как модель метода validateCountry()
            ['from', 'CheckDateFormat'],
            ['to', 'CheckDateFormat'],
            // встроенный валидатор определяется как анонимная функция
            ['from', function ($attribute, $params) {
                if (strtotime($this->$attribute) < mktime(0, 0, 0, 1, 1, 2016)) {
                    $this->addError($attribute, 'Дата "От" должна быть не ранее 1 января 2016 и быть в формате 2016-01-01.');
                }
            }],
            ['to', function ($attribute, $params) {
                if (strtotime($this->$attribute) > strtotime("now")) {
                    $this->addError($attribute, 'Дата "До" должна быть не позднее 17 июня 2017 и быть в формате 2016-06-03.');
                }
            }],
        ];
    }
    
   public function CheckDateFormat($data)
   {
        $pattern = "/^([0-9]{4})-([0-9]{2})-([0-9]{2})$/"; 
        // Основной 2013-10-22  
        if ( preg_match($pattern, $data, $matches) ) {
            return checkdate($matches[2], $matches[3], $matches[1]) ? true : false;
        }
        return false;
    }
}