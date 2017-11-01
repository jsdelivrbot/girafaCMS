-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema girafa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema girafa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `girafa` DEFAULT CHARACTER SET utf8 ;
USE `girafa` ;

-- -----------------------------------------------------
-- Table `girafa`.`sis_grupos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_grupos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COMMENT = 'Grupo de Seguran�a do Administrator';


-- -----------------------------------------------------
-- Table `girafa`.`sis_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_usuarios` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  `Mail` VARCHAR(50) NULL DEFAULT NULL,
  `Password` CHAR(32) NULL DEFAULT NULL,
  `Group` INT(11) NULL DEFAULT NULL,
  `LastAccess` DATETIME NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(100) NULL DEFAULT NULL,
  `Developer` CHAR(1) NULL DEFAULT NULL,
  `Actived` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_usuarios_grupo` (`Group` ASC),
  CONSTRAINT `fk_sis_usuarios_grupo`
    FOREIGN KEY (`Group`)
    REFERENCES `girafa`.`sis_grupos` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8
COMMENT = 'Usu�rios do Administrator';


-- -----------------------------------------------------
-- Table `girafa`.`sis_usuarios_grupos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_usuarios_grupos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `User` INT(11) NULL DEFAULT NULL,
  `Group` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_usuarios_grupos_usuario` (`User` ASC),
  INDEX `fk_sis_usuarios_grupos_grupo` (`Group` ASC),
  CONSTRAINT `fk_sis_usuarios_grupos_grupo`
    FOREIGN KEY (`Group`)
    REFERENCES `girafa`.`sis_grupos` (`ID`),
  CONSTRAINT `fk_sis_usuarios_grupos_usuario`
    FOREIGN KEY (`User`)
    REFERENCES `girafa`.`sis_usuarios` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COMMENT = 'Tabela de Liga��o de sysAdminUsers e sysAdminGroups';


-- -----------------------------------------------------
-- Table `girafa`.`sis_logs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_logs` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `UserName` VARCHAR(100) NULL DEFAULT NULL,
  `UserMail` VARCHAR(50) NULL DEFAULT NULL,
  `Action` CHAR(3) NULL DEFAULT NULL,
  `DateTime` DATETIME NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `IP` VARCHAR(15) NULL DEFAULT NULL,
  `Browser` CHAR(3) NULL DEFAULT NULL,
  `OS` CHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8
COMMENT = 'Hist�rico de A��es no CMS';


-- -----------------------------------------------------
-- Table `girafa`.`sis_idiomas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_idiomas` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `Nome` VARCHAR(30) NULL DEFAULT NULL,
  `Identificador` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 140
DEFAULT CHARACTER SET = utf8
COMMENT = 'Cadastro de Idiomas';


-- -----------------------------------------------------
-- Table `girafa`.`sis_modulos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_modulos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `Name` VARCHAR(30) NULL DEFAULT NULL,
  `Path` VARCHAR(30) NULL DEFAULT NULL,
  `Actived` CHAR(1) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `Description` VARCHAR(50) NULL DEFAULT NULL,
  `Developer` CHAR(1) NULL DEFAULT NULL,
  `Icon` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COMMENT = 'Gerencia M�dulos do Sistema';


-- -----------------------------------------------------
-- Table `girafa`.`sis_pastas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_pastas` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `Module` INT(11) NULL DEFAULT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  `Order` INT(11) NULL DEFAULT NULL,
  `File` VARCHAR(50) NULL DEFAULT NULL,
  `Grouper` VARCHAR(50) NULL DEFAULT NULL,
  `Actived` CHAR(1) NULL DEFAULT NULL,
  `MultiLanguages` CHAR(1) NULL DEFAULT NULL,
  `CounterSQL` TEXT NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_pastas_modulo` (`Module` ASC),
  CONSTRAINT `fk_sis_pastas_modulo`
    FOREIGN KEY (`Module`)
    REFERENCES `girafa`.`sis_modulos` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8
COMMENT = 'Gerencia Pastas de determinado M�dulo do Sistema';


-- -----------------------------------------------------
-- Table `girafa`.`sis_relatorios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_relatorios` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `File` VARCHAR(50) NULL DEFAULT NULL,
  `Module` INT(11) NULL DEFAULT NULL,
  `Published` CHAR(1) NULL DEFAULT NULL,
  `Title` VARCHAR(50) NULL DEFAULT NULL,
  `Type` CHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_relatorios_modulo` (`Module` ASC),
  CONSTRAINT `fk_sis_relatorios_modulo`
    FOREIGN KEY (`Module`)
    REFERENCES `girafa`.`sis_modulos` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8
COMMENT = 'Relat�rios dos M�dulos';


-- -----------------------------------------------------
-- Table `girafa`.`sis_modulos_idiomas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_modulos_idiomas` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `Modulo` INT(11) NULL DEFAULT NULL,
  `Idioma` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_modulos_idiomas_modulo` (`Modulo` ASC),
  INDEX `fk_sis_modulos_idiomas_idioma` (`Idioma` ASC),
  CONSTRAINT `fk_sis_modulos_idiomas_idioma`
    FOREIGN KEY (`Idioma`)
    REFERENCES `girafa`.`sis_idiomas` (`ID`),
  CONSTRAINT `fk_sis_modulos_idiomas_modulo`
    FOREIGN KEY (`Modulo`)
    REFERENCES `girafa`.`sis_modulos` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COMMENT = 'Cadastro de Idiomas nos M�dulos';


-- -----------------------------------------------------
-- Table `girafa`.`sis_modulos_grupos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_modulos_grupos` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `Module` INT(11) NULL DEFAULT NULL,
  `Group` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_sis_modulos_grupos_modulo` (`Module` ASC),
  INDEX `fk_sis_modulos_grupos_grupo` (`Group` ASC),
  CONSTRAINT `fk_sis_modulos_grupos_grupo`
    FOREIGN KEY (`Group`)
    REFERENCES `girafa`.`sis_grupos` (`ID`),
  CONSTRAINT `fk_sis_modulos_grupos_modulo`
    FOREIGN KEY (`Module`)
    REFERENCES `girafa`.`sis_modulos` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8
COMMENT = 'Grupos de Seguran�a do M�dulo';


-- -----------------------------------------------------
-- Table `girafa`.`sis_parametros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_parametros` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL DEFAULT NULL,
  `LastUpdate` DATETIME NULL DEFAULT NULL,
  `LastUserName` VARCHAR(50) NULL DEFAULT NULL,
  `Nome` VARCHAR(100) NULL DEFAULT NULL,
  `Tipo` CHAR(3) NULL DEFAULT NULL,
  `Valor` TEXT NULL DEFAULT NULL,
  `Identificador` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8
COMMENT = 'Cadastro de Par�metros';


-- -----------------------------------------------------
-- Table `girafa`.`sis_plugins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `girafa`.`sis_plugins` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Lang` VARCHAR(10) NULL,
  `LastUpdate` DATETIME NULL,
  `LastUserName` VARCHAR(50) NULL,
  `Name` VARCHAR(50) NULL,
  `Actived` CHAR(1) NULL,
  `Path` VARCHAR(30) NULL,
  `Description` TEXT NULL,
  `URL` VARCHAR(100) NULL,
  `Version` VARCHAR(10) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
