# Actividad 4 Paulo Mérida 202002042

## paso 1 
Debemos de definir  los dos nombres de pipes para los participantes

```
mkfifo participante1_pipe
mkfifo participante2_pipe
```

el cual retorna lo siguiente:


## paso 2

Crear dos scripts en bash para cada uno de los participantes del chat en este caso como son dos participantes serian dos scripts.

### Script 1
```
#!/bin/bash
PARTICIPANTE1 = participante1_pipe
PARTICIPANTE2 = participante2_pipe

while true; do
   
    read -r message < "$PARTICIPANTE2"
    echo "Participante 2 dice: $message"

    echo "tu mensaje: "
    read -r reply
    echo "$reply" > "$PARTICIPANTE1"
done
```
### Script 2
```
#!/bin/bash

PARTICIPANTE1 = participante1_pipe
PARTICIPANTE2 = participante2_pipe

while true; do
    
    read -r message < "$PARTICIPANTE1"
    echo "Participante 1 dice: $message"
    

    echo "Tu mensaje: "
    read -r reply
    echo "$reply" > "$PARTICIPANTE2"
done
```

## paso 3

Darle permisos de ejecucion a los scripts
```
chmod +x participante1.sh participante2.sh
```

## paso 4
Ejecutar ambos scripts pero en diferentes terminales.

```
./participante1.sh
./participante2.sh
```

 
### siguiendo estos pasos tenemos listo los scripts para la implementacion de un pequeño chat de dos personas donde unicamente necesitamos ejecutar los scripts en diferentes terminales para enviar mensajes entre si haciendo uso de pipes.