-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema citrix
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema citrix
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `citrix` DEFAULT CHARACTER SET utf8 ;
USE `citrix` ;

-- -----------------------------------------------------
-- Table `citrix`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`carrera` (
  `id_carrera` INT NOT NULL AUTO_INCREMENT,
  `nombre_carrera` VARCHAR(45) NOT NULL,
  `facultad` VARCHAR(45) NOT NULL,
  `duracion` INT NOT NULL,
  PRIMARY KEY (`id_carrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`alumnos` (
  `id_alumno` INT NOT NULL,
  `carrera_id_carrera` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NULL,
  `primer_apellido` VARCHAR(45) NOT NULL,
  `segundo_apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `correo_personal` VARCHAR(45) NOT NULL,
  `correo_institucional` VARCHAR(45) NOT NULL,
  `estado_matricula` ENUM('paga', 'pendiente') NOT NULL,
  PRIMARY KEY (`id_alumno`),
  INDEX `carrera_id_carrera_idx` (`carrera_id_carrera` ASC) VISIBLE,
  CONSTRAINT `fk_carrera_alumno_id_carrera`
    FOREIGN KEY (`carrera_id_carrera`)
    REFERENCES `citrix`.`carrera` (`id_carrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`materias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`materias` (
  `id_materia` INT NOT NULL AUTO_INCREMENT,
  `nombre_materia` VARCHAR(45) NOT NULL,
  `creditos` VARCHAR(45) NOT NULL,
  `tipo_materia` ENUM('especifica', 'complementaria') NOT NULL,
  `requisito_materia` VARCHAR(45) NULL,
  PRIMARY KEY (`id_materia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`plan_estudio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`plan_estudio` (
  `id_plan_estudio` INT NOT NULL AUTO_INCREMENT,
  `carrera_id_carrera` INT NOT NULL,
  `materias_id_materias` INT NOT NULL,
  `recomendacion_semestre` INT NOT NULL,
  PRIMARY KEY (`id_plan_estudio`),
  INDEX `carrera_id_carrera_idx` (`carrera_id_carrera` ASC) VISIBLE,
  INDEX `id_materias_idx` (`materias_id_materias` ASC) VISIBLE,
  CONSTRAINT `fk_carrera_plan_id_carrera`
    FOREIGN KEY (`carrera_id_carrera`)
    REFERENCES `citrix`.`carrera` (`id_carrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materias_plan_id_materias`
    FOREIGN KEY (`materias_id_materias`)
    REFERENCES `citrix`.`materias` (`id_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`profesores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`profesores` (
  `id_profesor` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NULL,
  `primer_apellido` VARCHAR(45) NOT NULL,
  `segundo_apellido` VARCHAR(45) NOT NULL,
  `correo_personal` VARCHAR(45) NOT NULL,
  `correo_institucional` VARCHAR(45) NOT NULL,
  `estudio` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_profesor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`historial_academico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`historial_academico` (
  `id_historial_academico` INT NOT NULL AUTO_INCREMENT,
  `alumnos_id_alumno` INT NOT NULL,
  `materia_id_materia` INT NOT NULL,
  `profesores_id_profesor` INT NOT NULL,
  `fecha_comienzo` DATE NOT NULL,
  `fecha_finalizacion` DATE NULL,
  `semestre` INT NOT NULL,
  `calificacion_1` FLOAT NULL,
  `calificacion_2` FLOAT NULL,
  `calificacion_3` FLOAT NULL,
  `Nota_final` FLOAT NULL,
  `estado` ENUM("aprobado", "reprobado", "aplazada", "activo") NULL,
  PRIMARY KEY (`id_historial_academico`),
  INDEX `alumno_id_alumno_idx` (`alumnos_id_alumno` ASC) VISIBLE,
  INDEX `materia_id_materia_idx` (`materia_id_materia` ASC) VISIBLE,
  INDEX `profesores_id_profesor_idx` (`profesores_id_profesor` ASC) VISIBLE,
  CONSTRAINT `fk_alumno_historial_id_alumno`
    FOREIGN KEY (`alumnos_id_alumno`)
    REFERENCES `citrix`.`alumnos` (`id_alumno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia_historial_id_materia`
    FOREIGN KEY (`materia_id_materia`)
    REFERENCES `citrix`.`materias` (`id_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesores_historial_id_profesor`
    FOREIGN KEY (`profesores_id_profesor`)
    REFERENCES `citrix`.`profesores` (`id_profesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`salones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`salones` (
  `id_salon` INT NOT NULL AUTO_INCREMENT,
  `sede` VARCHAR(45) NOT NULL,
  `ala` VARCHAR(45) NOT NULL,
  `piso` VARCHAR(45) NOT NULL,
  `numero_salon` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_salon`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`cursos` (
  `id_curso` INT NOT NULL AUTO_INCREMENT,
  `profesores_id_profesor` INT NOT NULL,
  `materias_id_materia` INT NOT NULL,
  `nombre_curso` VARCHAR(45) NOT NULL,
  `jornada` ENUM('diurna', 'nocturna') NOT NULL,
  PRIMARY KEY (`id_curso`),
  INDEX `profesores_id_profesor_idx` (`profesores_id_profesor` ASC) VISIBLE,
  INDEX `materias_id_materia_idx` (`materias_id_materia` ASC) VISIBLE,
  CONSTRAINT `fk_profesores_cursos_id_profesor`
    FOREIGN KEY (`profesores_id_profesor`)
    REFERENCES `citrix`.`profesores` (`id_profesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materias_cursos_id_materia`
    FOREIGN KEY (`materias_id_materia`)
    REFERENCES `citrix`.`materias` (`id_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`horarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`horarios` (
  `id_horario` INT NOT NULL AUTO_INCREMENT,
  `salones_id_salon` INT NOT NULL,
  `cursos_id_cursos` INT NOT NULL,
  `dia` VARCHAR(10) NOT NULL,
  `hora_comienzo` VARCHAR(45) NOT NULL,
  `hora_finalizacion` VARCHAR(45) NOT NULL,
  `cantidad_alumnos` INT NOT NULL,
  PRIMARY KEY (`id_horario`),
  INDEX `salones_id_salon_idx` (`salones_id_salon` ASC) VISIBLE,
  INDEX `cursos_id_cursos_idx` (`cursos_id_cursos` ASC) VISIBLE,
  CONSTRAINT `fk_salones_horarios_id_salon`
    FOREIGN KEY (`salones_id_salon`)
    REFERENCES `citrix`.`salones` (`id_salon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursos_horarios_id_cursos`
    FOREIGN KEY (`cursos_id_cursos`)
    REFERENCES `citrix`.`cursos` (`id_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`inscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`inscripcion` (
  `id_inscripcion` INT NOT NULL AUTO_INCREMENT,
  `alumnos_id_alumno` INT NOT NULL,
  `horarios_id_horario` INT NOT NULL,
  PRIMARY KEY (`id_inscripcion`),
  INDEX `alumnos_id_alumnos_idx` (`alumnos_id_alumno` ASC) VISIBLE,
  INDEX `horarios_id_horario_idx` (`horarios_id_horario` ASC) VISIBLE,
  CONSTRAINT `fk_alumnos_inscripcion_id_alumnos`
    FOREIGN KEY (`alumnos_id_alumno`)
    REFERENCES `citrix`.`alumnos` (`id_alumno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horarios_inscripcion_id_horario`
    FOREIGN KEY (`horarios_id_horario`)
    REFERENCES `citrix`.`horarios` (`id_horario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`login` (
  `id_login` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `correo_institucional` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(45) NOT NULL,
  `rol` ENUM("alumno", "profesor", "administrador", "administrador_secundario", "administrador_principal") NOT NULL,
  `estado_perfil` ENUM('bloqueado', 'activo') NOT NULL,
  PRIMARY KEY (`id_login`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citrix`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `citrix`.`empleados` (
  `id_empleados` INT NOT NULL,
  `primer_nombre` VARCHAR(45) NOT NULL,
  `segundo_nombre` VARCHAR(45) NULL,
  `primer_apellido` VARCHAR(45) NOT NULL,
  `segundo_apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `correo_personal` VARCHAR(45) NOT NULL,
  `correo_institucional` VARCHAR(45) NOT NULL,
  `puesto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_empleados`))
ENGINE = InnoDB;

DELIMITER //

CREATE TRIGGER after_inscripcion_insert
AFTER INSERT ON citrix.inscripcion
FOR EACH ROW
BEGIN
    UPDATE citrix.horarios
    SET cantidad_alumnos = cantidad_alumnos + 1
    WHERE id_horario = NEW.horarios_id_horario;
END;

//

DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
