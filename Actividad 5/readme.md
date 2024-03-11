# Actividad 5 Paulo Mérida 202002042

## Codigo base


```
pid = fork();
if(pid == 0 ){/*child process*/
fork();
thread_create(....);
}
fork();
```
## Codigo Completo de ejemplo


```
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_function(void *arg) {

    printf("Hilo creado exitosamente.\n");
    pthread_exit(NULL);
}

int main() {
    pid_t pid;
    pthread_t tid;

    pid = fork();
    if (pid == 0) { 
        fork(); 
        pthread_create(&tid, NULL, thread_function, NULL); 
        pthread_join(tid, NULL); 
    }
    fork(); 
    return 0;
}
```

## Pregunta 1  ¿Cuántos procesos únicos son creados?
Procesos únicos creados: 4

## Pregunta 2  ¿Cuántos hilos únicos son creados?
Hilos únicos creados: 1