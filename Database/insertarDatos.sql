use citrix;


INSERT INTO citrix.carrera (nombre_carrera, facultad, duracion) VALUES
('Ingeniería Mecatrónica', 'Facultad de Ingeniería', 5),
('Ingeniería en Sistemas', 'Facultad de Ingeniería', 5);

#----------------------------------------------------------------------------------

INSERT INTO citrix.alumnos (id_alumno, carrera_id_carrera, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, direccion, correo_personal, correo_institucional, estado_matricula) VALUES
(1, 1, 'Juan', 'Carlos', 'Pérez', 'García', 'Calle 1', 'juan.perez@mail.com', 'juan.perez@institucion.edu', 'paga'),
(2, 1, 'Ana', 'María', 'López', 'Hernández', 'Calle 2', 'ana.lopez@mail.com', 'ana.lopez@institucion.edu', 'paga'),
(3, 1, 'Pedro', 'Luis', 'Martínez', 'Fernández', 'Calle 3', 'pedro.martinez@mail.com', 'pedro.martinez@institucion.edu', 'pendiente'),
(4, 1, 'Lucía', 'Fernanda', 'González', 'Ruiz', 'Calle 4', 'lucia.gonzalez@mail.com', 'lucia.gonzalez@institucion.edu', 'paga'),
(5, 1, 'José', 'Antonio', 'Ramírez', 'Torres', 'Calle 5', 'jose.ramirez@mail.com', 'jose.ramirez@institucion.edu', 'paga'),
(6, 1, 'María', 'Elena', 'Díaz', 'Salazar', 'Calle 6', 'maria.diaz@mail.com', 'maria.diaz@institucion.edu', 'pendiente'),
(7, 2, 'Carlos', 'Andrés', 'Jiménez', 'Vargas', 'Calle 7', 'carlos.jimenez@mail.com', 'carlos.jimenez@institucion.edu', 'paga'),
(8, 2, 'Sofía', 'Isabel', 'Moreno', 'Pérez', 'Calle 8', 'sofia.moreno@mail.com', 'sofia.moreno@institucion.edu', 'paga'),
(9, 2, 'Fernando', 'David', 'Castillo', 'Mendoza', 'Calle 9', 'fernando.castillo@mail.com', 'fernando.castillo@institucion.edu', 'pendiente'),
(10, 2, 'Valentina', 'Sofia', 'Cruz', 'Bermúdez', 'Calle 10', 'valentina.cruz@mail.com', 'valentina.cruz@institucion.edu', 'paga'),
(11, 2, 'Mateo', 'Alejandro', 'Ortega', 'Ríos', 'Calle 11', 'mateo.ortega@mail.com', 'mateo.ortega@institucion.edu', 'paga'),
(12, 2, 'Diana', 'Carolina', 'Salas', 'Gutiérrez', 'Calle 12', 'diana.salas@mail.com', 'diana.salas@institucion.edu', 'pendiente'),

(13, 1, 'Julián', 'Fernando', 'Pérez','Bermúdez', 'Calle 13', 'julian.perez@mail.com', 'julian.perez@institucion.edu', 'paga'),
(14, 1, 'Claudia', 'Beatriz', 'González','García', 'Calle 14', 'claudia.gonzalez@mail.com', 'claudia.gonzalez@institucion.edu', 'paga'),
(15, 2, 'Diego', 'Andrés', 'López','García', 'Calle 15', 'diego.lopez@mail.com', 'diego.lopez@institucion.edu', 'paga'),
(16, 2, 'Emilia', 'Sofía', 'Hernández','Torres', 'Calle 16', 'emilia.hernandez@mail.com', 'emilia.hernandez@institucion.edu', 'pendiente'),
(17, 1, 'Raúl', 'Esteban', 'Salinas','García', 'Calle 17', 'raul.salinas@mail.com', 'raul.salinas@institucion.edu', 'paga'),
(18, 1, 'Patricia', 'Marta', 'Cáceres','García', 'Calle 18', 'patricia.caceres@mail.com', 'patricia.caceres@institucion.edu', 'pendiente'),
(19, 2, 'Santiago', 'Felipe', 'Alvarez','Torres', 'Calle 19', 'santiago.alvarez@mail.com', 'santiago.alvarez@institucion.edu', 'paga'),
(20, 2, 'Natalia', 'Gabriela', 'Vásquez','García', 'Calle 20', 'natalia.vasquez@mail.com', 'natalia.vasquez@institucion.edu', 'paga');


