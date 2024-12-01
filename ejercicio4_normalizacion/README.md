# Un poco de teoria: Normalización

La **normalización** es un proceso fundamental en el diseño de bases de datos
relacionales que tiene como objetivo organizar los datos de manera eficiente y
reducir la redundancia. A través de una serie de reglas y principios llamados
**formas normales**, la normalización busca asegurar la integridad de los datos
y optimizar el rendimiento de la base de datos.

## Objetivos de la Normalización

1. **Eliminar la redundancia de datos**: Reducir la duplicación de información
   para minimizar el espacio de almacenamiento y evitar inconsistencias.
2. **Mejorar la integridad de los datos**: Asegurar que las dependencias entre
   datos estén correctamente representadas.
3. **Facilitar el mantenimiento**: Simplificar la inserción, actualización y
   eliminación de datos sin afectar la coherencia de la base de datos.

## Formas Normales

Las formas normales son niveles o etapas en el proceso de normalización. Cada
forma normal aborda un tipo específico de problema:

### Primera Forma Normal (1FN)

**Requisito**: Todos los atributos deben ser atómicos; es decir, cada columna
debe contener valores indivisibles.

**Explicación**: No deben existir columnas con valores múltiples o listas de
valores. Por ejemplo, si tienes una tabla de contactos, en lugar de tener una
columna "Teléfonos" con múltiples números separados por comas, debes tener una
fila por cada número o una tabla separada para los números de teléfono.

**Ejemplo**:

| ID  | Nombre     | Teléfono          |
| --- | ---------- | ----------------- |
| 1   | Juan Pérez | 555-1234,555-5678 |

_No cumple 1FN porque "Teléfono" contiene múltiples valores._

### Segunda Forma Normal (2FN)

**Requisito**: Cumple con 1FN y todos los atributos no clave dependen
completamente de la clave primaria.

**Explicación**: Si la clave primaria es compuesta (más de un atributo), no
deben existir dependencias parciales; es decir, ningún atributo debe depender
solo de una parte de la clave primaria.

**Ejemplo**:

Supongamos una tabla con clave primaria compuesta por "PedidoID" y "ProductoID",
y un atributo "NombreProducto" que depende solo de "ProductoID".

_No cumple 2FN porque "NombreProducto" depende parcialmente de la clave
primaria._

### Tercera Forma Normal (3FN)

**Requisito**: Cumple con 2FN y no existen dependencias transitivas entre
atributos no clave.

**Explicación**: Un atributo no clave no debe depender de otro atributo no
clave. Todos los atributos no clave deben depender únicamente de la clave
primaria.

**Ejemplo**:

Si en una tabla de empleados tienes "EmpleadoID", "DepartamentoID" y
"NombreDepartamento", y "NombreDepartamento" depende de "DepartamentoID",
entonces hay una dependencia transitiva.

_No cumple 3FN porque "NombreDepartamento" depende de "DepartamentoID", no
directamente de "EmpleadoID"._

### Forma Normal de Boyce-Codd (BCNF)

**Requisito**: Una versión más estricta de 3FN donde cada determinante es una
clave candidata.

**Explicación**: Se aborda situaciones donde 3FN no elimina ciertas anomalías.
Es útil cuando existen múltiples claves candidatas.

## Beneficios de la Normalización

- **Integridad Referencial**: Mantiene la consistencia en las relaciones entre
  tablas.
- **Flexibilidad**: Facilita la modificación de la estructura de la base de
  datos sin afectar la integridad de los datos.
- **Eficiencia en Actualizaciones**: Reduce la necesidad de actualizaciones
  múltiples en diferentes lugares.

## Posibles Desventajas

- **Complejidad en Consultas**: Puede requerir consultas más complejas debido a
  la necesidad de unir varias tablas.
- **Rendimiento**: En sistemas donde la lectura es más frecuente que la
  escritura, las uniones múltiples pueden afectar el rendimiento.

## Consideraciones Prácticas

En la práctica, se busca un equilibrio entre normalización y desnormalización:

- **Desnormalización Controlada**: A veces es necesario desnormalizar ciertas
  partes para mejorar el rendimiento.
