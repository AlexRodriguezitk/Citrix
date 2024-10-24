#consulta #1
#consulta para mostrar los horaros o cursos disponibles  que se pueden inscribir segun la carrera y el semestre
SELECT 
    plan_estudio.carrera_id_carrera as carrera, 
    plan_estudio.recomendacion_semestre, 
    historial_academico.alumnos_id_alumno AS alumno,
    materias.id_materia,
    materias.nombre_materia,
    horarios.id_horario,
    horarios.dia,
    horarios.hora_comienzo,
    horarios.hora_finalizacion,
    salones.sede,
    salones.ala,
    salones.numero_salon,
    profesores.id_profesor,
    profesores.primer_nombre as nombrerofesor,
    profesores.segundo_apellido as apellidoProfesor,
    plan_estudio.recomendacion_semestre
FROM 
    plan_estudio 
LEFT JOIN 
    historial_academico ON plan_estudio.materias_id_materias = historial_academico.materia_id_materia
    AND historial_academico.alumnos_id_alumno = 2  # ??ID DEL ALUMNO 
INNER JOIN 
    cursos ON cursos.materias_id_materia = plan_estudio.materias_id_materias
INNER JOIN
    materias ON materias.id_materia = cursos.materias_id_materia
INNER JOIN
    horarios ON cursos.id_curso = horarios.cursos_id_cursos
INNER JOIN 
	salones on horarios.salones_id_salon = salones.id_salon
INNER JOIN 
	profesores on  cursos.profesores_id_profesor  = profesores.id_profesor
WHERE 
    plan_estudio.carrera_id_carrera = 1  # ?? ID DE LA CARRERA del estudiante 
    AND (historial_academico.estado IS NULL OR historial_academico.estado <> "aprobado")  -- Cursos no aprobados
ORDER BY 
    plan_estudio.recomendacion_semestre ASC;
    
    
    
    
    
#SCRIP #2------------------------------------------------------------------------------------------------------

#Despues de mostrar los cursos el boton de ingribir debe de ejecur los siguientes 

INSERT INTO inscripcion(alumnos_id_alumno,horarios_id_horario ) VALUES ( 6, 2 );

SELECT alumnos;

INSERT INTO citrix.historial_academico (alumnos_id_alumno, materia_id_materia, profesores_id_profesor, fecha_comienzo, fecha_finalizacion, semestre,  estado) VALUES
(id_alumno?: , id_materia?: , id_profesor?:, 'fecha_comienzo'?:, 'fecha_finalizacion':?, semestre:?, 'activo') 


