CREATE DATABASE escuela;
USE escuela;

CREATE TABLE Estudiantes(
ID_Estudiante INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(20) NOT NULL,
Fecha_Nacimiento DATE,
Contacto VARCHAR(20)
);

CREATE TABLE Cursos(
ID_Curso INT PRIMARY KEY AUTO_INCREMENT,
Nombre_Curso VARCHAR(20),
Profesor VARCHAR (20)
);

CREATE TABLE Inscripciones (
ID_Inscripcion INT PRIMARY KEY AUTO_INCREMENT,
Fecha_Inscripcion DATE,
ID_Estudiante INT,
ID_Curso INT,
FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
FOREIGN KEY (ID_Curso) REFERENCES Cursos (ID_Curso)
);

INSERT INTO Estudiantes(Nombre, Fecha_Nacimiento, Contacto) VALUES ('Juan Perez', '2003-05-21', '555-1234'),
('Ana Lopez', '2002-08-15', '555-5678'),
('Carlos Jimenez', '2004-11-03', '555-9876'),
('Mariana Torres', '2003-07-29', '555-2345'),
('Pedro Sanchez', '2002-01-19', '555-3456'),
('Luisa Rojas', '2004-03-12', '555-6789'),
('Esteban Ortiz', '2003-10-25', '555-4321'),
('Carmen Ramirez', '2002-12-07', '555-8765'),
('Sofia Herrera', '2004-06-13', '555-6543'),
('Hugo Gonzalez', '2003-04-17', '555-0987'),
('Diana Castillo', '2002-09-21', '555-7654'),
('Mateo Vega', '2004-08-30', '555-2109'),
('Andrea Fuentes', '2003-02-05', '555-3210'),
('Laura Gutierrez', '2002-05-16', '555-4321'),
('Pablo Nunez', '2004-10-02', '555-5432'),
('Silvia Delgado', '2003-03-18', '555-6543'),
('Alberto Mejia', '2002-11-24', '555-7654'),
('Gabriela Moreno', '2004-09-29', '555-8765'),
('Fernando Vargas', '2003-01-11', '555-9876'),
('Lucia Mendez', '2002-07-14', '555-0987');

INSERT INTO Cursos (Nombre_Curso, Profesor) VALUES
('Matemáticas', 'Prof. Gómez'),
('Historia', 'Prof. Santos'),
('Biología', 'Prof. Martinez'),
('Física', 'Prof. Lopez'),
('Química', 'Prof. Fernandez'),
('Literatura', 'Prof. Jimenez'),
('Geografía', 'Prof. Ramirez'),
('Inglés', 'Prof. Smith'),
('Educación Física', 'Prof. Torres'),
('Arte', 'Prof. Gonzalez'),
('Música', 'Prof. Salinas'),
('Filosofía', 'Prof. Ortega'),
('Tecnología', 'Prof. Rojas'),
('Informática', 'Prof. Vega'),
('Economía', 'Prof. Suarez'),
('Psicología', 'Prof. Morales'),
('Ciencias Sociales', 'Prof. Castro'),
('Cálculo', 'Prof. Alvarez'),
('Física Avanzada', 'Prof. Ortega'),
('Ecología', 'Prof. Perez');

INSERT INTO Inscripciones (Fecha_Inscripcion, ID_Estudiante, ID_Curso) VALUES
('2024-01-15', 1, 1),
('2024-02-12', 1, 2),
('2024-03-14', 2, 3),
('2024-04-16', 2, 4),
('2024-05-18', 3, 5),
('2024-06-20', 3, 6),
('2024-07-22', 4, 7),
('2024-08-24', 4, 8),
('2024-09-26', 5, 9),
('2024-10-28', 5, 10),
('2024-11-30', 6, 11),
('2024-12-02', 6, 12),
('2025-01-04', 7, 13),
('2025-02-06', 7, 14),
('2025-03-08', 8, 15),
('2025-04-10', 8, 16),
('2025-05-12', 9, 17),
('2025-06-14', 9, 18),
('2025-07-16', 10, 19),
('2025-08-18', 10, 20),
('2025-09-20', 11, 1),
('2025-10-22', 11, 2),
('2025-11-24', 12, 3),
('2025-12-26', 12, 4),
('2026-01-28', 13, 5),
('2026-02-29', 13, 6),
('2026-03-30', 14, 7),
('2026-04-02', 14, 8),
('2026-05-04', 15, 9),
('2026-06-06', 15, 10),
('2026-07-08', 16, 11),
('2026-08-10', 16, 12),
('2026-09-12', 17, 13),
('2026-10-14', 17, 14),
('2026-11-16', 18, 15),
('2026-12-18', 18, 16),
('2027-01-20', 19, 17),
('2027-02-22', 19, 18),
('2027-03-24', 20, 19),
('2027-04-26', 20, 20);



