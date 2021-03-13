INSERT INTO Clinicas (RazãoSocial, CNPJ, Endereco)
VALUES
	('Meu Pimpão', 999999, 'Av. Braão de Limeira, 539' );

INSERT INTO TiposPets (descricao)
VALUES
	('Cachorro'),
	('Gato');

	INSERT INTO Racas (descricao, idTipoPet)
	VALUES
		('Poodle', 1),
		('Labrador', 1),
		('SRD', 1),
		('Siames', 2);

INSERT INTO Pets (nome, dataNascimento, idRaca, idDono)
VALUES
	('Junior', '10/10/2018', 1, 1),
	('Loli', '18/05/2017', 4, 1),
	('Sammy', '16/06/2016', 1, 2);

INSERT INTO Atendimentos (descriçao, dataAtendimento, idVeterinario, idPet)
VALUES
	('Restam 10 dias de vida', '22/01/19', 1, 1),
	('O paciente está ok', '21/01/19', 2, 2),
	('O paciente está ok', '22/01/19', 2, 1);

INSERT INTO Donos (nome)
VALUES	
	('Paulo'),
	('Odirlei');

INSERT INTO Veterinarios (nome, CRMV, idClinica)
VALUES
	('Saulo', 432551, 1),
	('Caique', 653655, 1);