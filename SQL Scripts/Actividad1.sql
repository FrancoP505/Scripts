CREATE DATABASE actividad1;

-- Diseña una base de datos con dos tablas interconectadas: una tabla de 'Estudiantes' y otra de 'Cursos'.
-- Llena la tabla de 'Estudiantes' con campos como 'ID', 'Nombre', 'Apellido', 'Edad', 'Correo electrónico' 
-- y ID del curso, mientras que la tabla de 'Cursos' puede incluir campos como 'ID', 'Nombre del curso' y 'Profesor'.
-- ¡Llena ambas tablas con datos auténticos y descubre cómo las relaciones entre estudiantes y cursos se vuelven evidentes en tu base de datos!

USE actividad1;

CREATE TABLE cursos (
id_curso INT(6) AUTO_INCREMENT,
nombre_curso VARCHAR(50) NOT NULL,
profesor VARCHAR(120),
PRIMARY KEY(id_curso)
);

CREATE TABLE estudiantes (
id INT(6) AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
edad INT(2) NOT NULL,
correo VARCHAR(100) NOT NULL,
id_curso INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO cursos (id_curso, nombre_curso, profesor) VALUES
(1, 'Matemáticas', 'Prof. Ana García'),
(2, 'Historia', 'Prof. Juan Pérez'),
(3, 'Biología', 'Prof. Marta Rodríguez');

INSERT INTO estudiantes (id, nombre, apellido, edad, correo, id_curso) VALUES
(1, 'Carlos', 'López', 20, 'carlos.lopez@example.com', 1),
(2, 'María', 'González', 22, 'maria.gonzalez@example.com', 2),
(3, 'José', 'Martínez', 21, 'jose.martinez@example.com', 3),
(4, 'Laura', 'Sánchez', 19, 'laura.sanchez@example.com', 1),
(5, 'Fernando', 'Díaz', 23, 'fernando.diaz@example.com', 2);


SELECT C.nombre_curso, E.nombre, E.apellido
FROM estudiantes E
JOIN cursos C ON E.id_curso = C.id_curso;
