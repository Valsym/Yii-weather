# Yii-weather

Задача: https://goo.gl/Y7hLdJ

Решение:

1. Устанавливаю Yii 2.0  по инструкции https://nix-tips.ru/yii2-api-guides/guide-ru-start-installation.html
в папку F:\xampp\htdocs\Yii-weather\basic\/basic/

2. Локально вхожу в XAMPP Control Panel и стартую сервер Apache и базу данных MySQL

3. Набраю в браузере localhost -> phpMyAdmin и создаю базу данных yii2basic с параметрами прописанными по адресу F:\xampp\htdocs\test\Yii-weather\basic\config\db.php

4. Создаю в ней таблицу:<br/>
CREATE TABLE `weather` (
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `date` DATE NOT NULL,
  `month` INT(11) NOT NULL DEFAULT '0',
  `nweek` INT(11) NOT NULL DEFAULT '0',
  `dweek` INT(11) NOT NULL DEFAULT '0',
  `tday` INT(11) NOT NULL DEFAULT '0',
  `tnight` INT(11) NOT NULL DEFAULT '0',
  `delmaxweek` BOOLEAN NOT NULL DEFAULT FALSE,
  `delmaxmonth` BOOLEAN NOT NULL DEFAULT FALSE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

5. Подготавливаю файл f:/tmp/weather.cvs в соответствии со структурой таблицы:
id,date,month,nweek,dweek,day,nightdelmaxweek,delmaxmonth
1,2016-1-1,1,1,6,-8,-11
2,2016-1-2,1,1,7,-6,-13
....
522,2017-6-5,6,23,2,10,5,0,0
523,2017-6-6,6,23,3,12,6,0,0

Предварительно температурные данные генерирую в эксель файле по формуле 
tday=СЛУЧМЕЖДУ(9;13)+AE28 
tnight==СЛУЧМЕЖДУ(4;8)+AE28
где AE28=SIN(AP28)*20 и AP28=(-1/2+(-60+2*n)/360)*ПИ(), где n-ряд целых чиел от 1 до 523

6. Загружаю данные из файла в нашу таблицу:
LOAD DATA INFILE 'f:/tmp/weather.csv'
INTO TABLE weather
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS

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