#----------------------------------------------
INSERT INTO citrix.materias (nombre_materia, creditos, tipo_materia, requisito_materia) VALUES
('Matemáticas I', '3', 'especifica', NULL),
('Física I', '4', 'especifica', NULL),
('Programación I', '3', 'especifica', NULL),
('Química I', '3', 'especifica', NULL),
('Ética Profesional', '2', 'complementaria', NULL),
('Matemáticas II', '3', 'especifica', 'Matemáticas I'),
('Física II', '4', 'especifica', 'Física I'),
('Programación II', '3', 'especifica', 'Programación I'),
('Redes de Computadores', '3', 'especifica', NULL),
('Sistemas Operativos', '4', 'especifica', NULL),
('Base de Datos', '3', 'especifica', NULL),
('Algoritmos', '3', 'especifica', 'Programación I'),
('Diseño de Software', '3', 'especifica', 'Programación II'),
('Mecánica de Fluidos', '3', 'especifica', 'Física I'),
('Electrónica Básica', '3', 'especifica', NULL),
('Administración de Proyectos', '2', 'complementaria', NULL),
('Inteligencia Artificial', '3', 'especifica', 'Programación II'),
('Sistemas Embebidos', '3', 'especifica', 'Electrónica Básica'),
('Programación Móvil', '3', 'especifica', 'Programación II'),
('Desarrollo Web', '3', 'especifica', 'Programación I');


#-------------------------------------------------

INSERT INTO citrix.profesores (id_profesor, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, correo_personal, correo_institucional, estudio, direccion) VALUES
(1, 'Carlos', 'Alberto', 'Gutiérrez', 'Sánchez', 'carlos.gutierrez@mail.com', 'carlos.gutierrez@institucion.edu', 'Ing. en Sistemas', 'Calle 21'),
(2, 'María', 'Elena', 'Rojas', 'Martínez', 'maria.rojas@mail.com', 'maria.rojas@institucion.edu', 'MSc. en Física', 'Calle 22'),
(3, 'José', 'Luis', 'Hernández', 'Cruz', 'jose.hernandez@mail.com', 'jose.hernandez@institucion.edu', 'Ing. Mecatrónica', 'Calle 23'),
(4, 'Ana', 'María', 'Lopez', 'Ramirez', 'ana.lopez@mail.com', 'ana.lopez@institucion.edu', 'MSc. en Química', 'Calle 24'),
(5, 'Ricardo', 'Alejandro', 'Vásquez', 'Pérez', 'ricardo.vasquez@mail.com', 'ricardo.vasquez@institucion.edu', 'Ing. de Software', 'Calle 25'),
(6, 'Claudia', 'Fernanda', 'González', 'Martínez', 'claudia.gonzalez@mail.com', 'claudia.gonzalez@institucion.edu', 'PhD. en Matemáticas', 'Calle 26'),
(7, 'Fernando', 'David', 'Serrano', 'González', 'fernando.serrano@mail.com', 'fernando.serrano@institucion.edu', 'Ing. Electrónica', 'Calle 27'),
(8, 'Laura', 'Isabel', 'Alvarez', 'López', 'laura.alvarez@mail.com', 'laura.alvarez@institucion.edu', 'MSc. en Sistemas', 'Calle 28'),
(9, 'Andrés', 'Felipe', 'Moreno', 'Salas', 'andres.moreno@mail.com', 'andres.moreno@institucion.edu', 'Ing. Industrial', 'Calle 29'),
(10, 'Patricia', 'Marta', 'Cáceres', 'Gutiérrez', 'patricia.caceres@mail.com', 'patricia.caceres@institucion.edu', 'MSc. en Informática', 'Calle 30'),
(11, 'Gabriel', 'Antonio', 'Ortega', 'Martínez', 'gabriel.ortega@mail.com', 'gabriel.ortega@institucion.edu', 'Ing. en Telecomunicaciones', 'Calle 31'),
(12, 'Natalia', 'Sofia', 'Díaz', 'Salazar', 'natalia.diaz@mail.com', 'natalia.diaz@institucion.edu', 'MSc. en Electrónica', 'Calle 32'),
(13, 'Julián', 'Esteban', 'González', 'Pérez', 'julian.gonzalez@mail.com', 'julian.gonzalez@institucion.edu', 'Ing. en Mecatrónica', 'Calle 33'),
(14, 'Santiago', 'Felipe', 'González', 'Salinas', 'santiago.gonzalez@mail.com', 'santiago.gonzalez@institucion.edu', 'MSc. en Computación', 'Calle 34'),
(15, 'Diana', 'Carolina', 'Moreno', 'Pérez', 'diana.moreno@mail.com', 'diana.moreno@institucion.edu', 'Ing. en Sistemas', 'Calle 35'),
(16, 'Mateo', 'Alejandro', 'López', 'Ríos', 'mateo.lopez@mail.com', 'mateo.lopez@institucion.edu', 'PhD. en Física', 'Calle 36'),
(17, 'Emilia', 'Sofía', 'Serrano', 'Cruz', 'emilia.serrano@mail.com', 'emilia.serrano@institucion.edu', 'MSc. en Ingeniería', 'Calle 37'),
(18, 'Ricardo', 'Andrés', 'Rojas', 'Cáceres', 'ricardo.rojas@mail.com', 'ricardo.rojas@institucion.edu', 'Ing. en Tecnología', 'Calle 38'),
(19, 'Valentina', 'Elena', 'Moreno', 'Salas', 'valentina.moreno@mail.com', 'valentina.moreno@institucion.edu', 'MSc. en Sistemas', 'Calle 39'),
(20, 'Claudio', 'Antonio', 'Alvarez', 'Hernández', 'claudio.alvarez@mail.com', 'claudio.alvarez@institucion.edu', 'Ing. en Redes', 'Calle 40');

