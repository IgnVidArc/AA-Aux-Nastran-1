# APARTADO 4: `results_Task3_Coupling`
## Fig100: Modal frequencies vs dt of the 1-cosine excitation.
Analysis hecho en `PRIMERAS_NOTAS_SOBRE_RESULTADOS.md`

# APARTADO 5: `results_Task3_SensitivityAnalysis.m`
## Fig1: M1 without coupling
## Fig2: M1 with coupling
## Fig3: M2 with coupling
- figuras (1,2,3): se ve el structural damping.
- con la dt=1, que es básicamente una carga básicamente "estática", la masa sigue a la fuerza (multiplicada por la rigidez que toque, etc)
- Se ve que no es un armónico perfecto cada masa porque, aunque la excitación externa tiene como "una componente armónica", está ahí la interacción con la otra masa, por lo que se van molestando.
## Fig4: max displacements vs dt of exitation
- La M1 free tiene más displacement que cuando tiene coupling, no hay nada que la ate.
**KEY**:
- la frecuencia de máximo displacement en el caso free es justo a 10Hz, es la frecuencia propia de ese grado de libertad.
- para el caso de la M1 ya con coupling, la _resonancia_, para los valores de $dt$ estudiados, es con 0.09. Eso es un poco más de 10Hz. *Justificación*: EL PRIMER MODO PROPIO VISTO EN EL MODAL ANALYSIS (APARTADO 4) CUANDO K_coupling = 1.0 * K_1, eran 13.70Hz. POR ESO TENEMOS EL MÁXIMO AHÍ: ESTAMOS EXCITANDO ESE MODO PROPIO.

