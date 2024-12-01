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

INSERT INTO Empleados (Nombre, Tarifa_Hora) VALUES
('Ana Gómez', 50),
('Luis Martínez', 60),
('María Sánchez', 55),
('Carlos López', 45),
('Sofía Fernández', 50),
('Diego Torres', 55),
('Lucía González', 52),
('Pedro Ramírez', 48),
('Elena Vega', 60),
('Javier Muñoz', 53),
('Valentina Díaz', 47),
('Fernando Castillo', 58),
('Camila Reyes', 50);

INSERT INTO Proyectos(Nombre_Proyecto) VALUES
( 'Alpha'),
( 'Beta'),
( 'Gamma'),
('Delta'),
('Epsilon'),
('Zeta'),
('Eta'),
('Theta'),
('Iota'),
('Kappa'),
('Lambda'),
('Omega'),
('Zulu');

INSERT INTO Horas_Trabajadas(ID_Empleado,ID_Proyecto,Horas_trabajadas ) VALUES
(1, 1, 5),
(1, 1, 3),
(2, 3, 8),
(3, 2, 7),
(2, 3, 4),
(4, 2, 4),
(4, 5, 6),
(5, 3, 7),
(5, 6, 5),
(6, 1, 8),
(6, 7, 3),
(7, 4, 9),
(7, 8, 2),
(8, 5, 5),
(8, 9, 4),
(9, 6, 6),
(9, 10, 7),
(10, 7, 5),
(10, 11, 6),
(11, 8, 8),
(11, 12, 4),
(12, 9, 7),
(12, 13, 3),
(13, 10, 5),
(13, 1, 6);