#-------------------------------------------------------------------
INSERT INTO citrix.plan_estudio (carrera_id_carrera, materias_id_materias, recomendacion_semestre) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 2),
(1, 6, 2),
(1, 7, 2),
(1, 8, 3),
(1, 9, 3),
(1, 10, 3),
(1, 11, 4),
(1, 12, 4),
(1, 13, 4),
(1, 14, 5),
(1, 15, 5),
(1, 16, 5),
(1, 17, 5),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1);

#----------------------------------------
INSERT INTO citrix.cursos (profesores_id_profesor, materias_id_materia, nombre_curso, jornada) VALUES
(1, 1, 'Curso de Matemáticas I', 'diurna'),
(2, 2, 'Curso de Física I', 'nocturna'),
(3, 3, 'Curso de Programación I', 'diurna'),
(4, 4, 'Curso de Química I', 'nocturna'),
(5, 5, 'Curso de Ética Profesional', 'diurna'),
(6, 6, 'Curso de Matemáticas II', 'nocturna'),
(7, 7, 'Curso de Física II', 'diurna'),
(8, 8, 'Curso de Redes de Computadores', 'nocturna'),
(9, 9, 'Curso de Sistemas Operativos', 'diurna'),
(10, 10, 'Curso de Base de Datos', 'nocturna'),
(11, 11, 'Curso de Algoritmos', 'diurna'),
(12, 12, 'Curso de Diseño de Software', 'nocturna'),
(13, 13, 'Curso de Mecánica de Fluidos', 'diurna'),
(14, 14, 'Curso de Electrónica Básica', 'nocturna'),
(15, 15, 'Curso de Administración de Proyectos', 'diurna'),
(16, 16, 'Curso de Inteligencia Artificial', 'nocturna'),
(17, 17, 'Curso de Sistemas Embebidos', 'diurna'),
(18, 18, 'Curso de Programación Móvil', 'nocturna'),
(19, 19, 'Curso de Desarrollo Web', 'diurna'),
(20, 20, 'Curso de Desarrollo de Aplicaciones', 'nocturna');


