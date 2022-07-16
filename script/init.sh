#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Добавляем админа
airflow users create  -e admin@example.org -f admin -l admin -p admin -r Admin -u admin

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

