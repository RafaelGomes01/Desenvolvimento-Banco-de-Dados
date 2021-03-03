-- Comando para criar um Database Filmes
CREATE DATABASE Pessoas;
USE Pessoas;

CREATE TABLE Pessoas(
	idPessoa INT PRIMARY KEY IDENTITY
	,Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Telefones(
	idTelefone INT PRIMARY KEY IDENTITY,
	idPessoa   INT FOREIGN KEY REFERENCES Pessoas (idPessoa),
	descricao  TEXT NOT NULL
);

CREATE TABLE Emails(
	idEmail INT PRIMARY KEY IDENTITY,
	idPessoa   INT FOREIGN KEY REFERENCES Pessoas (idPessoa),
	descricao  TEXT NOT NULL
);

CREATE TABLE CNHs(
	idCNH INT PRIMARY KEY IDENTITY,
	idPessoa   INT FOREIGN KEY REFERENCES Pessoas (idPessoa),
	descricao  TEXT NOT NULL
);