#-------------------------------------------------------------------
INSERT INTO citrix.salones (sede, ala, piso, numero_salon) VALUES
('Sede Principal', 'A', '1', '101'),
('Sede Principal', 'A', '1', '102'),
('Sede Principal', 'B', '2', '201'),
('Sede Principal', 'B', '2', '202'),
('Sede Principal', 'C', '3', '301'),
('Sede Principal', 'C', '3', '302'),
('Sede Principal', 'D', '4', '401'),
('Sede Principal', 'D', '4', '402'),
('Sede Principal', 'E', '5', '501'),
('Sede Principal', 'E', '5', '502'),
('Sede Secundaria', 'A', '1', '103'),
('Sede Secundaria', 'A', '1', '104'),
('Sede Secundaria', 'B', '2', '203'),
('Sede Secundaria', 'B', '2', '204'),
('Sede Secundaria', 'C', '3', '303'),
('Sede Secundaria', 'C', '3', '304'),
('Sede Secundaria', 'D', '4', '403'),
('Sede Secundaria', 'D', '4', '404'),
('Sede Secundaria', 'E', '5', '503'),
('Sede Secundaria', 'E', '5', '504');

#---------------------------------------------------------

INSERT INTO citrix.horarios (salones_id_salon, cursos_id_cursos, dia, hora_comienzo, hora_finalizacion, cantidad_alumnos) VALUES
(1, 1, 'Lunes', '08:00', '10:00', 30),
(2, 2, 'Martes', '10:00', '12:00', 25),
(3, 3, 'Miércoles', '08:00', '10:00', 20),
(4, 4, 'Jueves', '10:00', '12:00', 22),
(5, 5, 'Viernes', '08:00', '10:00', 28),
(6, 6, 'Lunes', '10:00', '12:00', 18),
(7, 7, 'Martes', '08:00', '10:00', 30),
(8, 8, 'Miércoles', '10:00', '12:00', 25),
(9, 9, 'Jueves', '08:00', '10:00', 20),
(10, 10, 'Viernes', '10:00', '12:00', 22),
(1, 11, 'Lunes', '08:00', '10:00', 15),
(2, 12, 'Martes', '10:00', '12:00', 25),
(3, 13, 'Miércoles', '08:00', '10:00', 18),
(4, 14, 'Jueves', '10:00', '12:00', 28),
(5, 15, 'Viernes', '08:00', '10:00', 30),
(6, 16, 'Lunes', '10:00', '12:00', 20),
(7, 17, 'Martes', '08:00', '10:00', 25),
(8, 18, 'Miércoles', '10:00', '12:00', 20),
(9, 19, 'Jueves', '08:00', '10:00', 30),
(10, 20, 'Viernes', '10:00', '12:00', 22);

#-----------------------------------------

