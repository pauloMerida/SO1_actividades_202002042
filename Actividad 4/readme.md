# Actividad 3 Paulo Mérida 202002042

## paso 1 
crear un  archivo .sh como prodria ser por ejemplo actividad3.sh

```
#!/bin/bash
while true; do
    echo "Hola, mundo! La fecha actual es: $(date)"
    sleep 1
done
```

el cual retorna lo siguiente:

> Hola Mundo! la fecha actual es "fecha actual"

## paso 2

Guardar el script en una ubicación facil de acceder como podria ser:

> /usr/local/actividad3.sh

## paso 3

crear el archivo de servicio systemd el cual podemos nombrar actividad3.service, el cual tendria un codigo como este:
```
[Unit]
Description=Servicio de saludo infinito
After=network.target

[Service]
Type=simple
ExecStart=/usr/local/bin/actividad3.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

## paso 4
Habilitar y empezar el servicio haciendo uso de los siguientes comandos:

```
sudo systemctl enable actividad3.service
sudo systemctl start actividad3.service
```

## paso 5
Chequear los logs con el siguiente comando:

```
journalctl -u saludo.service
```
 
### siguiendo estos pasos tenemos listo el script junto con el servicio systemd el cual se estara ejecutando indefinidamente imprimiendo el mensaje mostrado en el paso 1 y generando los respectivos logs a los cuales podemos acceder siempre que lo necesitemos.