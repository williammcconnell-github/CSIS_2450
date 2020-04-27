-- BUILD DATABASE SCHEMA
-- ---------------------------------------------------------------

-- Build Schema: combatcalculator
-- ---------------------------------------------------------------
DROP SCHEMA IF EXISTS `combatcalculator`;
CREATE SCHEMA `combatcalculator` DEFAULT CHARACTER SET utf8;
USE combatcalculator;

-- ---------------------------------------------------------------
-- Build Table `combatcalculator`.`users`
-- ---------------------------------------------------------------
DROP TABLE IF EXISTS `combatcalculator`.`users`;
CREATE TABLE `combatcalculator`.`users` (
  `id_users` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(225) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `active` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_users`),
  UNIQUE INDEX `id_users_UNIQUE` (`id_users` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);
  
 -- ---------------------------------------------------------------
-- Build Table `combatcalculator`.`loginattempts`
-- ---------------------------------------------------------------
DROP TABLE IF EXISTS `combatcalculator`.`loginattempts`;
CREATE TABLE `combatcalculator`.`loginattempts` (
  `id_login_attempts` INT NOT NULL AUTO_INCREMENT,
  `ip_address` VARBINARY(16) NOT NULL,
  `last_login_attempt` DATETIME NOT NULL,
  `failed_login_attempts` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_login_attempts`),
  UNIQUE INDEX `_UNIQUE` (`id_login_attempts` ASC) VISIBLE);

-- ---------------------------------------------------------------
-- Done
-- ---------------------------------------------------------------