<?php

use yii\helpers\Url as Url;

class EntryCest
{
    public function _before(\AcceptanceTester $I)
    {
        $I->amOnPage(Url::toRoute('/weather/index'));
    }
    
    public function entryPageWorks(AcceptanceTester $I)
    {
        $I->wantTo('ensure that entry page works');
        $I->see('Среднесуточные температуры', 'h1');
    }

    public function entryFormCanBeSubmitted(AcceptanceTester $I)
    {
        $I->amGoingTo('submit entry form with correct data');
        $I->fillField('input[name="EntryFormTemp[from]"]', '2017-1-1');
        $I->fillField('input[name="EntryFormTemp[to]"]', '2017-3-1');

        $I->click('date-button');
        if (method_exists($I, 'wait')) {
            $I->wait(3); // only for selenium
        } else {
            sleep(3);
        }

        $I->dontSeeElement('#dateform-form');
        $I->see('February 2017');
    }
}