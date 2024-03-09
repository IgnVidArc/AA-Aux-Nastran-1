# Apartado 1:
solución en **task3_sol103.f06**. se mete la rigidez k2 y eso, con tres GRID POINTS, etc.
eso viene del dat: **Task3_SOL112.dat**
# Apartado 2:
la comprobación de que las frecuencias propias indeed son 10 y 20Hz está al final del documento **task3_sol103.f06** también.
*dijo que capturita o algo a esos resultados para el report*
# Apartado 3:
el .dat en el que lo meto es el **Task3_coupling_SOL103.dat**
- meto ahí todas las stiffness en los CELAS, para descomentar la que toque en cada simulación.
- se resuelven todas y se guardan como **task3_coupling_sol103_k#**, con # = 1,...,8.
# Apartado 4:
de esos _k# saco las frecuencias modales del final de cada documento.
esto está en el file de matlab **results_Task3_Coupling.m**
ahí dentro se hace un plot.

**LA INTERPRETACIÓN DE ESE PLOT:**
LA FRECUENCIA DEL *primer MODO PROPIO* SE ESTABILIZA EN 15,no sé qué. esa es más o menos la frecuencia de tener las dos masas moviéndose solidariamente, con un único grado de libertad. esto es, que su frecuencia sería: f = 1/(2* pi) * sqrt((k1+k2)/(M1+M2)).
esto está también calculado en el file de matlab que decía antes.

también, si se mira la forma que tienen los autovectores para este modo, se ve que la Z del grid 1 y del grid 2 (de las masas) van casi una igual que la otra (también al final del documento de las soluciones .f06). lo de que vayan la una pegada a la otra es real cuando estamos con k_coupling = 1000 * k1, más lejano en los anteriores k_coupling.

el *segundo modo propio* es el que creo que va relacionado con el movimiento en sentido contrario de las masas, es decir, una subiendo y la otra bajando (que esto se ve, as well, en la forma de los autovalores). la frecuencia de este modo solo sube con la k_coupling, duh. la freq es proporcional a la raíz de la rigidez, y en este modo realmente influye mainly la k_coupling. como la rigidez de una viga, vamos, que si la haces más rígida, vibra más rápido. (esto es solo mi forma de verlo intuitivamente)

# (Para el) Apartado 5:
he programado una función para pintar la solución dinámica del SOL 112, es la única función programada **ReadTranscientResponse.m**. hay un ejemplo con el caso del Task 2 que hicimos en clase en el script: **results_Task2_SOL112.m**

la forma de usarlo está ahí demostrada, se dice una linea de inicio y cuántos timesteps se le ha dicho al .dat de la resolución, en la línea de "TSTEP 5000 ....".

hay que buscar a mano la línea en la que empiezan los valores para el nodo que nos interese, pero se hace fácil.

el archivo tiene que leer el .pch que saca NASTRAN. en ese file le decíamos que nos imprimiera DESPLAZAMIENTOS, ACELERACIONES Y LOADS.
