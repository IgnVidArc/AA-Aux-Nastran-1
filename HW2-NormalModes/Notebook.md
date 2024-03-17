# GRIDS
10000 - Fuselage
20000 - Right Wing
    until 20_000 - 20_010 - 20_020 - ... - 20_170
25000 - LEFT wing

21000 - Right Ailerons
26000 - LEFT Ailerons

22000 - Right Engine (3 points: 00,10,20)
27000 - LEFT Engine

30000 - Vertical tail (10 points: 00-90)
31000 - Rudder (5 points: 10-50)

40000 - Right Horizontal tail (8 points, 00-70)
45000 - LEFT horizontal tail (same)

41000 - Right elevators (4 points: 10,20,30,40)
46000 - LEFT elevators (same)

50000 - 'Fittings':
Right Aileron fittings: {50011, 50012, 50111, 50112}
LEFT Aileron fittings:  {55011, 55012, 55111, 55112}

Rudder fittings: {50021, 50022, 50121, 50122}, kind of *DUPLICATED*.

Right Elevator fittings: {50031, 50032, 50131, 50132} *DUPLICATED*
*See what these duplicated points (131,132) are used for*
LEFT Elevator fittings: same with '55000', adding the 5 thousand.

60000 - Auxiliary grids:
Misma pinta que los fittings, mismas coordenadas, pero con el 6xxxx delante.

11000 - Nose Landing Gear (1 point)
12000 - Right Main Landing Gear
12500 - LEFT  Main Landing Gear

70000 - Right Wing Pod (4 points)
75000 - LEFT Wing Pod ( point)

## Decisiones:
**Masas**:
- le quito la mitad al fuselaje, que estaba duplicado.
- lo mismo para la vertical tail y el rudder

# pending1
Ver si hay que reducirle las stiffness a las barras de la vertical tail y el rudder.
Entiendo que sería cambiándolo en el `PBAR`.
- He creado el `MAT1 69` con 35000 Pa de rigidez, la mitad que los 70000 de MAT1 10 que se usa en todos los de más lados.

# RESULTADOS
- el modelo simétrico presenta tres modos como solido rígido y el antisimétrico seis. CORRECCIÓN: Esto era con el modelo incorrecto sin las BC del antisimétrico metidas (1,3,5).
## Simétrico
- el modo *15 - fuselage bending*, simétrico, no aparece en la solución simétrica.
- el modo *26 - 2nd fuselage bending* tiene 28Hz en el completo y casi 35 en el simétrico el modo 13 de esa solución. es el modo que más error presenta.
- mirando a las frecuencias del antisimétrico, el modo global 8, de 5.78 Hz, lo calcula como de 6.07 Hz.
- el siguiente, el 9, algo de error también.



