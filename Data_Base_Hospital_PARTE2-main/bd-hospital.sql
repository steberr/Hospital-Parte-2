CREATE TABLE `pacientes` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`data_nascimento` varchar NOT NULL,
	`cpf` varchar NOT NULL,
	`rg` varchar NOT NULL,
	`endereço` varchar NOT NULL,
	`telefone` varchar NOT NULL,
	`e-mail` varchar NOT NULL,
	`convênio` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `consulta` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`data` DATE NOT NULL,
	`hora` DATETIME NOT NULL,
	`valor` varchar NOT NULL,
	`nome_medico` varchar NOT NULL,
	`especialidade` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `medico` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar NOT NULL,
	`cpf` varchar NOT NULL,
	`crm` varchar NOT NULL,
	`escala` varchar NOT NULL,
	`especialização` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `enfermeiro` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar NOT NULL,
	`cpf` varchar NOT NULL,
	`cre` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `quarto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nº` varchar NOT NULL,
	`andar` varchar NOT NULL,
	`tipo` varchar NOT NULL,
	`valor` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `internacao` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`data` varchar NOT NULL,
	`procedimento` varchar NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `receita` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`medicamento` varchar NOT NULL AUTO_INCREMENT,
	`medico` varchar NOT NULL AUTO_INCREMENT,
	`instruções` varchar NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`,`medicamento`,`medico`,`instruções`)
);

CREATE TABLE `convenio` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`empresa` varchar NOT NULL,
	`cnpj` varchar NOT NULL,
	PRIMARY KEY (`id`)
);









