#!/bin/bash

# Удалить изображения
sudo podman images
sudo podman rm "image"
sudo podman rmi -a

# Создаем имидж
sudo podman build -t do180-p2 .

# Поднимаю контейнер со случайным портом, и он принимает соединения только от 127.0.0.1
sudo podman run -d  --name do180-p2c  -v /var/moscodb:/var/lib/mysql/data -p 127.0.0.1::3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=do180 -e MYSQL_ROOT_PASSWORD=r00tpa5 do180-p2

# Проверяем что поднялся контейнер и смотрим с каким портом
sudo podman ps 
sudo podman inspect do180-p2c --format "{{.HostConfig.PortBindings}}"


# Передача файлов в контейнер и из него
sudo podman cp standalone.conf myapp:/opt/jboss/standalone/conf/standalone.conf
sudo podman exec -i <container> mysql -uroot -proot < /path/on/host/db.sql < db.sql

