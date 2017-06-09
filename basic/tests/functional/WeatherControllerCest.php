<?php
class WeatherControllerCest
{
    
    public function _before(\FunctionalTester $I)
    {
        $I->amOnRoute('weather/index');
    }
    
    public function openEntryFormTempPage(\FunctionalTester $I)
    {
        $I->see('Среднесуточные температуры', 'h1');

    }
    
    public function submitDefaultDate(\FunctionalTester $I)
    {
        $I->submitForm('#date-form', []);
        $I->see('Weather', 'h1');

    }
    
    public function submitIncorrectDate(\FunctionalTester $I)
    {
        $I->submitForm('#date-form', [
            'EntryFormTemp[from]' => '2015-1-1',
            'EntryFormTemp[to]' => '2017-jun-3',
        ]);
        $I->see('Среднесуточные температуры', 'h1');
        $I->seeElement('#date-form');
        $I->See('Дата "От" должна быть не ранее 1 января 2016 и не позднее текущей');
        $I->dontSee('Дата "От" должна быть введена в формате Y-m-d (год-месяц-день), месяц - число');
        $I->dontSee('Дата "До" должна быть не ранее 1 января 2016 и не позднее текущей');
        $I->See('Дата "До" должна быть введена в формате Y-m-d (год-месяц-день), месяц - число');
    }

    public function submitSuccessfully(\FunctionalTester $I)
    {
        $I->submitForm('#date-form', [
            'EntryFormTemp[from]' => '2017-2-1',
            'EntryFormTemp[to]' => '2017-6-3',
        ]);
        $I->see('Weather', 'h1');
        $I->dontSeeElement('#date-form');
        $I->see('February 2017');        
    }
	
}
