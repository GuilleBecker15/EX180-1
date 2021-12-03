#!/bin/bash

echo "Из файла "
curl http://localhost:20080/index2.html
echo "Из аргумента "
curl http://localhost:20080/index.html
echo "Echo из переменной окружения"
sudo podman exec -ti do180-p1c /bin/bash -c 'echo $NAME - $ENVIRONMENT'

