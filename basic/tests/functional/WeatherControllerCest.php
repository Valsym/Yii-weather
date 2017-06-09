<?php
class WeatherControllerCest
{
    
    public $class = 'WeatherController';
    
    public function _before(\FunctionalTester $I)
    {
        $I->amOnRoute('weather/index');
    }
    
    public function openIndexPage(\FunctionalTester $I)
    {
        $I->see('Среднесуточные температуры', 'h1');

    }
    
    public function submitDefaultDate(\FunctionalTester $I)
    {
        $I->submitForm('#date-form', []);
        //$I->expectTo('see validations errors');
        $I->see('Weather', 'h1');

    }

    public function actionIndex(\FunctionalTester $I) {
        $I->wantToTest('front page of my site');
        $I->amOnRoute('weather/index');
        $I->see('Среднесуточные температуры', 'h1');

    }
}
