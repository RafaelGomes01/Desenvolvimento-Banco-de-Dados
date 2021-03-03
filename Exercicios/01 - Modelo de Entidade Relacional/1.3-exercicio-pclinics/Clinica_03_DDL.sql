CREATE DATABASE Clinica;
USE Clinica;

CREATE TABLE Clinicas(
	idClinica INT PRIMARY KEY IDENTITY,
	RazãoSocial	 VARCHAR(200) NOT NULL,
	CNPJ	 INT NOT NULL,
	Endereco	 VARCHAR(200) NOT NULL
);

CREATE TABLE Veterinarios(
	idVeterinario INT PRIMARY KEY IDENTITY,
	idClinica INT FOREIGN KEY REFERENCES Clinicas (idClinica),
	nome  TEXT NOT NULL,
	CRMV TEXT NOT NULL
);

CREATE TABLE TiposPets(
	idTipoPet INT PRIMARY KEY IDENTITY,
	descricao TEXT NOT NULL,
);

CREATE TABLE Racas(
	idRaca INT PRIMARY KEY IDENTITY,
	idTipoPet INT FOREIGN KEY REFERENCES TiposPets (idTipoPet),
	nome TEXT NOT NULL,
);

CREATE TABLE Donos(
	idDono INT PRIMARY KEY IDENTITY,
	descricao TEXT NOT NULL,
);

CREATE TABLE Pets(
	idPet INT PRIMARY KEY IDENTITY,
	idRaca INT FOREIGN KEY REFERENCES Racas (idRaca),
	idDono INT FOREIGN KEY REFERENCES Donos (idDono),
	nome TEXT NOT NULL,
	dataNascimento TEXT NOT NULL,
);

CREATE TABLE Atendimentos(
	idAtendimento INT PRIMARY KEY IDENTITY,
	idVeterinario   INT FOREIGN KEY REFERENCES Veterinarios (idVeterinario),
	idPet   INT FOREIGN KEY REFERENCES Pets (idPet),
	descriçao TEXT NOT NULL,
	dataAtendimento TEXT NOT NULL,
);

SELECT * FROM Clinicas;
SELECT * FROM Veterinarios;
SELECT * FROM Atendimentos;
SELECT * FROM Pets;
SELECT * FROM Donos;
SELECT * FROM Racas;
SELECT * FROM TiposPets;