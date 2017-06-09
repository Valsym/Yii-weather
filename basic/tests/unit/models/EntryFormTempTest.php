<?php
namespace tests\models;

//use Yii;
//use yii\web\Controller;
use app\models\EntryFormTemp;

class EntryFormTempTest extends \Codeception\Test\Unit
{
    private $model;
    
    public function testSuccessValidation()
    {
        $EntryFormTemp = new EntryFormTemp([
            'from' => '2016-1-1',
            'to' => '2017-1-1',
        ]);

        expect('Validation should be success', $EntryFormTemp->validate())->true();
    }
    
    public function testFailedValidation()
    {
        $EntryFormTemp = new EntryFormTemp([
            'from' => '2016-Jan-1',
            'to' => '2017-1-1',
        ]);

        expect('Validation should be success', $EntryFormTemp->validate())->false();
    }
    
    public function testDateOutOfRange()
    {
        $this->model = new EntryFormTemp([
            'from' => '2015-1-1',
            'to' => '2017-1-1',
        ]);

        expect_not($this->model->validate());
    }
    
    public function testCheckDateFormat()
    {
        //expect_that($user = User::findIdentity(100));
        $this->assertTrue(EntryFormTemp::CheckDateFormat('2017-06-07'));
        
        $this->assertFalse(EntryFormTemp::CheckDateFormat('2017-Jun-07'));
         
    }

}
