INSERT INTO Pessoas (Nome)
VALUES	
	('Rafael'), 
	('Saulo'), 
	('Caique');

INSERT INTO Telefones (descricao, idPessoa)
VALUES
	(999999999, 1),
	(888888888, 2),
	(777777777, 2),
	(666666666, 3),
	(555555555, 3);

INSERT INTO Emails (descricao, idPessoa)
VALUES
	('Rafael@gmail.com', 1),
	('Saulo@gmail.com', 2),
	('Caique@gmail.com', 3);

INSERT INTO CNHs (descricao, idPessoa)
VALUES
	(21321324, 1),
	(42342352, 2),
	(15425222, 3);