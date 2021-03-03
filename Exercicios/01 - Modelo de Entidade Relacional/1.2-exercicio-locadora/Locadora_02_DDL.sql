CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY IDENTITY
	,Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Marcas(
	idMarca INT PRIMARY KEY IDENTITY,
	nome  TEXT NOT NULL
);

CREATE TABLE Modelo(
	idModelo INT PRIMARY KEY IDENTITY,
	idMarca   INT FOREIGN KEY REFERENCES Marcas (idMarca),
);

CREATE TABLE Clientes(
	idCliente INT PRIMARY KEY IDENTITY,
	dataInicio TEXT NOT NULL,
	dataFim TEXT NOT NULL,
);

CREATE TABLE Veiculo(
	idVeiculo INT PRIMARY KEY IDENTITY,
	idEmpresa   INT FOREIGN KEY REFERENCES Empresa (idEmpresa),
	idMarca   INT FOREIGN KEY REFERENCES Marcas (idMarca),
	
	placa  TEXT NOT NULL
);

CREATE TABLE Alugueis(
	idAluguel INT PRIMARY KEY IDENTITY,
	idVeiculo   INT FOREIGN KEY REFERENCES Veiculo (idVeiculo),
	idCliente INT FOREIGN KEY REFERENCES Clientes (idCliente),
	dataInicio TEXT NOT NULL,
	dataFim TEXT NOT NULL, 
);

ALTER TABLE Veiculo
ADD idAluguel   INT FOREIGN KEY REFERENCES Alugueis (idAluguel);