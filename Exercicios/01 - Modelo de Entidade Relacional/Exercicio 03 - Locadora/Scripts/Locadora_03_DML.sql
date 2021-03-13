INSERT INTO Empresa (nome)
VALUES
	('Unidas'),
	('LocaFacil'),
	('FreeCar');

INSERT INTO Marcas (nome)
VALUES
	('Ford'),
	('Honda'),
	('Toyota');

INSERT INTO Clientes (Nome, CPF)
VALUES
	('Rafael', 21331231),
	('Saulo', 12324325),
	('Caique', 65464566);

INSERT INTO Modelo (descricao, idMarca)
VALUES
	('Escort', 1),
	('Civic', 2),
	('Supra', 3);

Select * from Modelo;

INSERT INTO Veiculo (idModelo, placa, idEmpresa)
VALUES
	(1, 'HEL1805', 1),
	(2, 'FER1010', 2),
	(3, 'POR1978', 2);

INSERT INTO Alugueis (idCliente, idVeiculo, dataInicio, dataFim)
VALUES
	(1, 1, '19/01/2019', '20/01/2019'),
	(1, 2, '20/01/2019', '21/01/2019'),
	(2, 3, '21/01/2019', '22/01/2019'),
	(2, 2, '22/01/2019', '22/01/2019');