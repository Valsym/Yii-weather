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
                $from = strtotime($this->$attribute);
                if ($from < mktime(0, 0, 0, 1, 1, 2016) || $from > time()) {
                    return $this->addError($attribute, 'Дата "От" должна быть не ранее 1 января 2016 и не позднее текущей.');
                }
                if (!$this->CheckDateFormat($this->$attribute)) {
                    return $this->addError($attribute, 'Дата "От" должна быть введена в формате Y-m-d (год-месяц-день), месяц - число');
                }
            }],
            ['to', function ($attribute, $params) {
                $to = strtotime($this->$attribute);
                if ($to < mktime(0, 0, 0, 1, 1, 2016) || $to > time()) {
                    return $this->addError($attribute, 'Дата "До" должна быть не ранее 1 января 2016 и не позднее текущей.');
                }
                if (!$this->CheckDateFormat($this->$attribute)) {
                    $this->addError($attribute, 'Дата "До" должна быть введена в формате Y-m-d (год-месяц-день), месяц - число');
                }
            }],
        ];
    }
    
   public function CheckDateFormat($data)
   {
        $pattern = "/^([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})$/"; 
        // Основной 2013-10-22  
        if ( preg_match($pattern, $data, $matches) ) {
            return checkdate($matches[2], $matches[3], $matches[1]) ? true : false;
        }
        return false;
    }
}