#!/bin/bash

echo "Проверяю таблицы"
mysql -uuser1 -pmypa55 -h 127.0.0.1 -P13306 do180 -e "show tables"

echo "Восстанавливаю дамп"
mysql -uuser1 -pmypa55 -h 127.0.0.1 -P13306 do180 < mysql/do180.sql 

echo "Проверяю что появились новые таблицы"
mysql -uuser1 -pmypa55 -h 127.0.0.1 -P13306 do180 -e "show tables"

