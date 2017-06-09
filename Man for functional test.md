Инструкция по настройке окружения для функциональных тестов, использующих Базу Данных.

Если в тестах будет попытка обращения к данным из БД, как у меня <br/>https://github.com/Valsym/Yii-weather/tree/master/basic/tests/functional:<br/>
$I->submitForm('#date-form', [<br/>
            'EntryFormTemp[from]' => '2015-1-1',<br/>
            'EntryFormTemp[to]' => '2017-jun-3',<br/>
        ]);<br/>

то тест упадет с ошибкой типа:<br/>
  [yii\db\Exception] SQLSTATE[HY000] [1049] Unknown database 'yii2_basic_tests' 
 
Проверьте настройки: <br/>
1. Файл basic/config/test_db.php:<br/>
<?php<br/>
$db = require(__DIR__ . '/db.php');<br/>
// test database! Important not to run tests on production or development databases<br/>
$db['dsn'] = 'mysql:host=localhost;<b>dbname=yii2_basic_tests</b>';<br/>

return $db;<br/>

2. /tests/functional.suite.yml<br/>
class_name: FunctionalTester<br/>
modules:<br/>
    enabled:<br/>
      - Filesystem<br/>
      - Yii2<br/>
    config:<br/>
        Db:<br/>
          dsn: mysql:host=localhost;dbname=yii2_basic_tests<br/>
          user: root<br/>
          password: <br/>
          dump: _data/dump.sql<br/>
          charset: utf8<br/>
	  
3. Создайте новую Базу данных для тестов yii2_basic_tests и экспортируйте туда ваши таблицы из основной БД.<br/>

4. Чтобы все заработало как надо, запустите сервер и MySQL.<br/>

5. Запуск тестов из папки /basic/  командой: codecept run functional <br/>

