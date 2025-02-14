-- MySQL Script generated by MySQL Workbench
-- Sun Oct  6 17:20:59 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema java19
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema java19
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `java19` DEFAULT CHARACTER SET utf8 ;
USE `java19` ;

-- -----------------------------------------------------
-- Table `java19`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `java19`.`measure_unit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`measure_unit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `unit` CHAR(5) NOT NULL,
  `description` CHAR(15) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unit_UNIQUE` (`unit` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java19`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category_id` INT NOT NULL,
  `units_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `price` DOUBLE NOT NULL DEFAULT 0,
  `stock` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `fk_product_category_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_product_measure_unit_idx` (`units_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `java19`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_measure_unit`
    FOREIGN KEY (`units_id`)
    REFERENCES `java19`.`measure_unit` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java19`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`language` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` CHAR(2) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java19`.`product_description`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`product_description` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `language_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `description` VARCHAR(150) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_description_language_idx` (`language_id` ASC) VISIBLE,
  INDEX `fk_product_description_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_description_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `java19`.`language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_description_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `java19`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `java19` ;

-- -----------------------------------------------------
-- Placeholder table for view `java19`.`product_and_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java19`.`product_and_category` (`Product` INT, `Category` INT);

-- -----------------------------------------------------
-- View `java19`.`product_and_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `java19`.`product_and_category`;
USE `java19`;
CREATE  OR REPLACE VIEW `product_and_category` AS
SELECT 
	product.name AS Product,
    category.name AS Category 
FROM category
JOIN product ON category.id = product.category_id
;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