- **Análisis de Requerimientos**: Comprender las necesidades específicas del
  sistema para aplicar el nivel adecuado de normalización.

## Conclusión

La normalización es esencial para diseñar bases de datos relacionales eficientes
y coherentes. Al seguir las formas normales, se garantiza que los datos estén
estructurados de manera lógica, minimizando redundancias y facilitando el
mantenimiento. Sin embargo, es importante evaluar las necesidades específicas
del proyecto para aplicar el nivel adecuado de normalización y asegurar un
equilibrio óptimo entre integridad y rendimiento.

---

---

¡Claro que sí! Vamos a realizar un ejercicio práctico para aplicar los conceptos
de normalización paso a paso.

---

## **✏️Ejercicio de Normalización**

**Supongamos** que tenemos la siguiente tabla que almacena información sobre
empleados y los proyectos en los que trabajan:

| **EmpleadoID** | **NombreEmpleado** | **ProyectoID** | **NombreProyecto** | **HorasTrabajadas** | **TarifaHora** |
| -------------- | ------------------ | -------------- | ------------------ | ------------------- | -------------- |
| 1              | Ana Gómez          | 101            | Alpha              | 5                   | 50             |
| 1              | Ana Gómez          | 102            | Beta               | 3                   | 50             |
| 2              | Luis Martínez      | 101            | Alpha              | 8                   | 60             |
| 3              | María Sánchez      | 103            | Gamma              | 7                   | 55             |
| 2              | Luis Martínez      | 103            | Gamma              | 4                   | 60             |

**Objetivo**: Normalizar esta tabla hasta la **Tercera Forma Normal (3FN)**.

---

### **Paso 1: Verificar la Primera Forma Normal (1FN)**

**Requisito de 1FN**: Todos los atributos deben ser atómicos; es decir, cada
campo debe contener un solo valor.

**Análisis**:

- En la tabla, cada celda contiene un único valor.
- No hay campos con valores múltiples o listas.

**Conclusión**: La tabla **cumple con la 1FN**.

---

### **Paso 2: Verificar la Segunda Forma Normal (2FN)**

**Requisito de 2FN**: La tabla debe estar en 1FN y todos los atributos no clave
deben depender completamente de la clave primaria.

**Identificación de la Clave Primaria**:

- La clave primaria es compuesta por **EmpleadoID** y **ProyectoID**, ya que un
  empleado puede trabajar en múltiples proyectos y un proyecto tiene múltiples
  empleados.

**Análisis de Dependencias**:

- **NombreEmpleado** depende solo de **EmpleadoID**.
- **NombreProyecto** depende solo de **ProyectoID**.
- **TarifaHora** depende solo de **EmpleadoID**.
- **HorasTrabajadas** depende de la combinación de **EmpleadoID** y
  **ProyectoID**.

**Problema**:

- Existe **dependencia parcial**: Algunos atributos dependen solo de una parte
  de la clave primaria.

**Conclusión**: La tabla **no está en 2FN**.

---

### **Paso 3: Convertir a Segunda Forma Normal (2FN)**

**Solución**: Dividir la tabla en tablas que eliminen las dependencias
parciales.

#### **Tabla 1: Empleados**

| **EmpleadoID** | **NombreEmpleado** | **TarifaHora** |
| -------------- | ------------------ | -------------- |
| 1              | Ana Gómez          | 50             |
| 2              | Luis Martínez      | 60             |
| 3              | María Sánchez      | 55             |

#### **Tabla 2: Proyectos**

| **ProyectoID** | **NombreProyecto** |
| -------------- | ------------------ |
| 101            | Alpha              |
| 102            | Beta               |
| 103            | Gamma              |

#### **Tabla 3: HorasTrabajadas**

| **EmpleadoID** | **ProyectoID** | **HorasTrabajadas** |
| -------------- | -------------- | ------------------- |
| 1              | 101            | 5                   |
| 1              | 102            | 3                   |
| 2              | 101            | 8                   |
| 3              | 103            | 7                   |
| 2              | 103            | 4                   |

**Verificación de 2FN**:

