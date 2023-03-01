CREATE TABLE `Turma` (
	`turmaID` INT NOT NULL AUTO_INCREMENT,
	`ID` INT NOT NULL AUTO_INCREMENT,
	`Turno` varchar(255) NOT NULL,
	`Aula` INT NOT NULL,
	PRIMARY KEY (`turmaID`)
);

CREATE TABLE `Professor` (
	`ProfessorID` INT NOT NULL AUTO_INCREMENT,
	`Disciplina` INT NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`cpf` varchar(255) NOT NULL,
	`Turma` INT NOT NULL,
	PRIMARY KEY (`ProfessorID`)
);

CREATE TABLE `Aluno` (
	`alunoID` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`cpf` varchar(255) NOT NULL,
	`turma` INT NOT NULL,
	PRIMARY KEY (`alunoID`)
);

CREATE TABLE `Materia` (
	`materiaID` BINARY NOT NULL AUTO_INCREMENT,
	`aula` INT NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Teste` varchar(255) NOT NULL,
	PRIMARY KEY (`materiaID`)
);

CREATE TABLE `Disciplina` (
	`disciplinaID` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Materia` INT NOT NULL,
	PRIMARY KEY (`disciplinaID`)
);

CREATE TABLE `Aula` (
	`aulaID` BINARY NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255) NOT NULL AUTO_INCREMENT,
	`turma` INT NOT NULL,
	PRIMARY KEY (`aulaID`)
);

CREATE TABLE `Curso` (
	`cursoID` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Disciplina` INT NOT NULL,
	`Turma` INT NOT NULL,
	`TCC` varchar(255) NOT NULL,
	PRIMARY KEY (`cursoID`)
);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk0` FOREIGN KEY (`Aula`) REFERENCES `Aula`(`aulaID`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`disciplinaID`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk1` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`turmaID`);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk0` FOREIGN KEY (`turma`) REFERENCES `Turma`(`turmaID`);

ALTER TABLE `Materia` ADD CONSTRAINT `Materia_fk0` FOREIGN KEY (`aula`) REFERENCES `Aula`(`aulaID`);

ALTER TABLE `Disciplina` ADD CONSTRAINT `Disciplina_fk0` FOREIGN KEY (`Materia`) REFERENCES `Materia`(`materiaID`);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`disciplinaID`);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk1` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`turmaID`);








