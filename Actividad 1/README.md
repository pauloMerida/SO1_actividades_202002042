## Actividad 1
######Paulo Fernando Mérida Salazar 202002042



#### Tipos de kernel mode

**Monolíticos:** Todos los servicios del sistema operativo se ejecutan en el espacio del kernel. Son eficientes pero difíciles de mantener y extender.

**Micronúcleos:** Solo los servicios esenciales del sistema operativo se ejecutan en el espacio del kernel. Son más fáciles de mantener y extender, pero pueden ser menos eficientes.

**Núcleos híbridos:** Combinan características de los núcleos monolíticos y microkernels


#### Tipos de kernel mode
**Modo de usuario:** Los programas se ejecutan con acceso limitado a los recursos del sistema

**Modo de kernel:** El kernel tiene acceso directo e ilimitado a los recursos del sistema.

#### Interruptions vs traps
**Interrupciones:** 
-Son eventos generados por el hardware  
-Estas son asíncronas 

**Trampas:** 
-Son excepciones en un proceso de usuario. 
-Son causadas por división por cero o acceso a memoria inválido. 