- **Tabla Empleados**: Todos los atributos dependen de **EmpleadoID**.
- **Tabla Proyectos**: Todos los atributos dependen de **ProyectoID**.
- **Tabla HorasTrabajadas**: **HorasTrabajadas** depende de la clave primaria
  compuesta (**EmpleadoID**, **ProyectoID**).

**Conclusión**: Ahora, cada tabla está en **2FN**.

---

### **Paso 4: Verificar la Tercera Forma Normal (3FN)**

**Requisito de 3FN**: La tabla debe estar en 2FN y no debe haber dependencias
transitivas.

**Análisis de Dependencias**:

- **Tabla Empleados**:

  - **NombreEmpleado** y **TarifaHora** dependen solo de **EmpleadoID**.
  - No hay dependencias transitivas.

- **Tabla Proyectos**:

  - **NombreProyecto** depende solo de **ProyectoID**.
  - No hay dependencias transitivas.

- **Tabla HorasTrabajadas**:
  - **HorasTrabajadas** depende de la combinación de **EmpleadoID** y
    **ProyectoID**.
  - No hay otros atributos en esta tabla.

**Conclusión**: Todas las tablas **cumplen con la 3FN**.

---

### **Paso 5: Resumen de la Normalización**

Hemos dividido la tabla original en tres tablas:

1. **Empleados**: Información única de cada empleado.
2. **Proyectos**: Información única de cada proyecto.
3. **HorasTrabajadas**: Relación entre empleados y proyectos, con las horas
   trabajadas.

---

### **Paso 6: Implementación en SQL**

**Creación de Tablas**

```sql
CREATE DATABASE proyectosDB;
USE proyectosDB;

CREATE TABLE Empleados(
ID_Empleado INT PRIMARY KEY auto_increment,
Nombre VARCHAR(20),
Tarifa_Hora DECIMAL(5,2)
);

CREATE TABLE Proyectos(
ID_Proyecto INT PRIMARY KEY auto_increment,
Nombre_Proyecto VARCHAR (20)
);

CREATE TABLE Horas_Trabajadas(
ID_HoraTrabajada INT PRIMARY KEY AUTO_INCREMENT,
ID_Empleado INT,
ID_Proyecto INT,
Horas_trabajadas INT,
FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado),
FOREIGN KEY (ID_Proyecto) REFERENCES Proyectos (ID_Proyecto)
);
```

**Inserción de Datos**

Sigue las instrucciones para ingresar datos de prueba en el file de creación
[aqui ➡️](/ejercicio4_normalizacion/proyectosDB_creación.sql)

---

### **Paso 8: Beneficios de la Normalización Aplicada**

- **Eliminación de Redundancia**: Los nombres de empleados y proyectos se
  almacenan una sola vez.
- **Integridad de Datos**: Los cambios en la información de un empleado o
  proyecto se reflejan en todas las relaciones sin inconsistencias.
- **Flexibilidad**: Podemos agregar nuevos empleados o proyectos sin afectar la
  estructura existente.
- **Eficiencia**: Las consultas son más eficientes y las actualizaciones más
  sencillas.

---

### **Paso 9: Reflexión Final**

Al normalizar la tabla original hasta la 3FN, hemos creado un diseño de base de
datos más robusto y eficiente. Este proceso nos permite:

- **Mantener la integridad de los datos** evitando anomalías de actualización,
  inserción y eliminación.
- **Optimizar el almacenamiento** al eliminar datos redundantes.
- **Facilitar el mantenimiento** y escalabilidad de la base de datos.

---

### **Conclusión**

Hemos aplicado los principios de normalización paso a paso:

1. **1FN**: Confirmamos que cada campo contiene valores atómicos.
2. **2FN**: Eliminamos dependencias parciales dividiendo la tabla en
   **Empleados**, **Proyectos** y **HorasTrabajadas**.
3. **3FN**: Verificamos que no hay dependencias transitivas en las nuevas
   tablas.

Este ejercicio nos ayuda a comprender cómo la normalización mejora el diseño de
una base de datos, haciendo que sea más coherente y eficiente.

---

Espero que este ejercicio te haya ayudado a entender cómo aplicar la
normalización en una base de datos relacional. Si tienes alguna duda o necesitas
más detalles, ¡no dudes en preguntar!
