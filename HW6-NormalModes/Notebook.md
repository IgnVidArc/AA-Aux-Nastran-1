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

## Decisiones en plano de simetría:
**Masas**:
- V-tail y rudder dejado solo la mitad de las CONM2.
- para el fuselaje está divididas ambas partes a la mitad, para comprobar que también le sirve tener dos entradas de masas diferentes en el mismo grid point.
**Rigideces**
- para los elementos `CBAR`, hay que modificar las propiedades de las PBAR, las áreas, inercias, etc. *NO* sirve dividir el módulo elástico por la mitad.
- lo mismo para los `CELAS`. aquí simplemente hay que dividir las rigideces a la mitad.




