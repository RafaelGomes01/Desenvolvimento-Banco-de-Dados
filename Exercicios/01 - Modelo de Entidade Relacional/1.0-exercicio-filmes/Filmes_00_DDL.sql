-- Comando para criar um Database Filmes
CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Genero(
	idGenero INT PRIMARY KEY IDENTITY
	,Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Filmes(
	idFilme INT PRIMARY KEY IDENTITY,
	idGenero   INT FOREIGN KEY REFERENCES Pessoas (idPessoa),
	descricao  TEXT NOT NULL
);
