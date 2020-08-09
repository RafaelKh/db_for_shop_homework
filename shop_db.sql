CREATE DATABASE IF NOT EXISTS `shop`;

USE `shop`;

CREATE TABLE IF NOT EXISTS `goods` (
`id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
`name` VARCHAR(50) NOT NULL,
`category` VARCHAR(50) NULL,
`weight` INT UNSIGNED NOT NULL,
`price` INT UNSIGNED NOT NULL,
`quantity` INT UNSIGNED NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `customers` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`full_name` VARCHAR(100) NOT NULL,
`phone` VARCHAR(50) NULL,
`address` VARCHAR(100) NOT NULL,
`nickname` VARCHAR(20) NOT NULL,
`password` VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `orders` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`customer` INT UNSIGNED NOT NULL,
`date` DATE NOT NULL,
`good` INT UNSIGNED NOT NULL,
`address` VARCHAR(100) NOT NULL,
`way_of_paymant` VARCHAR(40) NOT NULL,
`total_price` INT NOT NULL
)ENGINE=InnoDB;

INSERT INTO goods (`name`, `category`, `weight`, `price`, `quantity`)
VALUES ('TV', 'Electronics', 46, 1500, 26);

INSERT INTO goods (`name`, `category`, `weight`, `price`, `quantity`)
VALUES ('Bread', 'Food', 1, 12, 295);

INSERT INTO goods (`name`, `category`, `weight`, `price`, `quantity`)
VALUES ('Microwave', 'Electronics', 60, 200, 65);



INSERT INTO customers (`full_name`, `phone`, `address`, `nickname`, `password`)
VALUES ('John Smith', '5412675', 'Somewhere 96', 'John65', '12356');

INSERT INTO customers (`full_name`, `phone`, `address`, `nickname`, `password`)
VALUES ('Liana Jason', '9499575', 'Somewhere 12', 'Liana965', 'asd999');

INSERT INTO customers (`full_name`, `phone`, `address`, `nickname`, `password`)
VALUES ('James Franklin', '8859575', 'Somewhere 52', 'James5', '77999');


INSERT INTO orders (`customer`, `date`, `good`, `address`, `way_of_paymant`, `total_price`)
VALUES (2, '2016-09-15', 1, 'Somewhere 52', 'cash', 1550);

INSERT INTO orders (`customer`, `date`, `good`, `address`, `way_of_paymant`, `total_price`)
VALUES (1, '2020-11-28', 3, 'Somewhere 152', 'card', 210);

INSERT INTO orders (`customer`, `date`, `good`, `address`, `way_of_paymant`, `total_price`)
VALUES (3, '2019-01-08', 1, 'Somewhere 68', 'card', 1600);