# CMD vs ENTRYPOINT
```
Dockerfile
FROM centos

ENTRYPOINT ["/bin/ping"]
CMD ["localhost"]
```
sudo podman run -ti test   
Запускаем и провееряем что пигует localhost
Aca hace ping a localhost

sudo podman run -ti test 8.8.8.8    
Aca va a hacer ping a 8.8.8.8
А так будет пинговать 8.8.8.8

```
Dockerfile
FROM centos

CMD ["/bin/ping", "localhost"]  
```

sudo podman run -ti test   
Aca hace ping a localhost  
Запускаем и провееряем что пигует localhost

sudo podman run -ti test 8.8.8.8    
Aca va a tirar error ya que reemplaza el cmd por 8.8.8.8  
А здесь будет выдана ошибка, так как мы меняем CMD полностью значением 8.8.8.8

podman run command, it overwrites the CMD instruction.  
podman при запуске перезаписывает CMD инструкцию.
