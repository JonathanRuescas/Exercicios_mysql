create database db_blog_pessoal1

use db_blog_pessoal1;

CREATE TABLE `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL AUTO_INCREMENT,
	`texto` varchar(1000) NOT NULL AUTO_INCREMENT,
	`data` TIMESTAMP NOT NULL AUTO_INCREMENT,
	`tema_id` bigint NOT NULL AUTO_INCREMENT,
	`usuario_id` bigint NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuarios` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`usuario` varchar(255) NOT NULL AUTO_INCREMENT,
	`senha` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `Temas`(`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios`(`id`);




