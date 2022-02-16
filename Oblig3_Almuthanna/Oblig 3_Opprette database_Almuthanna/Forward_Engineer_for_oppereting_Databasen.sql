-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema oblig3_Almuthanna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema oblig3_Almuthanna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oblig3_Almuthanna` DEFAULT CHARACTER SET utf8 ;
USE `oblig3_Almuthanna` ;

-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Post` (
  `PostNr` SMALLINT(4) NOT NULL,
  `Poststed` VARCHAR(45) NULL,
  PRIMARY KEY (`PostNr`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Lege`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Lege` (
  `LegeID` INT AUTO_INCREMENT,
  `Fornavn` VARCHAR(45) NULL,
  `Etternavn` VARCHAR(45) NULL,
  `MobilNr` INT NULL,
  `Adress` VARCHAR(45) NULL,
  `PostNr` SMALLINT(4) NOT NULL,
  PRIMARY KEY (`LegeID`),
  INDEX `fk_Lege_Post1_idx` (`PostNr` ASC) VISIBLE,
  CONSTRAINT `fk_Lege_Post1`
    FOREIGN KEY (`PostNr`)
    REFERENCES `oblig3_Almuthanna`.`Post` (`PostNr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Avdeling`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Avdeling` (
  `AvdelingsNr` INT AUTO_INCREMENT,
  `Avdelingsnavn` VARCHAR(45) NULL,
  PRIMARY KEY (`AvdelingsNr`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Diagnosetype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Diagnosetype` (
  `DiagnoseKode` INT AUTO_INCREMENT,
  `Diagnosenavn` VARCHAR(45) NULL,
  PRIMARY KEY (`DiagnoseKode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Pasient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Pasient` (
  `PasinetID` INT AUTO_INCREMENT,
  `Fornavn` VARCHAR(45) NULL,
  `Etternavn` VARCHAR(45) NULL,
  `Fødselsdato` DATE NULL,
  `Adress` VARCHAR(50) NULL,
  `PostNr` SMALLINT(4) NOT NULL,
  PRIMARY KEY (`PasinetID`),
  INDEX `fk_Pasient_Post1_idx` (`PostNr` ASC) VISIBLE,
  CONSTRAINT `fk_Pasient_Post1`
    FOREIGN KEY (`PostNr`)
    REFERENCES `oblig3_Almuthanna`.`Post` (`PostNr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`innleggelse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`innleggelse` (
  `InnleggelseID` INT AUTO_INCREMENT,
  `Innleggelsedato` DATE NULL,
  `Utskrivingsdato` DATE NULL,
  `RomNr` INT NULL,
  `LegeId` INT NOT NULL,
  `AvdelingsNr` INT NOT NULL,
  `DiagnoseKode` INT NOT NULL,
  `PasinetID` INT NOT NULL,
  PRIMARY KEY (`InnleggelseID`),
  INDEX `fk_innleggelse_Lege_idx` (`LegeId` ASC) VISIBLE,
  INDEX `fk_innleggelse_Avdelin1_idx` (`AvdelingsNr` ASC) VISIBLE,
  INDEX `fk_innleggelse_Diagnosetype1_idx` (`DiagnoseKode` ASC) VISIBLE,
  INDEX `fk_innleggelse_Pasinet1_idx` (`PasinetID` ASC) VISIBLE,
  CONSTRAINT `fk_innleggelse_Lege`
    FOREIGN KEY (`LegeId`)
    REFERENCES `oblig3_Almuthanna`.`Lege` (`LegeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_innleggelse_Avdelin1`
    FOREIGN KEY (`AvdelingsNr`)
    REFERENCES `oblig3_Almuthanna`.`Avdeling` (`AvdelingsNr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_innleggelse_Diagnosetype1`
    FOREIGN KEY (`DiagnoseKode`)
    REFERENCES `oblig3_Almuthanna`.`Diagnosetype` (`DiagnoseKode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_innleggelse_Pasinet1`
    FOREIGN KEY (`PasinetID`)
    REFERENCES `oblig3_Almuthanna`.`Pasient` (`PasinetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Behandling`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Behandling` (
  `BehandlingsNr` INT AUTO_INCREMENT,
  `InnleggelsesID` INT NOT NULL,
  `Startdato` DATE NULL,
  `Sluttdato` DATE NULL,
  PRIMARY KEY (`BehandlingsNr`),
  CONSTRAINT `fk_Behandling_innleggelse1`
    FOREIGN KEY (`InnleggelsesID`)
    REFERENCES `oblig3_Almuthanna`.`innleggelse` (`InnleggelseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`BehandlingsType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`BehandlingsType` (
  `BehandlingsTypeID` INT AUTO_INCREMENT,
  `BehandlingsTypeNavn` VARCHAR(45) NULL,
  PRIMARY KEY (`BehandlingsTypeID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Behandlig_has_behandlingstype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Behandlig_has_behandlingstype` (
  `BehandlingsNr` INT NOT NULL,
  `BehandlingsTypeID` INT NOT NULL,
  PRIMARY KEY (`BehandlingsNr`, `BehandlingsTypeID`),
  INDEX `fk_DelBehandling_BehandlingsType1_idx` (`BehandlingsTypeID` ASC) VISIBLE,
  CONSTRAINT `fk_DelBehandling_Behandling1`
    FOREIGN KEY (`BehandlingsNr`)
    REFERENCES `oblig3_Almuthanna`.`Behandling` (`BehandlingsNr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DelBehandling_BehandlingsType1`
    FOREIGN KEY (`BehandlingsTypeID`)
    REFERENCES `oblig3_Almuthanna`.`BehandlingsType` (`BehandlingsTypeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oblig3_Almuthanna`.`Rom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oblig3_Almuthanna`.`Rom` (
  `RomID` INT AUTO_INCREMENT,
  `AvdelingsNr` INT NOT NULL,
  `RomNr` INT NULL,
  PRIMARY KEY (`RomID`, `AvdelingsNr`),
  INDEX `fk_Rom_Avdeling1_idx` (`AvdelingsNr` ASC) VISIBLE,
  CONSTRAINT `fk_Rom_Avdeling1`
    FOREIGN KEY (`AvdelingsNr`)
    REFERENCES `oblig3_Almuthanna`.`Avdeling` (`AvdelingsNr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
