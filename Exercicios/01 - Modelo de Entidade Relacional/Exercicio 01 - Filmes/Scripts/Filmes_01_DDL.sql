-- Comando para criar um Database Filmes
CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Generos(
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Filmes(
	IdFilme INT PRIMARY KEY IDENTITY,
	IdGenero   INT FOREIGN KEY REFERENCES Generos (IdGenero),
	Descricao  TEXT NOT NULL
);
