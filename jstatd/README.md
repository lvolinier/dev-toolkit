# Script jstatd.sh

La intención de este script es agregarlo al directorio `~/app` de las 
aplicaciones que deployamos en `CloudIA`. Este script nos permite 
levantar un proceso de jstatd con el fin de poder conectarse a la JVM 
y poder levantar de manera remota los `JSTATS`.

## Walkthrough

Copiar el script jstatd.sh en el directorio `~/app` (pueden agregarlo 
al proyecto y empacarlo en el deployable o directamente agregarlo a 
mano).

Parados en el HOME_DIR, ejecutar `app/jstatd.sh start`

Enjoy

Para que no quede corriendo (si les preocupa), pueden ejecutar 
`app/jstatd.sh stop`.

