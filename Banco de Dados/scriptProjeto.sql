
-- Criação da banco de dados do site;
CREATE DATABASE clienteSite;

CREATE TABLE cliente(
	idCliente int auto_increment PRIMARY KEY,
	responsavel varchar(50),
	empresa varchar(70),
	cnpj varchar(20),
	telefone varchar(30),
	email varchar(30),
	senha varchar(24)
);





-- Criação do banco de dados do dashboard;

CREATE DATABASE dashboard;

CREATE TABLE cadastroCliente(
	idClienteDash int PRIMARY KEY auto_increment,
	responsavel varchar(50),
	empresa varchar(70),
	cnpj varchar(20),
	telefone varchar(30),
	email varchar(30),
	senha varchar(24)
);

CREATE TABLE acessoDashboard(
	idFuncionario int PRIMARY KEY auto_increment,
	usuario varchar(30),
	senha varchar(24),
	nivelAcesso varchar(20),
		CONSTRAINT chkNivelAcesso CHECK(nivelAcesso in('leitura', 'desenvolvimento'))
) auto_increment = 1000;

-- INSERT INTO acessoDashboard (usuario, senha, nivelAcesso) VALUES ('Thawan', '123@al', 'leitura');

CREATE TABLE rack(
	idRack int PRIMARY KEY auto_increment,
	nomeRack varchar(240),
	setor varchar(240),
	modulo varchar(240),
	dataCenter varchar(240)
) auto_increment = 10000;

CREATE TABLE sensores(
	idSensor int PRIMARY KEY auto_increment,
	localizacao varchar(40),
	dataLeitura DATETIME default current_timestamp,
	temperatura char(10),
	umidade char(10),
	statusDoSensor varchar(25),
		CONSTRAINT chkstatusDoSensor CHECK(statusDoSensor in('ativo', 'inativo'))
) auto_increment = 100000;

-- INSERT INTO sensores(localizacao, temperatura, umidade, statusDoSensor) VALUES ('Rack 2', '23', '23', 'desativado');