INSERT INTO citrix.inscripcion (alumnos_id_alumno, horarios_id_horario) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 3),
(3, 5),
(3, 6),
(4, 1),
(4, 7),
(4, 8),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 5),
(6, 7),
(7, 3),
(7, 8),
(7, 9),
(8, 1),
(8, 2),
(8, 5),
(9, 3),
(9, 4),
(9, 6),
(10, 1),
(10, 2),
(10, 7),
(11, 3),
(11, 4),
(11, 8),
(12, 1),
(12, 5),
(12, 6),
(13, 2),
(13, 3),
(13, 9),
(14, 1),
(14, 7);
#----------------------------------------------
INSERT INTO citrix.historial_academico (alumnos_id_alumno, materia_id_materia, profesores_id_profesor, fecha_comienzo, fecha_finalizacion, semestre, calificacion_1, calificacion_2, calificacion_3, Nota_final, estado) VALUES
(1, 1, 1, '2023-01-15', '2023-05-15', 1, 4.0, 4.5, 4.3, 4.27, 'aprobado'),
(1, 2, 2, '2023-01-15', '2023-05-15', 1, 3.0, 3.5, 3.2, 3.23, 'aprobado'),
(2, 1, 1, '2023-01-15', '2023-05-15', 1, 2.5, 3.0, 2.8, 2.77, 'reprobado'),
(2, 3, 3, '2023-01-15', '2023-05-15', 1, 4.6, 4.8, 4.7, 4.67, 'aprobado'),
(3, 2, 2, '2023-01-15', '2023-05-15', 1, 4.0, 4.2, 4.1, 4.10, 'aprobado'),
(3, 4, 4, '2023-01-15', '2023-05-15', 1, 3.8, 4.0, 3.9, 3.90, 'aprobado'),
(4, 1, 1, '2023-01-15', '2023-05-15', 1, 4.9, 5.0, 4.95, 4.95, 'aprobado'),
(4, 3, 3, '2023-01-15', '2023-05-15', 1, 3.1, 3.5, 3.3, 3.30, 'aprobado'),
(5, 2, 2, '2023-01-15', '2023-05-15', 1, 3.5, 3.7, 3.6, 3.60, 'aprobado'),
(5, 4, 4, '2023-01-15', '2023-05-15', 1, 4.8, 4.9, 4.85, 4.85, 'aprobado'),
(6, 3, 3, '2023-01-15', '2023-05-15', 1, 4.0, 4.4, 4.2, 4.20, 'aprobado'),
(6, 1, 1, '2023-01-15', '2023-05-15', 1, 4.5, 4.7, 4.6, 4.60, 'aprobado'),
(7, 2, 2, '2023-01-15', '2023-05-15', 1, 2.8, 3.0, 2.9, 2.90, 'reprobado'),
(8, 3, 3, '2023-01-15', '2023-05-15', 1, 3.4, 3.8, 3.6, 3.60, 'aprobado'),
(9, 4, 4, '2023-01-15', '2023-05-15', 1, 4.9, 4.7, 4.8, 4.80, 'aprobado'),
(10, 1, 1, '2023-01-15', '2023-05-15', 1, 3.7, 4.1, 3.9, 3.90, 'aprobado'),
(10, 2, 2, '2023-01-15', '2023-05-15', 1, 3.0, 3.2, 3.1, 3.10, 'aprobado'),
(11, 3, 3, '2023-01-15', '2023-05-15', 1, 2.2, 2.5, 2.4, 2.40, 'reprobado'),
(12, 4, 4, '2023-01-15', '2023-05-15', 1, 4.9, 5.0, 4.95, 4.95, 'aprobado'),
(13, 1, 1, '2023-01-15', '2023-05-15', 1, 4.3, 4.6, 4.5, 4.47, 'aprobado'),
(14, 2, 2, '2023-01-15', '2023-05-15', 1, 3.6, 3.8, 3.7, 3.70, 'aprobado');



#--------------------------------------------------------------------------------------
INSERT INTO citrix.login (id_usuario, correo_institucional, contrasena, rol, estado_perfil) VALUES
(1, 'jose.morales@institucion.edu', 'password123', 'alumno', 'activo'),
(2, 'andres.moreno@institucion.edu', 'password123', 'profesor', 'activo'),
(3, 'patricia.caceres@institucion.edu', 'password123', 'administrador', 'activo'),
(4, 'gabriel.ortega@institucion.edu', 'password123', 'administrador_secundario', 'activo'),
(5, 'natalia.diaz@institucion.edu', 'password123', 'administrador_principal', 'activo'),
(6, 'julian.gonzalez@institucion.edu', 'password123', 'alumno', 'activo'),
(7, 'santiago.gonzalez@institucion.edu', 'password123', 'profesor', 'activo'),
(8, 'diana.moreno@institucion.edu', 'password123', 'administrador', 'activo'),
(9, 'mateo.lopez@institucion.edu', 'password123', 'administrador_secundario', 'activo'),
(10, 'emilia.serrano@institucion.edu', 'password123', 'administrador_principal', 'activo'),
(11, 'ricardo.rojas@institucion.edu', 'password123', 'alumno', 'activo'),
(12, 'valentina.moreno@institucion.edu', 'password123', 'profesor', 'activo'),
(13, 'claudio.alvarez@institucion.edu', 'password123', 'administrador', 'activo'),
(14, 'jose.morales@institucion.edu', 'password123', 'alumno', 'activo'),
(15, 'andres.moreno@institucion.edu', 'password123', 'profesor', 'activo'),
(16, 'patricia.caceres@institucion.edu', 'password123', 'administrador', 'activo'),
(17, 'gabriel.ortega@institucion.edu', 'password123', 'administrador_secundario', 'activo'),
(18, 'natalia.diaz@institucion.edu', 'password123', 'administrador_principal', 'activo'),
(19, 'julian.gonzalez@institucion.edu', 'password123', 'alumno', 'activo'),
(20, 'santiago.gonzalez@institucion.edu', 'password123', 'profesor', 'activo');


