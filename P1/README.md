# Server HTTP

# Русский
Dockerfile
Создайте докерфайл для создания службы httpd
1) Выполните yum install httpd, а затем yum clean все в один слой
2) Скопируйте index.html в /var/www/html/index2.html
3) PORTFORWARD от хост-порта 20080 к контейнеру 80
4) Создайте переменную сборки с именем NAME со значением по умолчанию Redhat.
5) В Dockerfile должны создать файл index.html в /var/www/html с содержимым «Hello $NAME from $ENVIRONMENT!!»
6) Используйте USER с пользователем apache, чтобы запустить его
7) Создайте переменную среды с именем ENVIRONMENT=dafault.
8) См. чем отличается ENTRYPOINT от CMD https://stackoverflow.com/questions/21553353/what-is-the-difference-between-cmd-and-entrypoint-in-a-dockerfile

Скрипты
Необходимо создать скрипты сборки, запуска, остановки, тестирования, журналов.
1) Создайте скрипт с именем build.sh для сборки с именем образа do180-p1, введите имя переменной сборки, затем проверьте что image создался.
2) Создайте сценарий с именем start.sh, чтобы запустить контейнер с именем do180-p1c, открыть порт 8080:80 и передать ему переменную среды ENVIRONMENT=desderun.
3) Создайте сценарий под названием test.sh для получения через curl index.html и index2.html с порта, указанный в пункте 2, повторите переменную среды ENVIRONMENT.
4) Создайте скрипт с именем stop.sh, чтобы остановить контейнер и удалить его.
5) Создайте скрипт с именем logs.sh для получения последних 20 строк журнала.
6) Создайте скрипт push.sh для пометки изображения, загрузке его в docker.io, а также сохраните его в image-local.tar.

# Spanish
Dockerfile  
Hacer un dockerfile para levantar un servicio httpd  
1) Hacer un yum install de httpd y luego un yum clean all en una sola layer
2) Copiar el index.html en /var/www/html/index2.html  
3) PORTFORWARD del port de host 20080 a 80 del contenedor 
4) Crear una variable build llamada NOMBRE con el valor por default Redhat
5) El dockerfile debe crear un archivo index.html en /var/www/html con el contenido "Hola $NOMBRE!!!"
6) Usar el USER con apache para correrlo
7) Crear una variable de entorno llamada ENTORNO=dafault 
8) Ver entrypoint vs CMD https://stackoverflow.com/questions/21553353/what-is-the-difference-between-cmd-and-entrypoint-in-a-dockerfile  

Scripts  
Crear scripts de build, start, stop, prueba, logs.
1) Crear un script llamado build.sh para hacer el build con Nombre de la imagen do180-p1, Variable de build NOMNBRE ingresar su nombre, luego mostrar la imagen creada
2) Crear un script llamado start.sh para que inicie un contenedor llamado do180-p1c y exponga el puerto 8080:80 y le pases la variable de enorno ENTORNO=desderun
3) Crear un script llamado prueba.sh para hacer un curl de index.html y index2.html al puerto expuesto en el punto 2, haga un echo de la variable de entrorno ENTORNO
4) Crear un script llamado stop.sh para stopear el contenedor y eliminar el contenedor
5) Crear un script llamado logs.sh para obtener los ultimos 20 logs
6) Crear un script para tagear la imagen y subirla a docker.io tambien salvarla a imagen-local.tar

