# Yii-weather

Задача: https://goo.gl/Y7hLdJ

Решение:

1. Устанавливаю Yii 2.0  по инструкции https://nix-tips.ru/yii2-api-guides/guide-ru-start-installation.html
в папку F:\xampp\htdocs\Yii-weather\basic\/basic/

2. Локально вхожу в XAMPP Control Panel и стартую сервер Apache и базу данных MySQL

3. Набраю в браузере localhost -> phpMyAdmin и создаю базу данных yii2basic с параметрами прописанными по адресу F:\xampp\htdocs\test\Yii-weather\basic\config\db.php

4. Создаю в ней таблицу:<br/>
CREATE TABLE `weather` (<br/>
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,<br/>
  `date` DATE NOT NULL,<br/>
  `month` INT(11) NOT NULL DEFAULT '0',<br/>
  `nweek` INT(11) NOT NULL DEFAULT '0',<br/>
  `dweek` INT(11) NOT NULL DEFAULT '0',<br/>
  `tday` INT(11) NOT NULL DEFAULT '0',<br/>
  `tnight` INT(11) NOT NULL DEFAULT '0',<br/>
  `delmaxweek` BOOLEAN NOT NULL DEFAULT FALSE,<br/>
  `delmaxmonth` BOOLEAN NOT NULL DEFAULT FALSE<br/>
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

5. Подготавливаю файл f:/tmp/weather.cvs в соответствии со структурой таблицы:<br/>
id,date,month,nweek,dweek,day,nightdelmaxweek,delmaxmonth<br/>
1,2016-1-1,1,1,6,-8,-11<br/>
2,2016-1-2,1,1,7,-6,-13<br/>
....<br/>
522,2017-6-5,6,23,2,10,5,0,0<br/>
523,2017-6-6,6,23,3,12,6,0,0<br/>

Предварительно температурные данные генерирую в эксель файле по формуле <br/>
tday=СЛУЧМЕЖДУ(9;13)+AE28 <br/>
tnight==СЛУЧМЕЖДУ(4;8)+AE28<br/>
где AE28=SIN(AP28)*20 и AP28=(-1/2+(-60+2*n)/360)*ПИ(), где n-ряд целых чиел от 1 до 523<br/>

6. Загружаю данные из файла в нашу таблицу:<br/>
LOAD DATA INFILE 'f:/tmp/weather.csv'<br/>
INTO TABLE weather<br/>
FIELDS TERMINATED BY ',' ENCLOSED BY '"'<br/>
LINES TERMINATED BY '\n'<br/>
IGNORE 1 ROWS<br/>

База данных прилагается: yii2basic.sql

На этом этап пред-подготовки закончен. Далее собственно сам процесс програмирования на PHP под Yii 2.0

7. Создаю две модели \Yii-weather\basic\models\EntryFormTemp.php и Weather.php

В первой модели создал правила для валидации данных, поступающих из пользовательской формы выбора желаемого периода обработки \basic\views\weather\entrytemp.php Если данные пользователь не вводит то по умолчанию вводятся данные за период: последний месяц и два предыдущих. 

Вторая модель models\Weather.php - это просто: class Weather extends ActiveRecord 
Т.е. создаю потомка Active Record, с помощью которого будем манипулировать с данными из БД.

8. Создаю контроллер \controllers\WeatherController.php
который обрабатывает сначала данные полученные из пользовательской формы entrytemp,
 
затем с помощью функций findmaxweeks и findmaxmonths подсчитываются максимальные перепады температур за неделю и за месяц (эти данные записываются в БД как метки true or false в колонки delmaxweek и delmaxmonth)

После чего делается выборка данных из базы в массив объектов $weather и далее рендерится во вьюер \views\weather\index.php, в котором отображается итоговая таблица.

Запуск приложения: http://localhost/test/Yii-weather/basic/web/index.php?r=weather%2Findex

9. Добавил unit-тесты: /basic/tests/unit/models/EntryFormTempTest.php<br/>
Запуск тестов из папки /basic/  codecept run unit

10. Добавил функциональные тесты: https://github.com/Valsym/Yii-weather/tree/master/basic/tests/functional<br/>
Запуск из папки /basic/  codecept run functional


