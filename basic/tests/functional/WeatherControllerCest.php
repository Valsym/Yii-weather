<?php
class WeatherControllerCest {
    public $class = 'WeatherController';

    public function actionIndex(CodeGuy $I) {
        $I->haveStub($controller = Stub::makeEmptyExcept($this->class, 'actionIndex'))
            ->haveStub($db = Stub::make('DbConnector', array(
                 'find' => function($id) { return $id ? new Weather() : null )))
            ->setProperty($controller, 'db', $db);

    	$I->wantTo('render weather page for valid date')
        	->executeTestedMethodOn($controller, 1)
            ->seeResultEquals(true)
            ->seeMethodInvoked($controller, 'render');

        $I->expect('it will render page entrytemp for first enter or it is error')
            ->executeTestedMethodOn($controller, 0)
            ->seeResultNotEquals(true)
            ->seeMethodInvoked($controller, 'entrytemp','First enter or it is error')
            ->seeMethodNotInvoked($controller, 'render');
    }
}
