
-- creamos la base de datos.
CREATE DATABASE veterinaria;

-- para acceder y usar esa BD apenas creada
USE veterinaria;

-- creamos las tablas.
CREATE TABLE Dueños(
ID_Dueno INT PRIMARY KEY auto_increment,
Nombre VARCHAR(50) NOT NULL,
Telefono VARCHAR(20),
Direccion VARCHAR(50)
);
CREATE TABLE Mascotas(
ID_mascota INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50) NOT NULL,
Especie VARCHAR(20),
Fecha_Nacimiento DATE,
ID_dueno INT,
FOREIGN KEY (ID_dueno) REFERENCES Dueños(ID_Dueno)
);
CREATE TABLE Veterinarios(
ID_Veterinario INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50) NOT NULL,
Especialidad VARCHAR(50),
Telefono VARCHAR(20)
);
CREATE TABLE Citas(
ID_citas INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(20) NOT NULL,
Fecha DATE,
Motivo TEXT NOT NULL,
ID_mascota INT,
ID_veterinario INT,
FOREIGN KEY (ID_mascota) REFERENCES Mascotas(ID_mascota),
FOREIGN KEY (ID_veterinario) REFERENCES Veterinarios (ID_veterinario)
);

-- verificar las Tablas
SHOW TABLES;

-- para ver la estructura de cada tabla
DESCRIBE Citas;
DESCRIBE veterinarios;

-- Comando para Borrar la Tabla en este caso, Citas
DROP TABLE IF EXISTS Citas;

 /*
 Mas adelante tendremos ejemplos para insertar datos de prueba y/o comandos de lectura y manipulación
 */
