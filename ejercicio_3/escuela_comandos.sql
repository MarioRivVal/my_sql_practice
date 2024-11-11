USE escuela;
SELECT * FROM Estudiantes;

SELECT 
    Inscripciones.ID_Inscripcion,
    Estudiantes.Nombre AS Estudiante,
    Cursos.Nombre_Curso AS Curso,
    Inscripciones.Fecha_Inscripcion
FROM Inscripciones
JOIN Estudiantes ON Inscripciones.ID_Estudiante = Estudiantes.ID_Estudiante
JOIN Cursos ON Inscripciones.ID_Curso = Cursos.ID_Curso;

UPDATE Estudiantes
SET Nombre = 'Juan Pérez Gómez'
WHERE ID_Estudiante = 1;

DELETE FROM Inscripciones
WHERE ID_Inscripcion = 3;