#-------------------------------------------
INSERT INTO citrix.empleados (id_empleados, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, direccion, correo_personal, correo_institucional, puesto) VALUES
(1, 'Fernando', 'Alejandro', 'Martínez', 'Cruz', 'Calle 1', 'fernando.martinez@mail.com', 'fernando.martinez@institucion.edu', 'Coordinador Académico'),
(2, 'Claudia', 'Rocío', 'Rojas', 'Pérez', 'Calle 2', 'claudia.rojas@mail.com', 'claudia.rojas@institucion.edu', 'Secretaria'),
(3, 'Sergio', 'Manuel', 'Vargas', 'Mendoza', 'Calle 3', 'sergio.vargas@mail.com', 'sergio.vargas@institucion.edu', 'Auxiliar'),
(4, 'Lucía', 'Fernanda', 'Hernández', 'Salas', 'Calle 4', 'lucia.hernandez@mail.com', 'lucia.hernandez@institucion.edu', 'Asistente'),
(5, 'Andrés', 'Felipe', 'Moreno', 'Cruz', 'Calle 5', 'andres.moreno@mail.com', 'andres.moreno@institucion.edu', 'Analista'),
(6, 'Patricia', 'Marta', 'Cáceres', 'Gutiérrez', 'Calle 6', 'patricia.caceres@mail.com', 'patricia.caceres@institucion.edu', 'Jefe de Proyectos'),
(7, 'Gabriel', 'Antonio', 'Ortega', 'Martínez', 'Calle 7', 'gabriel.ortega@mail.com', 'gabriel.ortega@institucion.edu', 'Director'),
(8, 'Natalia', 'Sofia', 'Díaz', 'Salazar', 'Calle 8', 'natalia.diaz@mail.com', 'natalia.diaz@institucion.edu', 'Contadora'),
(9, 'Julián', 'Esteban', 'González', 'Pérez', 'Calle 9', 'julian.gonzalez@mail.com', 'julian.gonzalez@institucion.edu', 'Desarrollador'),
(10, 'Santiago', 'Felipe', 'González', 'Salinas', 'Calle 10', 'santiago.gonzalez@mail.com', 'santiago.gonzalez@institucion.edu', 'Investigador'),
(11, 'Diana', 'Carolina', 'Moreno', 'Pérez', 'Calle 11', 'diana.moreno@mail.com', 'diana.moreno@institucion.edu', 'Docente'),
(12, 'Mateo', 'Alejandro', 'López', 'Ríos', 'Calle 12', 'mateo.lopez@mail.com', 'mateo.lopez@institucion.edu', 'Consultor'),
(13, 'Emilia', 'Sofía', 'Serrano', 'Cruz', 'Calle 13', 'emilia.serrano@mail.com', 'emilia.serrano@institucion.edu', 'Investigador'),
(14, 'Ricardo', 'Andrés', 'Rojas', 'Cáceres', 'Calle 14', 'ricardo.rojas@mail.com', 'ricardo.rojas@institucion.edu', 'Analista'),
(15, 'Valentina', 'Elena', 'Moreno', 'Salas', 'Calle 15', 'valentina.moreno@mail.com', 'valentina.moreno@institucion.edu', 'Coordinador Académico'),
(16, 'Claudio', 'Antonio', 'Alvarez', 'Hernández', 'Calle 16', 'claudio.alvarez@mail.com', 'claudio.alvarez@institucion.edu', 'Docente'),
(17, 'Fernando', 'Alejandro', 'Martínez', 'Cruz', 'Calle 17', 'fernando.martinez@mail.com', 'fernando.martinez@institucion.edu', 'Asistente'),
(18, 'Claudia', 'Rocío', 'Rojas', 'Pérez', 'Calle 18', 'claudia.rojas@mail.com', 'claudia.rojas@institucion.edu', 'Secretaria'),
(19, 'Sergio', 'Manuel', 'Vargas', 'Mendoza', 'Calle 19', 'sergio.vargas@mail.com', 'sergio.vargas@institucion.edu', 'Auxiliar'),
(20, 'Lucía', 'Fernanda', 'Hernández', 'Salas', 'Calle 20', 'lucia.hernandez@mail.com', 'lucia.hernandez@institucion.edu', 'Analista');