-- MySQL Script generated by MySQL Workbench
-- Sat Apr 22 22:03:38 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gestionar_reservas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gestionar_reservas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gestionar_reservas` DEFAULT CHARACTER SET utf8 ;
USE `gestionar_reservas` ;

-- -----------------------------------------------------
-- Table `gestionar_reservas`.`habitaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gestionar_reservas`.`habitaciones` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(255) NULL,
  `valor` VARCHAR(255) NULL,
  PRIMARY KEY (`codigo`));


-- -----------------------------------------------------
-- Table `gestionar_reservas`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gestionar_reservas`.`reservas` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `codigo_habitacion` INT NOT NULL,
  `nombre_cliente` VARCHAR(255) NOT NULL,
  `telefono_cliente` VARCHAR(100) NOT NULL,
  `fecha_reservacion` DATE NOT NULL,
  `fecha_entrada` DATE NOT NULL,
  `fecha_salida` DATE NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_reservas_habitaciones_idx` (`codigo_habitacion` ASC) VISIBLE,
  CONSTRAINT `fk_reservas_habitaciones`
    FOREIGN KEY (`codigo_habitacion`)
    REFERENCES `gestionar_reservas`.`habitaciones` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
