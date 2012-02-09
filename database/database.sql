SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `mobweb` ;
CREATE SCHEMA IF NOT EXISTS `mobweb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mobweb` ;

-- -----------------------------------------------------
-- Table `mobweb`.`players`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mobweb`.`players` ;

CREATE  TABLE IF NOT EXISTS `mobweb`.`players` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nickname` VARCHAR(45) NULL ,
  `password` VARCHAR(32) NULL ,
  `birthyear` INT NULL ,
  `birthmonth` INT NULL ,
  `birthday` INT NULL ,
  `sex` VARCHAR(10) NULL ,
  `email` VARCHAR(45) NULL ,
  `totalpoints` INT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mobweb`.`locations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mobweb`.`locations` ;

CREATE  TABLE IF NOT EXISTS `mobweb`.`locations` (
  `id` INT NOT NULL ,
  `name` VARCHAR(128) NULL ,
  `latitude` DECIMAL(18,15) NULL ,
  `longitude` DECIMAL(18,15) NULL ,
  `description` VARCHAR(255) NULL ,
  `photo` VARCHAR(45) NULL ,
  `points` INT NULL DEFAULT 1 ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mobweb`.`checkins`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mobweb`.`checkins` ;

CREATE  TABLE IF NOT EXISTS `mobweb`.`checkins` (
  `id` INT NOT NULL ,
  `playerid` INT NULL ,
  `locationid` INT NULL ,
  `time` TIMESTAMP NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
