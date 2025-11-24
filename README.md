<img width="388" height="177" alt="image" src="https://github.com/user-attachments/assets/fbe33014-d03a-4b53-8430-949a4700d4da" />

# CS GradeCalculator – Guía de uso (VS Code / Terminal)

Este proyecto calcula la **nota final** de un estudiante a partir de:
- Evaluaciones con **nota** y **peso**
- Cumples o no **asistencia mínima**
- Si **todos** los profesores están de acuerdo en dar puntos extra
----

## Requisitos previos

1. Tener instalado **.NET SDK 8** (o 6/7+).
   - Verifica con:
     ```bash
     dotnet --info
     ```
2. En VS Code, tener instalada la extensión:
   - **C# Dev Kit** (Microsoft)

---

## Cómo usarlo 
### 1. Cantidad de evaluaciones
```
How many evaluations? (max 10):
```
- Ingresa un número entero entre **1 y 10**.

> Si pones 0, el sistema no puede calcular y dará error.  
> Si pones más de 10, viola el requisito RNF01.

---

### 2. Datos de cada evaluación
Para cada evaluación:

```
Eval i name:
Score:
Weight (decimal, e.g. 0.2):
```

**Reglas:**
- **Name**: texto cualquiera (ej. “PC1”, “Examen”, “Tarea”).
- **Score**: número **>= 0** (usa tu escala: 0–20 o 0–100).
- **Weight**: número decimal **(0,1]**.

✅ **Importante: la suma de todos los pesos debe ser EXACTAMENTE 1.0**.

Ejemplo correcto con 5 evaluaciones:
```
0.20 + 0.30 + 0.25 + 0.15 + 0.10 = 1.00  ✅
```

Ejemplo incorrecto (causa excepción):
```
0.2 + 0.5 + 0.2 + 0.1 + 0.2 = 1.2  ❌
```

---

### 3. Asistencia mínima
```
Reached minimum attendance? (true/false):
```

- Escribe **true** si cumpliste asistencia mínima.
- Escribe **false** si NO cumpliste.

Si es false, se aplica una penalización (por defecto 2 puntos).

---

### 4. Votos de profesores para puntos extra
```
How many teachers votes?:
Teacher 1 agrees? (true/false):
...
```

- Ingresa cuántos profesores participan en la decisión.
- Para cada uno escribe:
  - **true** si está de acuerdo con puntos extra
  - **false** si NO lo está

✅ **Solo si TODOS son true, se aplican puntos extra** (por defecto +1).

Ejemplos:
- `true true true` → aplica extra ✔
- `true true false` → NO aplica extra ✘

---

## Salida esperada

El programa imprime un resumen:

```
Weighted Average: XX.XX
Attendance Penalty: X.XX
Extra Points: X.XX
Final Grade: XX.XX
```

Donde:
- **Weighted Average** = promedio ponderado
- **Attendance Penalty** = penalización por inasistencia (0 si cumpliste)
- **Extra Points** = puntos extra (0 si no hubo unanimidad)
- **Final Grade** = nota final

---

## Errores comunes y cómo evitarlos

1. **Pesos no suman 1.0**
   - Te saldrá:
     ```
     Weights must sum to 1.0
     ```
   - Solución: corrige pesos hasta que sumen 1.00 exacto.

2. **Más de 10 evaluaciones**
   - Error:
     ```
     Max evaluations is 10
     ```

3. **Weight negativo o 0**
   - Error:
     ```
     Weight must be in (0,1]
     ```

4. **Score negativo**
   - Error:
     ```
     Score cannot be negative
     ```
