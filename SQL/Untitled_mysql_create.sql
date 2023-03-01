CREATE TABLE `Curso` (
	`ID_Curso` INT NOT NULL AUTO_INCREMENT,
	`nome_do_curso` varchar(255) NOT NULL,
	PRIMARY KEY (`ID_Curso`)
);

CREATE TABLE `Alunos` (
	`ID_Alunos` INT NOT NULL AUTO_INCREMENT,
	`nome_aluno` varchar(255) NOT NULL AUTO_INCREMENT,
	`idade_aluno` varchar(255) NOT NULL AUTO_INCREMENT,
	`email_aluno` varchar(255) NOT NULL AUTO_INCREMENT,
	`Turno` INT NOT NULL,
	PRIMARY KEY (`ID_Alunos`)
);

CREATE TABLE `Turma` (
	`ID_Turma` INT NOT NULL AUTO_INCREMENT,
	`nome_da_disciplina` varchar(255) NOT NULL AUTO_INCREMENT,
	`Curso` INT NOT NULL,
	PRIMARY KEY (`ID_Turma`)
);

CREATE TABLE `Professor` (
	`ID_Professor` INT NOT NULL AUTO_INCREMENT,
	`nome_professor` varchar(255) NOT NULL AUTO_INCREMENT,
	`email_professor` varchar(255) NOT NULL AUTO_INCREMENT,
	`numero_professor` varchar(255) NOT NULL AUTO_INCREMENT,
	`Turno` INT(255) NOT NULL,
	PRIMARY KEY (`ID_Professor`)
);

CREATE TABLE `Turno` (
	`ID_Turno` INT NOT NULL AUTO_INCREMENT,
	`nome_do_Turno` varchar(255) NOT NULL AUTO_INCREMENT,
	`Turma` INT NOT NULL,
	PRIMARY KEY (`ID_Turno`)
);

ALTER TABLE `Alunos` ADD CONSTRAINT `Alunos_fk0` FOREIGN KEY (`Turno`) REFERENCES `Turno`(`ID_Turno`);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk0` FOREIGN KEY (`Curso`) REFERENCES `Curso`(`ID_Curso`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk0` FOREIGN KEY (`Turno`) REFERENCES `Turno`(`ID_Turno`);

ALTER TABLE `Turno` ADD CONSTRAINT `Turno_fk0` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`ID_Turma`);






